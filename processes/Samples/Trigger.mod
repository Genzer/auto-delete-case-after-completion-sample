[Ivy]
[>Created: Wed Mar 01 14:41:15 ICT 2017]
15A881E95F1237F5 3.18 #module
>Proto >Proto Collection #zClass
Tr0 Trigger Big #zClass
Tr0 B #cInfo
Tr0 #process
Tr0 @TextInP .resExport .resExport #zField
Tr0 @TextInP .type .type #zField
Tr0 @TextInP .processKind .processKind #zField
Tr0 @AnnotationInP-0n ai ai #zField
Tr0 @MessageFlowInP-0n messageIn messageIn #zField
Tr0 @MessageFlowOutP-0n messageOut messageOut #zField
Tr0 @TextInP .xml .xml #zField
Tr0 @TextInP .responsibility .responsibility #zField
Tr0 @StartRequest f0 '' #zField
Tr0 @EndTask f1 '' #zField
Tr0 @GridStep f3 '' #zField
Tr0 @Trigger f5 '' #zField
Tr0 @StartEvent f7 '' #zField
Tr0 @EndTask f8 '' #zField
Tr0 @PushWFArc f9 '' #zField
Tr0 @RichDialog f10 '' #zField
Tr0 @PushWFArc f11 '' #zField
Tr0 @PushWFArc f4 '' #zField
Tr0 @PushWFArc f6 '' #zField
Tr0 @GridStep f12 '' #zField
Tr0 @PushWFArc f13 '' #zField
Tr0 @PushWFArc f2 '' #zField
>Proto Tr0 Tr0 Trigger #zField
Tr0 f0 outLink start.ivp #txt
Tr0 f0 type com.axonivy.lab.workflow.Data #txt
Tr0 f0 inParamDecl '<> param;' #txt
Tr0 f0 actionDecl 'com.axonivy.lab.workflow.Data out;
' #txt
Tr0 f0 guid 15A881E95FBA34BB #txt
Tr0 f0 requestEnabled true #txt
Tr0 f0 triggerEnabled false #txt
Tr0 f0 callSignature start() #txt
Tr0 f0 persist false #txt
Tr0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Tr0 f0 caseData 'case.name=GUI Case' #txt
Tr0 f0 showInStartList 1 #txt
Tr0 f0 taskAndCaseSetupAction 'ivy.case.setName(engine.expandMacros("GUI Case"));
import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Tr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f0 @C|.responsibility Everybody #txt
Tr0 f0 81 49 30 30 -21 17 #rect
Tr0 f0 @|StartRequestIcon #fIcon
Tr0 f1 type com.axonivy.lab.workflow.Data #txt
Tr0 f1 985 49 30 30 0 15 #rect
Tr0 f1 @|EndIcon #fIcon
Tr0 f3 actionDecl 'com.axonivy.lab.workflow.Data out;
' #txt
Tr0 f3 actionTable 'out=in;
' #txt
Tr0 f3 actionCode ivy.wf.signals().send("lab:workflow:case:created"); #txt
Tr0 f3 type com.axonivy.lab.workflow.Data #txt
Tr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Signal ivy:workflow:case:created</name>
        <nameStyle>32,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f3 344 42 192 44 -88 -8 #rect
Tr0 f3 @|StepIcon #fIcon
Tr0 f5 type com.axonivy.lab.workflow.Data #txt
Tr0 f5 processCall Samples/SignalReceivers:start() #txt
Tr0 f5 doCall true #txt
Tr0 f5 requestActionDecl '<> param;
' #txt
Tr0 f5 responseActionDecl 'com.axonivy.lab.workflow.Data out;
' #txt
Tr0 f5 responseMappingAction 'out=in;
' #txt
Tr0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SignalReceivers</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f5 608 42 112 44 -45 -8 #rect
Tr0 f5 @|TriggerIcon #fIcon
Tr0 f7 outerBean "com.axonivy.lab.cleaningcases.CompletedCaseJanitor" #txt
Tr0 f7 outLink eventLink.ivp #txt
Tr0 f7 type com.axonivy.lab.workflow.Data #txt
Tr0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Bean to clean up cases here</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f7 @C|.responsibility Everybody #txt
Tr0 f7 81 161 30 30 -78 17 #rect
Tr0 f7 @|StartEventIcon #fIcon
Tr0 f8 type com.axonivy.lab.workflow.Data #txt
Tr0 f8 465 161 30 30 0 15 #rect
Tr0 f8 @|EndIcon #fIcon
Tr0 f9 expr out #txt
Tr0 f9 111 176 465 176 #arcP
Tr0 f10 targetWindow NEW:card: #txt
Tr0 f10 targetDisplay TOP #txt
Tr0 f10 richDialogId com.axonivy.lab.workflow.MakeDecision #txt
Tr0 f10 startMethod start() #txt
Tr0 f10 type com.axonivy.lab.workflow.Data #txt
Tr0 f10 requestActionDecl '<> param;' #txt
Tr0 f10 responseActionDecl 'com.axonivy.lab.workflow.Data out;
' #txt
Tr0 f10 responseMappingAction 'out=in;
out.keep=result.keep;
' #txt
Tr0 f10 windowConfiguration '* ' #txt
Tr0 f10 isAsynch false #txt
Tr0 f10 isInnerRd false #txt
Tr0 f10 userContext '* ' #txt
Tr0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Make Decision</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f10 168 42 112 44 -40 -8 #rect
Tr0 f10 @|RichDialogIcon #fIcon
Tr0 f11 expr out #txt
Tr0 f11 111 64 168 64 #arcP
Tr0 f4 expr out #txt
Tr0 f4 280 64 344 64 #arcP
Tr0 f6 expr out #txt
Tr0 f6 536 64 608 64 #arcP
Tr0 f12 actionDecl 'com.axonivy.lab.workflow.Data out;
' #txt
Tr0 f12 actionTable 'out=in;
' #txt
Tr0 f12 actionCode 'if (!in.keep) {
	ivy.case.setAdditionalProperty("ivy.case.ActionAfterCompletion", "DELETE");
}' #txt
Tr0 f12 type com.axonivy.lab.workflow.Data #txt
Tr0 f12 808 42 112 44 0 -8 #rect
Tr0 f12 @|StepIcon #fIcon
Tr0 f13 expr out #txt
Tr0 f13 720 64 808 64 #arcP
Tr0 f2 expr out #txt
Tr0 f2 920 64 985 64 #arcP
>Proto Tr0 .type com.axonivy.lab.workflow.Data #txt
>Proto Tr0 .processKind NORMAL #txt
>Proto Tr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Tr0 0 0 32 24 18 0 #rect
>Proto Tr0 @|BIcon #fIcon
Tr0 f3 mainOut f6 tail #connect
Tr0 f6 head f5 mainIn #connect
Tr0 f7 mainOut f9 tail #connect
Tr0 f9 head f8 mainIn #connect
Tr0 f0 mainOut f11 tail #connect
Tr0 f11 head f10 mainIn #connect
Tr0 f10 mainOut f4 tail #connect
Tr0 f4 head f3 mainIn #connect
Tr0 f5 mainOut f13 tail #connect
Tr0 f13 head f12 mainIn #connect
Tr0 f12 mainOut f2 tail #connect
Tr0 f2 head f1 mainIn #connect
