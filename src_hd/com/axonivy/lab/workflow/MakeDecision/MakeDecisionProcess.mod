[Ivy]
[>Created: Wed Mar 01 14:42:37 ICT 2017]
15A88CD20E01DC56 3.18 #module
>Proto >Proto Collection #zClass
Ms0 MakeDecisionProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @RichDialogProcessStart f3 '' #zField
Ms0 @RichDialogEnd f4 '' #zField
Ms0 @PushWFArc f5 '' #zField
Ms0 @RichDialogProcessStart f6 '' #zField
Ms0 @RichDialogProcessStart f9 '' #zField
Ms0 @GridStep f12 '' #zField
Ms0 @PushWFArc f13 '' #zField
Ms0 @GridStep f14 '' #zField
Ms0 @PushWFArc f15 '' #zField
Ms0 @RichDialogEnd f16 '' #zField
Ms0 @PushWFArc f17 '' #zField
Ms0 @RichDialogEnd f11 '' #zField
Ms0 @PushWFArc f18 '' #zField
>Proto Ms0 Ms0 MakeDecisionProcess #zField
Ms0 f0 guid 15A88CD2124329DD #txt
Ms0 f0 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f0 method start() #txt
Ms0 f0 disableUIEvents true #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 outParameterDecl '<java.lang.Boolean keep> result;
' #txt
Ms0 f0 outParameterMapAction 'result.keep=in.keep;
' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 83 51 26 26 -16 15 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f1 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f1 211 51 26 26 0 12 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f2 expr out #txt
Ms0 f2 109 64 211 64 #arcP
Ms0 f3 guid 15A88CD2142641E0 #txt
Ms0 f3 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f3 actionDecl 'com.axonivy.lab.workflow.MakeDecision.MakeDecisionData out;
' #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 83 147 26 26 -15 12 #rect
Ms0 f3 @|RichDialogProcessStartIcon #fIcon
Ms0 f4 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f4 guid 15A88CD21433DCBE #txt
Ms0 f4 211 147 26 26 0 12 #rect
Ms0 f4 @|RichDialogEndIcon #fIcon
Ms0 f5 expr out #txt
Ms0 f5 109 160 211 160 #arcP
Ms0 f6 guid 15A88CE311DCFBB5 #txt
Ms0 f6 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f6 actionDecl 'com.axonivy.lab.workflow.MakeDecision.MakeDecisionData out;
' #txt
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>keepThisCase</name>
    </language>
</elementInfo>
' #txt
Ms0 f6 83 243 26 26 -40 12 #rect
Ms0 f6 @|RichDialogProcessStartIcon #fIcon
Ms0 f9 guid 15A88CE561BB72D4 #txt
Ms0 f9 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f9 actionDecl 'com.axonivy.lab.workflow.MakeDecision.MakeDecisionData out;
' #txt
Ms0 f9 actionTable 'out=in;
' #txt
Ms0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>discardThisCase</name>
    </language>
</elementInfo>
' #txt
Ms0 f9 83 339 26 26 -47 12 #rect
Ms0 f9 @|RichDialogProcessStartIcon #fIcon
Ms0 f12 actionDecl 'com.axonivy.lab.workflow.MakeDecision.MakeDecisionData out;
' #txt
Ms0 f12 actionTable 'out=in;
' #txt
Ms0 f12 actionCode 'in.keep = true;' #txt
Ms0 f12 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>keep = true</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f12 168 234 112 44 -30 -8 #rect
Ms0 f12 @|StepIcon #fIcon
Ms0 f13 expr out #txt
Ms0 f13 109 256 168 256 #arcP
Ms0 f14 actionDecl 'com.axonivy.lab.workflow.MakeDecision.MakeDecisionData out;
' #txt
Ms0 f14 actionTable 'out=in;
' #txt
Ms0 f14 actionCode 'in.keep = false;' #txt
Ms0 f14 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>keep = false</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f14 168 330 112 44 -33 -8 #rect
Ms0 f14 @|StepIcon #fIcon
Ms0 f15 expr out #txt
Ms0 f15 109 352 168 352 #arcP
Ms0 f16 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f16 guid 15A88D20D17F232B #txt
Ms0 f16 339 339 26 26 0 12 #rect
Ms0 f16 @|RichDialogEndIcon #fIcon
Ms0 f17 expr out #txt
Ms0 f17 280 352 339 352 #arcP
Ms0 f11 type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
Ms0 f11 guid 15A88D217858565D #txt
Ms0 f11 339 243 26 26 0 12 #rect
Ms0 f11 @|RichDialogEndIcon #fIcon
Ms0 f18 expr out #txt
Ms0 f18 280 256 339 256 #arcP
>Proto Ms0 .type com.axonivy.lab.workflow.MakeDecision.MakeDecisionData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f3 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
Ms0 f6 mainOut f13 tail #connect
Ms0 f13 head f12 mainIn #connect
Ms0 f9 mainOut f15 tail #connect
Ms0 f15 head f14 mainIn #connect
Ms0 f14 mainOut f17 tail #connect
Ms0 f17 head f16 mainIn #connect
Ms0 f12 mainOut f18 tail #connect
Ms0 f18 head f11 mainIn #connect
