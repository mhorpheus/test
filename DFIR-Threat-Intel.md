
# XFIR Threat Intel for IR

## Table of Contents
1. [**Introduction**](#Introduction)
2. [**XFTI Contact Points**](#XFTI-Contact-Points)
3. [**Requesting TI Support for IR Engagements**](#Requesting-TI-Support-for-IR-Engagements)
4. [**Requesting TI Support for Standalone Intel Engagements**](#Requesting-TI-Support-for-Standalone-Intel-Engagements)
5. [**Tutorials**](#Tutorials)
	- [Creating Intel Engagement Ticket](#Creating-Intel-Engagement-Ticket)


## Introduction
The purpose of this page is to document how X-Force Threat Intelligence (XFTI) team supports XFIR engagements. There is number of services offered by XFTI supporting IR engagements directly or providing deliverable upon a Client request. In all those cases, XFIR represents IBM in front of the Client and is responsible for delivery. This page documents all aspects of interaction between XFTI and XFIR, as they differ depending on type of IR engagement. 

This is is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the  [Homepage](Home.md)).

XFTI tracks their engagements using Jira ticketing system. It was integrated with XFIR Resilient instance, and provides two way synchronisation between them. XFIR team can request XFTI support and interact with XFTI team only using Resilient, without a need to access Jira.

## XFTI Contact Points
This section list named contact points which may be necessary during process of engaging XFTI.
| Intel Team | Manager | Backup|
|:--|:--|:--|
| Threat Hunt & Discovery | Chris Sperry | Robert Gates or Willie Gonzalez |
| Malware RE & Development | Anne Jobmann | Kevin Henson |

*Intel Threat Hunt & Discovery* team provides Intel about attribution and historical case/IoC/TTP corelation. 

## Requesting TI Support for IR Engagements
It is assume that "Intel Engagement" ticket was already created during creation of IR ticket. Shall this not be a case, make sure to create one following [this](#Creating-Intel-Engagement-Ticket) guide, continuing next steps from this section.

Proceed with below steps to engage XFTI for Incident Response case:
1. Engage XFTI Managers (list with names is [here](#Contact-Points)), who will assign necessary resources from their teams:
	- add *Intel Threat Hunt & Discovery* team Manager to an IR case Slack channel,
	- if RE support is needed, add *Malware RE & Development* team Manager to a case Slack channel.
2. Case Lead decides on information exchange models between IR and and *Intel Threat Hunt & Discovery* (so Intel analyst, but not RE team). Available approaches (default one should be proactive):
	- reactive
		- TI team responds to specific questions asked by IR team
		- IR team should define effort constraints (upper bound of how many hours can be charged)
		- most common use case: smaller cases or strict constraints on how hours are used
	- proactive
		- IR team dumps findings to a Slack channel
		- TI picks up those information in a proactive way (without being asked for it) and attempts to enrich them and add value 
		- most common use case: big complicated cases with a lot of findings; IR team being super busy and not able to administrate TI team work; cases with an "open bucket" for hours usage.
3. Post and pin a message in the Slack channel to define IR - TI workflow (or use a current "Administrative notes" pinned message in the channel, discussed in [guidelines](DFIR-SpinUp.md##Internal-XFIR-Working-Environment) for Internal working environment):
	- include statement: "IR - TI workflow: [reactive|proactive] (not applicable to RE requests)"
	- include Resilient Intel ticket number - Intel ticket number which was automatically created with IR ticket creation,
	- if there are any constraints on how many hours can be used for TI, including it in the message.
	- make sure it is define and posted upfront, not in the middle of the case when TI was already engaged.
4. If RE support is needed and it is already know, how it will look like, include into above Slack note information whether full RE reports would be necessary or just ticket/Slack updates would be sufficient.

Below is the list of guidelines applicable to TI/RE requests and processing the results received from them. This is not a strict procedure, but following them should improve communication between IR and TI/RE, as well as provide better overall results:
- if working in reactive approach, make sure you clearly define the question and notify assigned TI/RE analyst on Slack channel about the question
- be clear on what do you expect as the outcome,
- be clear what is an expected response timeframe,
	- in case of a tight time limitations, be clear on what information, when and where you expect at the moment when time limitation is reached: eg. you have a call with a client at 15:00 UTC and you need any updated TI can provide on the current state, but you can not be left without no update from TI/RE team,
- provide feedback to TI/RE team so they know whether what was provided was indeed what you need:
	- always acknowledge receiving/reading/seeing findings,
	- if result is sufficient, make sure to inform TI/RE analyst about it so they are not working further on this topic,
	- if result does not meet your expectation make sure to clarify what do you need (eg. more details or you wanted something totally different),

Other important points:
- when TI is joined to a Slack channel they perform a quick Triage:
	- intention is to perform a quick attribution based on what IR team provides and thus help with remediation,
	- automatically done by assigned TI Analyst,
	- is not billed to a Client

## Requesting TI Support for Standalone Intel Engagements
requests from the scope of the IR, but without XFIR being engaged, so we are just a proxy. 

## Tutorials
### Creating Intel Engagement Ticket


###################################




 - [**Intel Support**](#intel-support)  
 - [**Intel Ticketing in Resilient**](#intel-ticketing-in-resilient) 
 - [**Creating an IR Ticket with Intel Support**](#creating-an-ir-ticket-with-intel-support)
 - [**Creating an Intel Ticket for an Existing Resilient Engagement Ticket**](#creating-an-intel-ticket-for-an-existing-resilient-engagement-ticket)
 - [**Creating a Malware Analysis Ticket**](#creating-a-malware-analysis-ticket)

## from Spin Up
All XFIR engagements of the type  `IR`  require an initial  `Engagement Work`  Intel ticket. Intel uses Jira for ticketing and associates additional tickets created in support of an engagement with this initial  `Engagement Work`  ticket. For example, if you submit three malware analysis tickets for your engagement, Intel will track the relationship between those tickets through the initial Intel ticket.

This makes the task of tracking those tickets easier for Intel and facilitates better workflow between IR consultants and Intel analysts working on an engagement together. XFIR uses functionality within Resilient to create and associate these tickets with our client engagements. For more information see the  [Intel Analysis Ticketing](https://github.ibm.com/XFIR/DFIR-wiki/wiki/XFIR-IR-IntelTicketing)  section.




## Intel Support
Intel supports XFIR during our engagements through various services XFIR consultants can leverage including dedicated intel analyst support for IR engagements, malware reverse engineering, dark web analysis, and more. 

Intel uses Jira for their ticketing process and to engage intel a Jira ticket must be created for that support. The good news is that most of that can be completed through the Resilient ticket for your IR engagement. 

In some scenarios you might need to provide additional details or update a ticket with new information. And in those use cases access to Jira may be required. The Jira portal can be accessed [here](https://jira.sec.ibm.com).

## Intel Ticketing in Resilient
The most common method for engaging Intel for direct support on your IR engagement is to create an Intel ticket within Resilient. If you are creating the IR engagement ticket as well, there is an option for creating an Intel ticket and automatically associating that ticket with your IR ticket.

If there is already a `Hotline Triage` ticket and the client has engaged XFIR for IR services. After you have updated the Resilient ticket with the `IR` tag and provided additional details surrounding the engagement, you can create a separate Intel ticket and correlate that with your IR engagement.

Both of these scenarios are documented in the following sections.

## Creating Intel Engagement Ticket

In the case where you want to create an IR ticket and an Intel ticket at the same time use the following instructions:

Click the `Create` button at the top of the main Resilient page.

![IRTAG](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline03.png)

2. In the `Ticket Type` field select `Engagement Project`.

![IRTYPE](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline04.png)

3. In the `Region` field select the appropriate region that correlates with the client's region.

![IRREGION](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline05.png)

4. In the `Client` field type or select the client entry associated with the respective client.

![IRCLIENT](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline06.png)

5. In the `Engagement Type` field select `IR` and then add a description for the IR that includes how XFIR was engaged and the goals of the engagement.

![IRTYPE](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline07.png)

6. In the `Request Intel Support` field select `Yes`. All engagements of the type `IR` require an initial Intel Ticket for engagement support. This helps Intel facilitate the correlation of other tickets that might be required for an IR such as (Malware, DarkWeb Analysis, etc).

![IRINTEL](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline08.png)

Once you have completed filling out these fields click `Next` to create the ticket. A corresponding Intel ticket will be created and associated with your Resilient IR ticket.

![IRINTEL](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel01.png)

This step is important as any additional Intel tickets created for an engagement will be associated in Jira with the initial Intel support ticket that is created. This helps Intel keep track of relationships between different tickets.

## Creating an Intel Ticket for an Existing Resilient Engagement Ticket

In the case where an IR engagement ticket has already been created or you need to update an existing Hotline Triage ticket to include the `IR` tag when a client engages us, use the following instructions for creating an associated Intel ticket.

1. Click the `Create` button at the top of the main Resilient page.

![Create](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline03.png)

2. In the `Ticket Type` field select `INTEL Ticket`.

![Type](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel02.png)

3. In the `Region` field select the appropriate region that correlates with the client's region.

![IRREGION](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline05.png)

4. In the `Type of Intel Support` field select the appropriate Intel ticket type.

![Type](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel03.png)

Currently the options are:

 - Engagement Work - Request an INTEL resource for IRs, FORs, ATAs, Dark Web Analysis, etc.
- Malware Analysis - Submit a malware analysis request.
- Production Work - Request for a STA

If this is the first Intel ticket that will be associated with your IR engagement choose the `Engagement Work` Intel ticket type. This is highly recommended to help Intel keep track of associated tickets. Even in the case where all you need is malware analysis, or dark web analysis, it helps Intel keep track of tickets on their end if there is a "Master" ticket for each engagement that they can then associate additional tickets with.

5. In the `Related Resilient Engagement` field type the Resilient ticket ID for your IR engagement. (`IR19-3818` for example). And provide a brief but detailed description in the `Description` field.

![Description](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel04.png)

6. In the `(Intel) Type of Engagement` field select `IR - Incident Response` as this documentation is for the IR Intel ticketing process and you are creating an initial `Engagement Work` ticket for your IR engagement.

Fill out the `Client` detail field and provide a more detailed description in the `(Intel) Description` field. This description needs to include the specific ask(s) from Intel. Why are we requesting support and what are the details of the IR so that Intel can assign the appropriate resource.

Finally, fill out the `(Intel) Engagement Data URL` with the URL for the Engagement Box folder.

![TypeClientDetails](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel05.png)

Repeat this process if there is already an engagement work ticket for your IR (All engagements of the type `IR` are required to have an Intel `Engagement Work` ticket) and you need to create a ticket for malware analysis, dark web analysis, etc. On the backend in Jira, Intel will be able to correlate those additional requests for their tracking purposes.

## Creating a Malware Analysis Ticket

In the case where an you need to create a Malware Analysis Intel ticket please use the following instructions:

1. Click the `Create` button at the top of the main Resilient page.

![Create](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline03.png)

2. In the `Ticket Type` field select `INTEL Ticket`.

![Type](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel02.png)

3. In the `Region` field select the appropriate region that correlates with the client's region.

![IRREGION](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Hotline05.png)

4. In the `Type of Intel Support` field select `Malware Analysis`. In the `Related Resilient Engagement` field enter the Resilient Ticket ID for your IR engagement (`IR19-3818` for example).

Enter a brief but detailed description in the `Description` field.

![Type](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel06.png)

5. In the `Work ID` field input the ILC bill code for your project, select the analysis level in the `(Intel) Level of Malware Analysis` field and provide any additional details you have for the sample (MD5, Sandbox URL, Maximum number of hours to consume, Due Date, and Engagement Box URL)

![Type](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel07.png)

For the `(Intel) Level of Malware Analysis` field please use the detailed descriptions for each level outlined below:

 - **Level 0** - *Automated sandbox run. - For people who don't have access to the sandbox or just want runs with no context - Link to sandbox run or other output from tools in the JIRA ticket.*
 - **Level 1** - *Quick Triage Report  - Leverage automation and dynamic analysis to pull out tactical information to support an investigation or extract indicators without an in-depth explanation. Tactical indicators returned  in the JIRA ticket or in a report only if requested.  This should be a first step output for any IR engagement request.*
 - **Level 2** - *Full Malware Report  - Identify and explain the relevance of indicators, characteristics, commands and behaviors of the malware in the requested time-frame. Provide as much context as possible in the JIRA ticket to direct or guide the analysis.  Examples of relevant context includes where the file was found or it's interactions with other potential files on the compromised system, other samples or tickets that might be related, suspected identification and any relevant open source reporting or information.  If a specific malware feature such as C2 commands, encryption details or network communications should be the primary focus, that should be indicated in the request as well. Resource intensive, primarily utilized to support a paying customer.*
 - **Level 3** - *Targeted Capability Creation and Full Malware Report - Create signatures, parser, decoders as requested or as relevant to support automation efforts around processing the malware. Provide as much context as possible in the JIRA ticket to direct or guide the analysis.  Suspected identification and any relevant open source reporting or information should be provided.  If a specific malware feature such as C2 commands, encryption details or network communications should be the primary focus, that should be indicated in the request as well. This can be very resource intensive.*
 - **Level 4** - *Focused Effort  - Answer a specific question or set of questions about a particular piece of malware or provided sample.  This report type should is best used to create/fix/update a targeted script or capability or as a follow-on to a previous effort to answer a discrete set of questions.  A full analysis report may or may not be necessary depending on the circumstances.  This ticket type can be used for a follow on request to previous analysis. This request can be used to support an external investigation, automation efforts, or hunting and research. Provide as much context as possible in the JIRA ticket for the specific request.  If a grouping of samples is submitted for targeted capability development provide any relevant open source reporting or possible categorizations (dropper, loader, trojan etc...) along with the requested capability (YARA signature, configuration parser etc...).  Additional examples of requests might be to: update a script to decrypt additional variants, provide details of a specific malware feature such as C2 commands, encryption details or network communications, or confirm it is the same as this open-source malware and if not conduct full L2 analysis. Resource level varies.*

6. Click `Next` and your Intel Malware Analysis ticket will be created. At this point you have created the ticket for analysis however, you will still need to attach the malware sample(s) to the ticket.

If you return to the main Resilient Engagement Ticket that you created the Malware Analysis ticket in support of, you will see the new ticket in the `Related Tickets and Clients` section of the Engagement Ticket. 

![RelatedTickets](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel09.png)

7. Select your newly created Intel ticket and add sample(s) on the `Attachements` tab.

![Attachments](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR/Resilient_Intel08.png)

If you need to add additional samples at a later time, you can always add additional attachments to this tab and the corresponding Jira ticket will be updated. This also works for the `Notes` tab. If you need to provide additional details surrounding the malware you can create a note in the `Notes` tab and that information will be updated on the Intel Jira ticket.
