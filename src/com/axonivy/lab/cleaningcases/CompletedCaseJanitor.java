package com.axonivy.lab.cleaningcases;

import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

import org.eclipse.core.runtime.IProgressMonitor;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.event.*;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBean;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime;
import ch.ivyteam.ivy.service.ServiceException;
import ch.ivyteam.ivy.workflow.*;
import ch.ivyteam.ivy.workflow.query.CaseQuery;

public class CompletedCaseJanitor implements ISystemEventListener, IProcessStartEventBean {

	private static final int DEFAULT_INTERNAL_FOR_DELETING_CASES = 5;
	
	private IProcessStartEventBeanRuntime runtime;
	private final AtomicBoolean isRunning = new AtomicBoolean(false);

	private final AtomicReference<Date> lastExecution = new AtomicReference<Date>(
			new Date());
	private AtomicReference<Date> someCasesDeletedTimestamp = new AtomicReference<Date>(
			new Date());

	@Override
	public void initialize(IProcessStartEventBeanRuntime eventRuntime, String configuration) {
		this.runtime = eventRuntime;
		this.runtime.setPollTimeInterval(TimeUnit.SECONDS.toMillis(DEFAULT_INTERNAL_FOR_DELETING_CASES));
	}

	@Override
	public void start(IProgressMonitor monitor) throws ServiceException {
		subscribeToApplication();
		isRunning.set(true);
	}

	private void subscribeToApplication() {
		runtime.getProcessModelVersion().getApplication()
				.addSystemEventListener(EnumSet.of(SystemEventCategory.WORKFLOW), this);
	}

	@Override
	public void stop(IProgressMonitor monitor) throws ServiceException {
		unsubcribe();
		isRunning.set(false);
	}

	private void unsubcribe() {
		runtime.getProcessModelVersion().getApplication()
				.removeSystemEventListener(EnumSet.of(SystemEventCategory.WORKFLOW), this);
	}

	@Override
	public void handleSystemEvent(SystemEvent<?> event) {
		if (event.getCategory() != SystemEventCategory.WORKFLOW) {
			return;
		}

		if (!Arrays.asList(WorkflowSystemEvent.CASE_CHANGED).contains(
				event.getName())) {
			return;
		}

		WorkflowSystemEventParameter eventParameter = (WorkflowSystemEventParameter) event
				.getParameter();
		if (!(ICase.class == eventParameter.getWorkflowObjectKind())) {
			return;
		}

		boolean hasCompletedCase = eventParameter
				.getIds()
				.stream()
				.map(id -> Ivy.wf().findCase(id))
				.anyMatch(c -> Arrays.asList(CaseState.DONE, CaseState.DESTROYED).contains(c.getState()));

		if (hasCompletedCase) {
			someCasesDeletedTimestamp.set(new Date());
		}
	}

	@Override
	public void poll() {
		if (lastExecution.get().after(someCasesDeletedTimestamp.get())) {
			return;
		}

		List<ICase> finishedCases = Ivy.wf().getCaseQueryExecutor()
				.getResults(queryCaseFinishedBefore(someCasesDeletedTimestamp.get()));
		
		finishedCases.forEach(this::deleteCompletedCase);
		
		lastExecution.set(new Date());
	}
	
	private static CaseQuery queryCaseFinishedBefore(Date timestamp) {
		return CaseQuery.create()
					.where().and(CaseQuery.create().where()
							.state().isEqual(CaseState.DONE)
								.or().state().isEqual(CaseState.DESTROYED))
					.and(CaseQuery.create().where()
							.additionalProperty("ivy.case.ActionAfterCompletion").isLike("DELETE"))
					.and(CaseQuery.create().where()
							.endTimestamp().isLowerOrEqualThan(timestamp));
	}

	private void deleteCompletedCase(ICase completedCase) {
		Ivy.wf().deleteCompletedCase(completedCase);
	}
	
	@Override
	public String getName() {
		return CompletedCaseJanitor.class.getName();
	}

	@Override
	public String getDescription() {
		return "Delete cases when they are finished (DONE or DESTROYED)"
				+ " and has property ivy.case.ActionAfterCompletion set to DELETE";
	}

	@Override
	public boolean isRunning() {
		return isRunning.get();
	}
	
	@Override
	public boolean isMoreThanOneInstanceSupported() {
		return false;
	}

}
