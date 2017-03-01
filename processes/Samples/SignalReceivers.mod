[Ivy]
[>Created: Wed Mar 01 14:35:57 ICT 2017]
15A881EDFA172CC8 3.18 #module
>Proto >Proto Collection #zClass
Ss0 SignalReceivers Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @SignalStartEvent f3 '' #zField
Ss0 @StartRequest f1 '' #zField
Ss0 @EndTask f5 '' #zField
Ss0 @EndTask f2 '' #zField
Ss0 @PushWFArc f8 '' #zField
Ss0 @TaskSwitch f7 '' #zField
Ss0 @TkArc f10 '' #zField
Ss0 @PushWFArc f9 '' #zField
>Proto Ss0 Ss0 SignalReceivers #zField
Ss0 f3 actionDecl 'com.axonivy.lab.workflow.Data out;
' #txt
Ss0 f3 type com.axonivy.lab.workflow.Data #txt
Ss0 f3 signalCode lab:workflow:case:created #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>lab:workflow:case:created</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 65 49 30 30 -71 17 #rect
Ss0 f3 @|SignalStartEventIcon #fIcon
Ss0 f1 outLink start.ivp #txt
Ss0 f1 type com.axonivy.lab.workflow.Data #txt
Ss0 f1 inParamDecl '<> param;' #txt
Ss0 f1 actionDecl 'com.axonivy.lab.workflow.Data out;
' #txt
Ss0 f1 guid 15A88244C5DF8E2B #txt
Ss0 f1 requestEnabled true #txt
Ss0 f1 triggerEnabled true #txt
Ss0 f1 callSignature start() #txt
Ss0 f1 persist false #txt
Ss0 f1 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.NAM=Triggered Task
TaskTriggered.EXROL=Everybody' #txt
Ss0 f1 showInStartList 1 #txt
Ss0 f1 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setName(engine.expandMacros("Triggered Task"));
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp
start()</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f1 @C|.responsibility Everybody #txt
Ss0 f1 65 145 30 30 -21 17 #rect
Ss0 f1 @|StartRequestIcon #fIcon
Ss0 f5 type com.axonivy.lab.workflow.Data #txt
Ss0 f5 433 49 30 30 0 15 #rect
Ss0 f5 @|EndIcon #fIcon
Ss0 f2 type com.axonivy.lab.workflow.Data #txt
Ss0 f2 209 145 30 30 0 15 #rect
Ss0 f2 @|EndIcon #fIcon
Ss0 f8 expr out #txt
Ss0 f8 95 160 209 160 #arcP
Ss0 f7 actionDecl 'com.axonivy.lab.workflow.Data out;
' #txt
Ss0 f7 actionTable 'out=in1;
' #txt
Ss0 f7 outTypes "com.axonivy.lab.workflow.Data" #txt
Ss0 f7 outLinks "TaskA.ivp" #txt
Ss0 f7 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Signal
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Ss0 f7 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Signal"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Ss0 f7 type com.axonivy.lab.workflow.Data #txt
Ss0 f7 template "" #txt
Ss0 f7 216 48 32 32 0 16 #rect
Ss0 f7 @|TaskSwitchIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 type com.axonivy.lab.workflow.Data #txt
Ss0 f10 var in1 #txt
Ss0 f10 95 64 216 64 #arcP
Ss0 f9 expr data #txt
Ss0 f9 outCond ivp=="TaskA.ivp" #txt
Ss0 f9 248 64 433 64 #arcP
>Proto Ss0 .type com.axonivy.lab.workflow.Data #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f1 mainOut f8 tail #connect
Ss0 f8 head f2 mainIn #connect
Ss0 f3 mainOut f10 tail #connect
Ss0 f10 head f7 in #connect
Ss0 f7 out f9 tail #connect
Ss0 f9 head f5 mainIn #connect
