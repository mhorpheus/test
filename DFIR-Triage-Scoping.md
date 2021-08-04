

# DFIR Triage and Scoping Call

## Table of Contents

 1. [**Introduction**](#Introduction)
 2. [**Organizing a Triage and Scoping Call**](#Organizing-a-Triage-and-Scoping-Call)
	- [XFIR Representatives](#XFIR-Representatives)
3. [**Responsibilities of a Triage Call Lead**](#Responsibilities-of-a-Triage-Call-Lead)
4. [**Phases of a Triage and Scoping Call**](#Phases-of-a-Triage-and-Scoping-Call)
5. [**Engagement Initiation Email**](#Engagement-Initiation-Email)
6. [**Claiming**](#Claiming)
7. [**Ad-Hoc Assistance Request**](#Ad-Hoc-Assistance-Request)

## Introduction
The purpose of this page is to document the DFIR Triage and Scoping Call procedure. The following documentation is a guideline for XFIR Triage and Scoping Call procedures and is a living document. If there is something you want to see documented here or explained with further detail please contact your geographic Functional IR Lead (listed on the [Homepage](Home)).

A dedicated Triage and Scoping Call must be conducted for each assistance request received by XFIR. The intention of such a call is to:
- gain an understanding of the incident the Client is facing,
- evaluate the scope of the incident, e.g.:
	- all Windows endpoints on a global network
	- certain web servers in a specific data centre
- determine type of assistance requested by the Client, e.g.:
	- full IR support or limited forensic analysis
	- on site, remote assistance, or a mixed approach
- determine necessary effort from XFIR.

A Triage and Scoping Call usually originates from:
- a call to the XFIR Hotline,
- direct contact from a Client to an XFIR Consultant they have a relationship with,
- direct contact from IBM employees aware that the Client is facing a security incident.

## Organizing a Triage and Scoping Call
XFIR is contractually obligated to organize a Triage and Scoping Call within a certain time period in order to meet a Service Level Agreement (SLA). The length of time varies based on the contact with each Client. Usually this is dictated by the type of retainer the Client has, but custom SLAs may have been agreed on a case by case basis. The default lengths of time for the different retainer products are:
- Legacy Emergency Response Service (ERS) – 1 hour
- Vision Retainer Tier 2 and Tier 3 – 1 hour
- Vision Retainer Tier 1 – 4 hours

Resilient should be consulted to ensure that the proposed time for a Triage and Scoping Call is not outside of that client's SLA. Equally, it is recommended to provide at least 30 minutes between the Hotline call and the Triage and Scoping Call to give time for preparation to all participants.

A Triage and Scoping Call should be explicitly set up by XFIR Consultants, to ensure that XFIR owns and holds full control of the Triage. This is  related to both participants and discussion flow. For this reason, wherever possible:
- avoid joining already ongoing Client conference calls
- avoid using the Client's (or a third party's) teleconferencing bridges due to the inability to control who participates and potential that Client's infrastructure is compromised
- do not use personal Webex links, and instead create an instantiated one-off Webex meeting (instructions are available [here](https://github.ibm.com/XFIR/DFIR-wiki/blob/master/documents/Cheat%20Sheet%20-%20Scheduling%20a%20Webex%20Meeting.pdf).

Joining ongoing calls poses a significant risk that XFIR would not be driving the call, and will just be one of many parties involved. Important topics related to the current security incident may be lost in discussions among a big group of participants. Instead offer to set up dedicated a Triage and Scoping Call between XFIR, the Client, and any other key stakeholders that they wish to invite.

The person organizing a Triage and Scoping Call is responsible for:
1. ensuring that XFIR is represented by required people (see Section [XFIR Representatives](#XFIR-Representatives)),
2. setting up a call by sending Webex invites to designated participants,
3. initiating the Call:
	- open the Webex meeting,
	- provide a quick summary of a current XFIR understanding of the case,
	- introduce XFIR members present on the call, clearly mentioning who is the Triage and Scoping Call Lead.

The intention of this approach is to ensure continuity of the contact with a Client. If the contact originated from a Hotline Call, then it is on-call person's responsibility to organize the Triage and Scoping Call although they may not be responsible for running the Triage and Scoping Call. 

After completing actions listed above, the on-call person is not required to participate further in the call and can drop off, unless they have been assigned any of the roles described in the Section [XFIR Representatives](#XFIR-Representatives). This leaves the on-call person free to handle new Hotline calls.

Use the `ir-triage-scoping` Slack channel to coordinate Triage and Scoping Calls and discuss any topics related to that case. Please keep in mind that the `ir-hotline` Slack channel should not be used to discuss case related topics, and is intentionally 'low traffic' to allow XFIR team members to quickly see how many calls have come in since the last time they checked. More details on differences between those channels and how they should be used can be found [here](DFIR-Hotline#Shift-Turnover).

### XFIR Representatives
Roles of XFIR participants during Triage and Scoping Call are defined as following:
- **Senior Consultant** (required) - responsible for maintaining necessary quality of whole Triage and Scoping process. Can be Functional Lead, Manager, Geography Lead or other person considered by Leadership as Senior Consultant with sufficient experience.
- **Triage Call Lead** (required) - responsible for running the call, and will likely ask the majority of the questions.
- **Special Matter Expert (SME)** (optional) - Consultant required to provide assistance on specific topic based on their knowledge and experience. 
- **Assigned Consultants** (optional) - Consultants who may be working on this engagement, for example due to geographical location, language skills or availability.
- **Junior** or **Newcomer** (optional) - Consultants observing the Triage and Scoping Call process for their own experience so that they can build expertise or learn the XFIR approach to Triage and Scoping Calls.

It is not required to cover all roles, and which are appropriate should be decided on a case-by-case basis. For example:
- the *Senior Consultant* and *Triage Call Lead* may be the same person. 
- the *Senior Consultant* may be present on the call solely to support or shadow other Consultant who would perform a role of a *Triage Call Lead*. 

*Triage Call Lead* should not be mistaken with a Incident Response Lead for this particular case, as it is possible that who would lead this investigation from XFIR was not decided prior to the Triage and Scoping Call.

Only necessary people should be invited to a Triage and Scoping Call, to avoid over-representation by the XFIR team, which could overwhelm Client. 

Individuals to represent necessary roles during Triage and Scoping Calls can be identified in a number of ways:
1. The person who was contacted for a Triage and Scoping Call is capable of running a call on their own being a *Senior Consultant* as well as having the necessary availability.
2. `ir-triage-scoping` Slack channel can be used to request volunteers and/or SMEs if necessary. Consider using the `@here` Slack command to notify online members of the channel.
3. If no volunteers are forthcoming, the Leads Team (Team Leads, Functional Leads or Geographic Leads) should be contacted to help designate people or attend themselves.

## Responsibilities of a Triage Call Lead
Triage Call Lead (as defined [here](#Roles-of-Participants)) responsibilities are defined as following:
- leading Triage and Scoping Call,
- taking notes or designating notetaking to another attendee,
- preparing and sending [Engagement Initiation Email](#Engagement-Initiation-Email), to Client representatives present on a Triage and Scoping Call as well as all Incident Declarers listed in Resilient (who can be found following [this tutorial](DFIR-Resilient#Finding-Details-of-Incident-Declarers)),
- ensuring that incident details and Triage and Scoping Call outcome is recorded in Resilient:
	- by now there should already be a Resilient entry, but if not create one following guidelines from [Logging Requirements for New IR Engagements](DFIR-Resilient#Logging-Requirements-for-New-IR-Engagements) section from Resilient page,
	- update existing Resilient entry with additional details obtained during Triage and Scoping Call, especially "Triage Worksheet" tab,
	- paste "Engagement Initiation Email" to a Notes section in Resilient (with evidence when it was sent and all recipients)
- documenting Client's decision (approval of "Engagement Initiation Email" or decision not to engage) in Resilient. Upload an .eml format copy of Client's response to Resilient via the 'Attachments' tab.

It is important to fully document **every** Triage and Scoping Call in Resilient, regardless of the final decision made by the client on whether or not to engage XFIR. 

## Phases of a Triage and Scoping Call
To address Triage and Scoping goals listed in the [Introduction](#Introduction), a call has been divided into several phases listed below. The below points should be treated as a **script** for running a Call:
1. Introduction:
	1. Introduce XFIR participants,
	2. Ask the Client to introduce their team together with their roles,
	3. If XFIR was engaged over the Hotline, the on-call person provides a quick summary of the current XFIR understanding of the incident.
	4. If applicable, perform hand over from on-call person to a designated Triage Call Lead.
	5. If not done so already, clarify whether the Client is an existing retainer customer or if this will be an 'ad-hoc' engagement.
2. Discovery:
	1. Ask the Client to provide further information. Ensure that during discussions you cover important topics, such as: 
		- how it was detected,
		- number, type, role of systems impacted:
			- physical or VMs,
			- server or endpoints
			- Windows or Linux or MAC
			- server functions and software used: web servers, domain controllers, database, etc.
			- access/exposure to Internet/LAN: direct Internet exposure, over Firewall/IPS, proxy/reverse proxy, no Internet access, etc.
		- number and type of accounts compromised (local user / admin, domain user / admin, service account, etc.),
		- sensitivity/criticality of data stored on affected systems, backups policy and availability,
		- security solutions used within affected environment (AV, EDR, etc.),
		- any centralized logging or SIEM solution, and if so which logs from affected systems were collected,
		- business impact,
 		- what kind of artefacts or IoCs were already found,
 		- status of digital evidence collection: 
			- is any electronic evidence already collected?
			- if so, what tools were used?
			- do they have necessary equipment/knowledge to collect evidence on their own or do they need assistance?
		- containment and remediation steps already performed (e.g. system isolation, shutting down, VM snapshoot taken), 
		- other relevant actions performed.
	2. Open the floor for questions from XFIR Consultants so they can get better understanding of the incident.
3. Identification of Client's objectives and expectations: 
	- what is needed to perform a successful delivery,
	- what type of tasks has the Client asked XFIR for help with: 
		- full IR?
		- dead box forensics?
		- EDR deployment?
		- log analysis?
		- live response data collection and analysis?
		- malware severe engineering?
		- threat intel?
	- what is expected in terms of XFIR availability: 
		- on-site or remote?
		- 8x5, 8x7 or 24x7?
4. Presentation of XFIR approach and solution:
	- what we can offer to address the Client's goals and expectations,
	- discuss available solutions (as above),
	- take into account business constraints from Client, as they most probably want to be back in operation as soon as possible: try to propose a proportional solution addressing this demand as well as providing necessary level of security assurance,
	- provide initial/containment recommendations so Client can start immediately working on these tasks while XFIR set up our internal working environment,
	-  if applicable, XFIR Consultants can propose changes to a Client approach and expectations, explaining what would be the benefits from a change,
	- review approach proposed by XFIR against Client expectations, maybe Client wants to update their expectations/objectives for XFIR - agree on next steps.
5. Closing:
	- Inform that notes from this call will be shared with the Client in a form of an "Engagement Initiation Email".
	- Establish regular cadence or at lest next meeting point for status updates.
	- Agree actions for the Client, e.g. provide initial tranche of log data via Box, etc.
	- Explain that XFIR cannot start work (and that the retainer is not formally triggered) until an email, from an Incident Declarer, approving the "Engagement Initiation Email" is received by XFIR.

## Engagement Initiation Email
The "Engagement Initiation Email" is a record of what was discussed during the Triage and Scoping call. It is a crucial document for managing client expectations from the beginning of our engagement, and should be prepared with care. Its role is to:
 - **capture Triage and Scoping Call content** - ensure that discussed topics are documented in writing and not lost,
 - **populate Resilient ticket** - simply include content of the "Engagement Initiation Email" in the Resilient ticket, as it contains most of necessary information (just add remaining ones - detailed requirements of logging Resilient tickets are [here](DFIR-Resilient#Logging-Requirements-for-New-IR-Engagements).
 - **allow for a smooth transition** - proper documentation is necessary when handing over cases or briefing others to work on them, either as a result of another geographic region taking a case or  multiple regions working on a case in a Follow the Sun model.
 - **ensure a common understanding with the Client** - protect XFIR against "we agreed/understood this differently" situations with Clients, as we explicitly require the Client to approve the content of the "Engagement Initiation Email", which states what actions were agreed for both sides as well as an estimate of the billable hours required for XFIR to complete their tasks.

Every "Engagement Initiation Email" must contain the sections defined below. Each section should contain several **key** points. It is not necessary to document every single sentence, as it is not a transcript of the Call. Common sense is necessary from the author of the "Engagement Initiation Email", as we do not want to the Client to wait 12 hours for a summary to be prepared. A well-written "Engagement Initiation Email" will allow any member of the XFIR team (including those that did not attend the Triage and Scoping Call) to read it and understand the agreed approach, as well as what the client has agreed to provide and how many hours we have available to complete the initial tranche of work.

The sections are as following:
1. XFIR understanding of the incident
2. Expectations and goals for XFIR
	- what the Client wants us to do and what we agreed upon.
	- what the Client has agreed to do in order for XFIR to be able to start work (e.g. provision access to their EDR for three consultants)
3. Next steps proposed by XFIR
	- the intention of this point is to document what we have recommended as IR steps, to avoid future conflicts, such as "you recommended this and that" or "you have not recommended" this action, and who is their owner (not actions tracker, but rather high level view of what to expect next from whom)
	- agreed cadence - when is next meeting,
4. Subscription hours status (not applicable to Ad-hoc engagements):
	- number of hours left from subscription and their expiry date (guidance how to check number of hours left can be found [here](DFIR-Resilient#Tracking-Subscriptions-Hours-Usage),
5. Estimated cost (in hours) of planned XFIR work.

Few additional statements are necessary, to avoid any misunderstandings and clearly set up expectations. For this reason and to present a consistance approach to our clients, please use the below "Engagement Initiation Email" template and do not compose a it yourself. The template represents Phases of the Call documented above, thus should be easy to populate. Please make sure to fill in all fields and remove comments and unrelated statements.

`------------ BEGINNING OF A TEMPLATE ------------ ` 

**Mail subject:** `<Client Name>` engagement Initiation Email for XFIR case IR`<YY-NNNN>`  
**Mail body:**  
Dear `<Client Name>`,  

Thank you very much for participation in the Triage and Scoping Call. We would like to summarize our discussion with a note presented below. Then intention of this note is to ensure that all crucial information is captured and documented and we have a common understanding of this incident.

This case has been assigned a unique identifier: IR`<YY-NNNN>`.

`<If it is not you, please provide primary point of contact name, otherwise delete below sentence.`
Your primary point of contact for this engagement will be: `<Name Surname>`
 
**Our XFIR understanding of the incident:**  
	 - `<first bullet point>`  
 	 - `<second bullet point>`

**Expectation and goals for XFIR:**  
	 - `<first bullet point>`  
 	 - `<second bullet point>`
 
**Next steps proposed by XFIR:**  
	 - `<first bullet point>`  
 	 - `<second bullet point>`

**Agreed next actions for XFIR:**  
	 - `<first bullet point>`  
 	 - `<second bullet point>`

**Agreed next actions for `<Client Name>`:**  
	 - `<first bullet point>`  
 	 - `<second bullet point>`

**Status of your subscription hours:**  
You currently have `<XYZ>` subscription hours left, valid till `<YYYY-MM-DD>`.

`<In case of a non-severe incident, when you can estimate effort, please use following statement. Do not use it for big incidents, with an "open bucket" for hours usage.>`  
Based on information documented above, the XFIR initial estimation of hours necessary to deliver tasks listed above is `<XYZ>`. This number may change with any change in the scope of XFIR work or based on investigation findings. Any change in number of estimated hours will be communicated to obtain your approval.

`<In case of significant incident, when it is impossible to estimate hours used, please use following statement.>`  
At this stage, due to the complexity, size and scope of the incident you are facing, it is not possible to provide an approximate value of hours necessary to deliver the tasks defined for our team. For this reason, we can offer weekly (or based on other frequency you prefer) reports containing details about current hours usage so you can manage the cost of this investigation.

`<This is a final statement, make sure it is included. For Ad-hocs replace requirements to acknowledge by Incident Declarer to acknowledge by anyone from recipients.>`  
IMPORTANT: To proceed further and engage XFIR for this incident, one of your representatives designated as "Incident Declarer" in our database, MUST reply to this email message acknowledging the content of this "Engagement Initiation Email", as well as approving subscription hours usage. If you disagree with any of the points in this email message or if anything was misunderstood, please let us know, so we can work on a clarification and re-issue this "Engagement Initiation Email".  
`------------ END OF A TEMPLATE ------------ `

Important points:
- do not use XX.YY.ZZZZ or XX/YY/ZZZZ date formats, as it can be confusing/ambiguous due to differences between American and European/Asian notation with day and month values swapped in places - the required date format ISO 8601: YYYY-MM-DD.
- even if Client decides not to engage our team, it is still necessary to prepare the "Engagement Initiation Email" (without predefined statements for a client) and pasting it to a Resilient as a trace from a Triage and Scoping Call.
- if number of estimated hours necessary for this engagement exceeds or is close to number of subscription hours left, then consider initiating commercial discussion, following same approach as for [Ad-hoc requests](#Ad-hoc-Assistance-Request). Keep commercial discussion separate from the "Engagement Initiation Email", as recipient may differ. 

Any decision on whether or not engage XFIR should be documented in the Resilient. Depending on the Client answer, potential next steps are:
1. XFIR gets engaged:
	- start [XFIR Spin-Up Process](DFIR-SpinUp),
	- populate "Owner/Engagement Lead" and "Members" fields accordingly in Resilient.
2. XFIR is not engaged:
	- proceed with steps described on this [page](DFIR-Engagement-Closeout#Not-Engaged-Closeout-Procedure).

If there is no response for 24 hours, then send a follow up email or make a call.

## Claiming Time
The XFIR service is built in such a way that anyone can request assistance, mainly by calling the Hotline. Triage and Scoping Calls are offered free of charge irrespective of having a retainer or not. It is not possible to provide claiming for all Triage participants. Only Triage Call Lead should:
- book 1 hour as "Telephone Triage", "not against subscription" in this Engagement ticket in Resilient,
- claim 1 hour as "general billable" against the workID

## Ad-Hoc Assistance Request
To process commercials for an ad-hoc IR request, as a temporary solution, reach out to the designated ops manager from your geography:
* APAC: Amanda Nelson (anelson@au1.ibm.com), backup: Chris Tappin (chris.tappin@ibm.com)
* EMEA: Neil Jones (NEILJONE@uk.ibm.com), backup: Colin Sheppard (colin.sheppard@ibm.com)
* NA: Phil Harrold (rpharrol@us.ibm.com), backup: Kurt Rohrbacher (Kurt.Rohrbacher@ibm.com)