## Table of Contents
1. [**Introduction**](#Introduction)
2. [**XFTI Contact Points**](#XFTI-Contact-Points)
3. [**Requesting TI Support for IR Engagements**](#Requesting-TI-Support-for-IR-Engagements)
4. [**Requesting RE Support for Malware Analysis**](#Requesting-RE-Support-for-Malware-Analysis)
	- [Definition of RE Analysis Levels](#Definition-of-RE-Analysis-Levels)
5. [**Self Service TI Tools for XFIR**](#Self-Service-TI-Tools-for-XFIR)
	- [Intel Bot Slack Channel](#Intel-Bot-Slack-Channel)
	- [Intel Bot App for Slack](#Intel-Bot-App-for-Slack)
	- [Direct Sherlock Access](#Direct-Sherlock-Access)
	- [Sandbox](#Sandbox)
	- [Intel Yara Rules](#IntelYara-Rules)
6. [**Requesting TI Support for Standalone Intel Engagements**](#Requesting-TI-Support-for-Standalone-Intel-Engagements)
7. [**Additional XFTI Resources**](#Additional-XFTI-Resources)
8. [**Tutorials**](#Tutorials)
	- [Creating Malware Analysis Ticket](#Creating-Malware-Analysis-Ticket)
	- [Creating Intel Engagement Ticket](#Creating-Intel-Engagement-Ticket)


## Introduction
The purpose of this page is to document how X-Force Threat Intelligence (XFTI) team supports DFIR engagements run by XFIR. Process and rules for interaction, described on this page are only applicable to services performed by XFTI as a part of IR engagements (eg. Malware analysis, attribution, IoC/TTP enrichment). Any other type of service or deliverables offered by XFTI to XFIR Clients (eg. STA, Dark Web Search) should follow a [separate process](https://github.ibm.com/XFIR/XFIR-master-wiki/wiki/Process-for-Intel-related-proactive-services).

This is is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the  [Homepage](Home)).

All XFIR engagements of the type  `IR`  require an associated `INTEL Ticket` with `Engagement Work`  type. It is used to make the task of tracking IR engagements easier for the Intel Team as well as facilitating better workflows between IR consultants and Intel analysts working on an engagement together. This ticket is managed by the XFTI team and the XFIR team is only responsible for creating it. During `IR` ticket creation in Resilient, there is an option to create the necessary "INTEL Ticket". IR ticket creation [guide](Resilient#Logging-Requirements-for-New-IR-Engagements) for Resilient describes this step as well. 

XFTI tracks their engagements using a Jira ticketing system. It was integrated with the XFIR Resilient instance and provides two way synchronisation between them. The XFIR team can request XFTI support and interact with the XFTI team only using Resilient, without a need to access Jira.

## XFTI Contact Points
This section lists named contact points which may be necessary during process of engaging XFTI.
| Intel Team | Manager | Backup|
|:--|:--|:--|
| Threat Hunt & Discovery | Richard Emerson | Willie Gonzalez |
| Malware RE & Development | Anne Jobmann | Kevin Henson |

*Intel Threat Hunt & Discovery* team provides information related to attribution, historical cases, IoC/TTP and correlates all details provided by IR and RE teams. 

## Requesting TI Support for IR Engagements
It is assumed that an `Intel Engagement` ticket was already created during the creation of the associated `IR` ticket. If, for some reason, this did not happen, make sure to create one following this separate [guide](#Creating-Intel-Engagement-Ticket), **before** proceeding with steps documented in this section.

Proceed with the below steps to engage XFTI for an Incident Response case:
1. Engage XFTI Managers (list of names is [here](#XFTI-Contact-Points)), who will assign necessary resources from their teams:
	- add *Intel Threat Hunt & Discovery* team Manager to the IR case Slack channel,
	- if RE support is needed, add *Malware RE & Development* team Manager to the IR case Slack channel.
2. Case Lead decides on information exchange models between IR and TI analyst from *Intel Threat Hunt & Discovery* team. Available approaches are:
	- proactive:
		- should be treated as default, unless there are some constraints,
		- IR team provides their findings to a Slack channel,
		- TI picks up this information in a proactive way (without being asked for it) and attempts to enrich it,
		- most common use case:
			- big complicated cases with a lot of findings; IR team being very busy and not able to administrate TI team work,
			- cases with an "open bucket" for hours usage.
	- reactive:
		- TI team responds to specific questions asked by IR team,
		- IR team should define effort constraints (upper bound of how many hours can be charged),
		- most common use case: smaller cases or strict constraints on how hours are used.
3. Post and pin a message in the Slack channel to define IR - TI workflow (or use a current "Administrative notes" pinned message in the channel, discussed in [guidelines](SpinUp#Internal-XFIR-Working-Environment) for Internal working environment):
	- include statement: "IR - TI workflow: [reactive|proactive] (not applicable to RE requests)"
	- include Resilient Intel ticket number - Intel ticket number which was automatically created with IR ticket creation,
	- if there are any constraints on how many hours can be used for TI, including this number in the message,
	- make sure it is defined and posted upfront, not in the middle of the case when TI was already engaged.
4. Invite assigned Threat Intel Analyst to a "case folder" to provide them access to work environment. 
5. If RE support is needed, proceed with steps described in section [Requesting RE Support for Malware Analysis](#Requesting-RE-Support-for-Malware-Analysis).

Please follow the below guidelines while engaging TI/RE teams. This is not a strict procedure, but following them should improve communication between IR and TI/RE, as well as provide better overall results:
- if working in reactive approach, make sure you clearly define the questions/requests and notify assigned TI/RE analyst on Slack channel that you have posted them,
- be crystal clear on what do you expect as the outcome,
- be clear what is an expected response timeframe,
	- in case of a tight time limitations, clearly express expectations: what kind of information, when and where should be provided by TI/RE analyst: eg. you have a call with a client at 15:00 UTC and you need any updated information TI can provide on the current state, but under no circumstances you can not be left without any status update from TI/RE team,
- provide feedback to the TI/RE team so they know whether the information or deliverable provided was indeed what you need:
	- always acknowledge receiving/reading/seeing findings,
	- if the result is sufficient, make sure to inform TI/RE analyst about it so they are not working further on this topic,
	- if the result does not meet your expectation make sure to clarify what do you need (eg. more details or you wanted something totally different).

Other important points:
- when TI is joined to a Slack channel they perform a quick Triage:
	- the goal of the XFTI triage is to perform a quick attribution based on information the IR team provides and thus help with remediation,
	- XFTI triage is automatically performed by the assigned TI Analyst and XFIR do not need to request it,
	- XFTI triage time is not billed to a Client.
- If you believe that cooperation between XFIR and XFTI teams is not working for your case, reach out to XFTI managers to address any problems (contacts listed [above](#XFTI-Contact-Points)).

## Requesting RE Support for Malware Analysis
In addition to the already created `Intel Engagement` Ticket for the IR, all XFIR malware requests require an associated `INTEL Ticket` with `Malware Analysis` type in Resilient. This ticket is managed by the XFTI Malware team and comments/attachments will be synced between JIRA and Resilient. 

**Before** creating any RE Resilient ticket and submitting a malware sample to RE team, **make sure** that:
- the TI team is already engaged, proceeding with steps described in section [Requesting TI Support for IR Engagements](#Requesting-TI-Support-for-IR-Engagements) - it is obligatory to engage TI for any RE work. Also, make sure to follow all guidelines within that section.
- The malware sample has been already submitted for automated analysis to a Sandbox (also called L0 analysis), following steps described [below](#Sandbox).
- A malware sample is packed into a password protected archive using the password "*infected*" for any non-automated analysis by RE Team (L1 and above). Using archives without a password often triggers various alerts and can cause sample removal, leading to a unnecessary delays in analysis. If a different password is used, make sure to provide it in the `(Intel) Description` field of the Resilient Malware request ticket.

Please follow the below guidelines while engaging the RE team:
- accommodate timezone difference to ensure efficient communications between IR and RE teams,
- make sure to clearly express your expectation in the RE ticket apart from only picking up analysis type - explain in detail what you need, eg.:
	- whether the result would be consumed only by XFIR or by the client as well,
	- do you require a formal report or whether updating the ticket notes is sufficient,
	- do you need updates during the process, if so clearly define a timeframe, eg. everyday at 12 UTC there is a call with the client and you need a note  updated with current findings and progress left on Slack channel before that call.
- for malware critical situations - add EU or AU resource for immediate work start and Anne Jobmann for visibility into Slack channel.
	- APAC RE Contacts – Reginald Wong, Christopher (Topet) Del Fierro,
	- EMEA RE Contact – Charlotte Hammond,
- a technical tutorial on how to submit RE analysis Tickets in Resilient is available [below](#Creating-Malware-Analysis-Ticket).

### Definition of RE Analysis Levels
 **Level 0** - Automated Sandbox Run
Normally, you should proceed with a [Sandbox self service](#Sandbox) approach described below. This is a legacy option, left for people who don't have access to the sandbox or just want runs with no context. Output is a link to the sandbox run or other output from tools in the JIRA ticket. 

**Level 1** - Quick Triage Report
Leverage automation and dynamic analysis to pull out tactical information to support an investigation or extract indicators without an in-depth explanation. Tactical indicators returned in the ticket or in a report only if requested.  This should be a first step output for any IR engagement request.

**Level 2** - Full Malware Report
Identify and explain the relevance of indicators, characteristics, commands and behaviors of the malware in the requested time-frame. Provide as much context as possible in the ticket to direct or guide the analysis.  Examples of relevant context include, where the file was found or it's interactions with other potential files on the compromised system, other samples or tickets that might be related, suspected identification and any relevant open source reporting or information.  If a specific malware feature such as C2 commands, encryption details or network communications should be the primary focus, that should be indicated in the request as well. This is resource intensive and primarily utilized to support a paying customer.

**Level 3** - Targeted Capability Creation and Full Malware Report
Create signatures, parser, decoders as requested or as relevant to support automation efforts around processing the malware. Provide as much context as possible in the ticket to direct or guide the analysis.  Suspected identification and any relevant open source reporting or information should be provided.  If a specific malware feature such as C2 commands, encryption details or network communications should be the primary focus, that should be indicated in the request as well. This can be very resource intensive.

**Level 4** - Focused Effort
Answer a specific question or set of questions about a particular piece of malware or provided sample.  This report type is best used to create/fix/update a targeted script or capability or as a follow-on to a previous effort to answer a discrete set of questions.  A full analysis report may or may not be necessary depending on the circumstances.  This ticket type can be used for a follow on request to previous analysis. This request can be used to support an external investigation, automation efforts, or hunting and research. Provide as much context as possible in the ticket for the specific request.  If a grouping of samples is submitted for targeted capability development provide any relevant open source reporting or possible categorizations (dropper, loader, trojan etc...) along with the requested capability (YARA signature, configuration parser etc...).  Additional examples of requests might be to: update a script to decrypt additional variants, provide details of a specific malware feature such as C2 commands, encryption details or network communications, or confirm it is the same as this open-source malware and if not conduct full L2 analysis. Resource level varies.

## Self Service TI Tools for XFIR
The XFTI team offers several tools which can be used by XFIR for self service and obtain Intel and RE related information without delays caused by unavailability of TI/RE teams or timezone differences. 

Threat Intel information are modelled in the Sherlock Database. This section contains reference on different methods on how to access data from Sherlock. Additional section deals with Sandbox usage for malware samples analysis. 

### Intel Bot Slack Channel
Intel team created a dedicated channel, where one can query the Sherlock database using a dedicated Intel Bot. Join channel `iris-intel_bot` located in `ibm-security.slack.com` Slack workspace. 

Enter command `/intel-help` to display usage information.

### Intel Bot App for Slack
Having a TI source outside the dedicated Slack channel for IR engagement is inconvenient. For this reason, it is recommended to add Intel Bot App to the  case dedicated Slack channel, adding the ability to ask Intel Bot the same commands as in the `iris-intel_bot` channel. Add the `sherlock2-for-iris` app in the same way as any other person is added to a channel using `@` operator.

### Direct Sherlock Access
There are several options:
1. Access Sherlock UI:
	- https://www.intsum.ibm.com/myintel/login
	- Reach out to Richard Emerson to be added to a group of people with access.
2. Use Sherlock APIs
    - API Documentation: https://xfti-confluence.dal1a.cirrus.ibm.com/display/SHER/User%27s+Guide%3A+APIs 
    - Chris Sperry needs to organise anonymous access for people without Confluence accounts (probably everyone in XFIR)
    - Reach out to Brian Rawls for additional information on Sherlock API access.
3. Sherlock Bulk Search Webpage:
	- http://sherlock-search.mybluemix.net/bulk-search
4. Bulk search python script with read-only access:
	- script is currently in the development phase,
	- if you need to use it, reach out to Megan Roddie for guidance.

### Sandbox
Currently, as a temporary solution we have Lastline Sandbox available for self service:
- [https://user.lastline.com/portal#/analyst/file](https://user.lastline.com/portal#/analyst/file)
- To request an account, managers or leads should create a JIRA Ticket Request for “Access Request” for Lastline.
- if JIRA is not accessible, email anne.jobmann@ibm.com or sarah.gomez-uscategui@ibm.com to request access
- Script to submit a file to Lastline, retrieve a report and delete the file from Lastline’s cloud: https://github.ibm.com/X-Force-IRIS-Intel/OSINT-Tools-Scripts/tree/master/lastline


#### IMPE (not yet available)
This is a destination platform, with potential beta testing starting in 2021Q2. IMPE is a central platform providing access to multiple Sandboxes. Introduction of IMPE should remove a need to obtain access to every Sandbox separately. Access to IMPE is granted with a JIRA Ticket Request for "Access Request" for IMPE access. It accepts password protected samples.

### Intel Yara Rules
The TI and RE teams maintain a repository containing all of their YARA rules:
https://github.ibm.com/X-Force-IRIS-Intel/YARA-Signatures/

## Requesting TI Support for Standalone Intel Engagements
All other requests for Intel Engagements, which are not supporting an ongoing IR engagement should be handled according to a separate process documented [here](https://github.ibm.com/XFIR/XFIR-master-wiki/wiki/Process-for-Intel-related-proactive-services).

## Additional XFTI Resources
 - Main IRIS Publisher Page - https://w3.ibm.com/w3publisher/x-force-iris 
 - Intel Offerings - https://w3.ibm.com/w3publisher/x-force-iris/offerings Intel
 - Enablement Material - https://w3.ibm.com/w3publisher/x-force-iris/enablement Intel
 - Sherlock/IMPE Information - https://w3.ibm.com/w3publisher/x-force-iris/enablement/find-evil
 - Sherlock UI - https://www.intsum.ibm.com/myintel/login
 - Trustar -https://station.trustar.co/ 
 - IRIS Intel Tools - https://github.ibm.com/X-Force-IRIS-Intel/
 - IRIS Threat Groups - https://ibm.biz/threatgroups
 - IRIS Research Hub - https://www.ibm.com/security/xforce/research-hu

## Tutorials

### Creating Malware Analysis Ticket
Proceed with the following steps to submit a ticket to the RE Team:
1. Click the `Create` button at the top of the main Resilient page.
2. In the `Ticket Type` field select `INTEL Ticket`.
3. In the `Region` field, select the appropriate region that correlates with the client's location.
4. In the `Type of Intel Support` field select `Malware Analysis`. 
5. In the `Related Resilient Engagement` field enter the Resilient Ticket ID for your IR engagement (`IR21-1234` for example).
6. Enter a brief but detailed description in the `Description` field. This field is not synced to Jira, thus not visible to the RE team.
7. In the `Work ID` field input the claiming code for your project.
8. Select the analysis level in the `(Intel) Level of Malware Analysis` field and provide any additional details you have for the sample (MD5, Sandbox URL, Maximum number of hours to consume, Due Date, and Engagement Box URL). Levels of Malware Analysis are explained in a separate [section](#Definition-of-RE-Analysis-Levels).
9. Make sure you populate `(Intel) Description` - this is the only description field synced to Intel Jira. Make sure to add any additional context of the sample, specific requirements, eg. reporting, update timeframe, etc.
10. Enter random text into `Name` field, it is required however, will be discarded and automatically populated by Resilient.
11. Click `Next` and your Intel Malware Analysis ticket will be created. At this point you have created the ticket for analysis however, you will still need to attach the malware sample(s) to the ticket.

Example screenshot of a populated ticket:
![RE ticket creation in Resilient](screenshots/Resilient_RE_New_ticket_request.png)

If you return to the main IR Resilient ticket that you created the Malware Analysis ticket in support of, you will see the new ticket in the `Related Tickets and Clients` section on the right: 
![Resilient related tickets](screenshots/Resilient_related_tickets.png)

Select your newly created Intel ticket and add sample(s) on the `Attachements` tab:
![Resilient RE ticket attachments](screenshots/Resilient_RE_attachments.png)

If you need to add additional samples at a later time, you can always add additional attachments to this tab and the corresponding Jira ticket will be updated. This also works for the `Notes` tab. If you need to provide additional details surrounding the malware you can create a note in the `Notes` tab and that information will be updated on the Intel Jira ticket.

### Creating Intel Engagement Ticket
**IMPORTANT**: This section only applies to the situation when an IR ticket was created without an associated Intel ticket. If you have followed guides from this wiki, you should not end up in a situation where you need to proceed with the steps below, as the Intel ticket should have been already created.

1. Click the `Create` button at the top of the main Resilient page.
2. In the `Ticket Type` field select `INTEL Ticket`.
3. In the `Region` field select the appropriate region that correlates with the client's location.
4. In the `Type of Intel Support` field select `Engagement Work`.
5. In the `Related Resilient Engagement` field enter the Resilient Ticket ID for your IR engagement (`IR21-1234` for example).
6. Enter a brief but detailed description in the `Description` field. This field is not synced to Jira, thus not visible to the TI team.
7. In the `(Intel) Type of Engagement` field select `IR - Incident Response`.
8. Populate `Client` field with correct value.
9. In the `Work ID` field input the claiming code for your project.
10. Make sure you populate `(Intel) Description` - this is the only description field synced to Intel Jira. Make sure to add any additional context of the sample, specific requirements, eg. reporting, update timeframe, etc.
11. Enter random text into `Name` field, it is required however, will be discarded and automatically populated by Resilient.
12. Click `Next` and your Intel Engagement ticket will be created.

Example screenshot of a populated ticket:
![Intel for IR standalone ticket creation in Resilient](screenshots/Resilient_TI_standalone_ticket_request.png)

