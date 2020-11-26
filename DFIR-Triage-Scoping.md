

# XFIR Triage and Scoping Call

## Table of Contents

 1. [**Introduction**](#Introduction)
 2. [**Organizing a Triage and Scoping Call**](#Organizing-a-Triage-and-Scoping-Call)
	- [XFIR Representatives](#XFIR-Representatives)
3. [**Responsibilities of a Triage Call Lead**](#Responsibilities-of-a-Triage-Call-Lead)
4. [**Phases of a Triage and Scoping Call**](#Phases-of-a-Triage-and-Scoping-Call)
5. [**Triage and Scoping Call Summary Note and Mail**](#Triage-and-Scoping-Call-Summary-Note-and-Mail)
6. [**Claiming**](#Claiming)
7. [**Ad-hoc Assistance Request**](#Ad-hoc-Assistance-Request)

## Introduction
The purpose of this page is to document the XFIR Triage and Scoping Call procedure. The following documentation is a guideline for XFIR Triage and Scoping Call procedures and is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](Home.md)).

A dedicated Triage and Scoping Call must be conducted for each assistance request received by XFIR. The intention of such a call is:
- obtain necessary understanding of the incident Client is facing,
- evaluate scope of he incident,
- determine type of assistance requested by a Client, eg.:
	- full IR support or maybe just forensics analysis, etc.
	- on-site or remote assistance or mixed approach, etc.
- determine necessary effort from XFIR.

A Triage and Scoping Call most often (but is not limited to) originates from:
- a call to XFIR Hotline,
- a direct contact from a Client to XFIR Consultant he/she has relationship with,
- a direct contact from IBM employees aware that Client is facing a security incident.

## Organizing a Triage and Scoping Call
XFIR is contractually obliged to organize a Triage and Scoping Call and meet defined SLA. The value of SLA depends on the type of the subscription Client has. Default values for different subscriptions are presented below:
- Legacy Emergency Response Service (ERS) subscriptions – 1 hour
- Vision Retainer Tier 2 and Tier 3 – 1 hour
- Vision Retainer Tier 1 – 4 hours.

However, there may be some exceptions, so it is always recommended to check data from Client entry in Resilient if organizing a Triage and Scoping Call takes more time than one hour. When scheduling a Triage and Scoping Call, it is recommended to provide at least 30 minutes between the Hotline call and the Triage and Scoping Call to give time for preparation to all participants.

A Triage and Scoping Call should be explicitly set up by XFIR Consultants, to ensure that XFIR owns and holds full control of the Triage. This related to both participants and discussion flow. For this reason:
- do not join already ongoing calls and always set up dedicated Triage and Scoping Call,
- if possible avoid using Client's or 3rd party teleconferencing bridges, due inability to control who participates,
- do not use personal Webex links, but create a one-time Webex meeting,

Joining ongoing calls pose a significant risk, that XFIR would not be driving the call, but will just be one of many parties involved. For this important topics related to security incident may be lost in discussions among big group of participants. 

The person responsible to organize a Triage and Scoping Call (if it originated from a Hotline Call, then it is on-call person who picked up a call)  is responsible to:
1. ensure that XFIR is represented by required people (see Section [XFIR Representatives](#XFIR-Representatives)),
2. set up a call, by sending meeting invite to designated participants,
3. initiate a Call:
	- open teleconference bridge and join the call,
	- provide a quick summary of a current XFIR understanding of a case,
	- introduce XFIR members present on the call, clearly marking who is the Triage and Scoping Call Lead.

The intention of this approach, is to ensure continuity of the contact with a Client, however on-call person is not responsible for running a Triage and Scoping Call. This means, that after completing actions listed above, on-call person is not required to participate further in the call and can drop off, unless has been assigned any of the roles described in the Section [XFIR Representatives](#XFIR-Representatives).

Use `ir-triage-scoping` Slack channel to coordinate Triage and Scoping Call organization and discuss any topics related to that case. Please keep in mind, that `ir-hotline` Slack channel, should not be used to discuss case related topics. More details on differences between those channels and how they should be used can be found [here](DFIR-Hotline.md#Shift-Turnover).

### XFIR Representatives
Roles of XFIR participants during Triage and Scoping Call are defined as following:
- **Senior Consultant** (required) - responsible for maintaining necessary quality of whole Triage and Scoping process. Can be Functional Lead, Manager, Geography Lead or other person considered by Leadership as Senior Consultant with sufficient experience.
- **Triage Call Lead** (required) - responsible tun run a call and Triage an Incident.
- **Special Matter Expert (SME)** (optional) - Consultant required to provide assistance on specific topic based on his knowledge and experience. 
- **Assigned Consultants** (optional) - ones who will be working on this engagement.
- **Junior** or **Newcommer** (optional) - To build expertise of Junior Consultants or to share our approach for running Triage Calls with new team members.

It is not required to represent all above roles, as it should be decided on the case by case basis. *Senior Consultant* may lead the call holding *Triage Call Lead* role. Alternatively, *Senior Consultant* may be present on the call just to support or shadow other Consultant who would perform a role of a *Triage Call Lead*. Additionally, *Triage Call Lead* should not be mistaken with a Incident Response Lead for this particular case, as it is possible that such person was not yet designated before Triage and Scoping Call.

Only necessary people should be invited to a Triage and Scoping Call, to avoid over-representation of XFIR team, which could overwhelm Client. 

Identification of individuals to represent necessary roles during Triage and Scoping Call can be performed according to one of the following  scenarios:
1. The person who received a trigger for a Triage and Scoping Call is capable of running a call on his/her own being a *Senior Consultant* as well as having necessary availability. A trigger can be a Hotline call or any other contact requesting XFIR assistance.
2. `ir-triage-scoping` Slack channel can be used to query for volunteers willing to support Triage and Scoping Call as well as SME's if necessary
3. In absence of volunteers, anyone from Leads Team (Team Leads, Functional Leads or Geography Leads) should be contacted to help designate people supporting Triage and Scoping Call.

## Responsibilities of a Triage Call Lead
Triage Call Lead (as defined [here](#Roles-of-Participants)) responsibilities are defined as following:
- leading Triage and Scoping Call,
- taking notes or designating note taking person,
- producing [Triage and Scoping Call Summary Note and Mail](#Triage-and-Scoping-Call-Summary-Note-and-Mail),
	- sending "Triage and Scoping Call Summary Mail" to Client representatives present on a Triage and Scoping Call as well as all Incident Declarers listed in Resilient (who can be found following [this tutorial](DFIR-Resilient.md#Finding-Details-of-Incident-Declarers)),
- ensuring that incident details and Triage and Scoping Call outcome is recorded in Resilient:
	- if there is no ticket, create a new one following guidelines from [Logging Requirements for New IR Engagements](DFIR-Resilient.md#Logging-Requirements-for-New-IR-Engagements) section from Resilient page,
	- update existing Resilient ticket with additional details obtained during Triage and Scoping Call,
	- paste "Triage and Scoping Call Summary Note" which was sent to a Client to a Notes section in Resilient.

It is important to note, that every triage call MUST be fully documented in the Resilient, regardless final decision whether XFIR was engaged or not. 

## Phases of a Triage and Scoping Call
To address Triage and Scoping goals listed in the [Introduction](#Introduction), a call has been dived into several phases listed below. Below points should be treated as a **script** for running a Call:
1. Introduction:
	1. introduce XFIR participants,
	2. Ask Client to introduce his team together with their roles,
	3. If XFIR was engaged over the Hotline, on-call person provides a quick summary of a current XFIR understanding of a case.
	4. If applicable, perform hand over from on-call person to a designated Triage Call Lead.
	5. Determine/clarify whether it is an existing Vision Retainer subscription Client or Ad-hoc.
2. Discovery:
	1. Client provides incident description. Ensure that during discussion you identify most important topics, such as: 
		- how it was detected,
		- number, type, role of systems impacted:
			- physical or VMs,
			- server or endpoints
			- Windows or Linux or MAC
			- server functions and software used: web servers, domain controllers, database, etc.
			- access/exposure to Internet/LAN: direct Internet exposure, over Firewall/IPS, proxy/reverse proxy, no Internet access, etc.
		- number and type of accounts compromised: workstation user, local admin, domain/enterprise admin, service account, root, etc.
		- sensitivity/criticality of data stored on affected systems, backups policy and availability,
		- are there any security solutions used within affected environment, like AV, EDR, etc.
		- is there any centralized logs collection or SIEM type solution? if so which logs from affected systems were collected?
		- business impact,
 		- what kind of artifacts were already found,
 		- status of digital evidence collection: are there any electronic evidence already collected? if so, what tools were used? do they have necessary equipment/knowledge to perform it on their own or need assistance? etc.
		- containment and remediation steps already performed, eg. system isolation, shutting down, VM snapshoot taken, 
		- other relevant actions performed.
	2. Open floor for a questions from XFIR Consultants so they can get better understanding of the incident.
3. Identification of Client's objectives and expectations: 
	- what is needed to perform a successful delivery,
	- what type of task Client has for XFIR: full IR, dead box Forensic, EDR deployment, logs analysis, etc.
	- what is expected in terms of XFIR availability: on-site or remote, 8x5, 8x7 or 24/7, etc.
4. Presentation of XFIR approach and solution:
	- what we can offer to address Client goals and expectations,
	- discuss available solutions, eg. full blown forensics, triage systems, deploying EDR, search for candidates for full forensics, etc.
	- take into account business constraints from Client, as most probably they want to be back in operations as soon as possible - try to propose solution addressing this demand as well as providing necessary level of security assurance,
	- provide initial/containment recommendation so Client can start immediately working on them, while XFIR set up working environment,
	-  if applicable, XFIR Consultants can propose changes to a Client approach and expectations, explaining what would be the benefits from a change,
	- review approach proposed by XFIR against Client expectations, maybe Client wants to update their expectations/objectives for XFIR - agree on next steps.
5. Closing:
	- Establish regular cadence or at lest next meeting point for status updates.
	- Read following statement: *Thank you very much for participant in this Triage and Scoping Call. After this Call \<We/I\> will prepare a "Triage and Scoping Call Note".  It will be shared via mail with you, as well as your Incident Declarers listed in our database. The note will contain, in writing, most important outcomes of this Call, such as: incident summary, goals and expectations for XFIR, next steps agreed upon and approximation number of hours needed to deliver agreed tasks. To proceed further an Incident Declarer from your side MUST respond to this mail and state that he/she agrees with a content of the note and authorities our team to start work as described in the mail. Without such an approval in writing, NO further investigative actions will be performed by our team.*


## Triage and Scoping Call Summary Note and Mail
Triage and Scoping Call Summary Note and Mail is a hard evidence on what was discussed during a call. It is a crucial outcome from the beginning of our engagement and should be prepared with necessary care. The role of the Note is to:
 - **capture Triage and Scoping Call content** - ensure that discussed topics are documented in writing and not lost,
 - **populate Resilient ticket** - simply include this note to Resilient ticket, as it contains most of necessary information (just add remaining ones - detailed requirements of logging Resilient tickets are [here](DFIR-Resilient.md#Logging-Requirements-for-New-IR-Engagements).
 - **allow for a smooth transition** - proper documentation is necessary to allow case/geography handover of the incident or Follow the Sun for IR,
 - **ensure common understanding with Client** - protect against "we agreed/understood this differently" problem with Clients, as we explicitly require customer to acknowledge the content of the note containing what was discussed and agreed as well as predicted scope expressed in hours.

Every Triage and Scoping Call Summary Note and Mail must contains sections defined below. Each section should contain several **key** points. It is not necessary to document every single sentence, as it is not a transcript of the Call. A common sense is necessary from author of the Note (we do not want Client to wait 12h for a note to be prepared). While preparing a Note, prepare it in a way that a person receiving it would be able to pick up incident either totally without out or with very limited need to communicate with people present on Triage and Scoping Call. The sections are as following:
1. XFIR understanding of the incident
2. Expectations and goals for XFIR
	- what client wants us to do and what we agreed upon.
3. Next steps proposed by XFIR
	- the intention of this point is to document what we have recommended as IR steps, to avoid address future conflicts, such as "you recommended this and that" or "you have not recommended" this action, and who is their owner (not actions tracker, but rather high level view of what to expect next from whom)
	- agreed cadence - when is next meeting,
4. Subscription hours status (not applicable to Ad-hoc engagements):
	- number of hours left from subscription and their expiry date,
	- if applicable, notify Client that number of hours may not be sufficient and contractual discussions needs to be started,
	- guidance how to check number of hours left can be found [here](DFIR-Resilient.md#Tracking-Subscriptions-Hours-Usage).
5. Estimated cost (in hours) of planned XFIR work. 

Few additional statements are necessary, to avoid any misunderstandings and clearly set up expectations. For this reason, please use below Triage and Scoping Call Summary Mail template and do not compose a note yourself. Template represents Phases of the Call documented above, thus should be easy to populate. Please make sure to fill in all fields and remove comments and unrelated statements.
`------------ BEGINNING OF A TEMPLATE ------------ `
**Mail subcject:** `<Client Name>` Triage and Scoping Call Summary Note for XFIR case IR`<YY-NNNN>`
**Mail body:**
Dear `<Client Name>`,

Thank you very much for participation in the Triage and Scoping Call. We would like to summarize our discussion with a Note presented below. Then intention of this Note is to ensure that all crucial information are captured and documented and we have a common understanding of this incident.

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

**Status of your subscription hours:**
You currently have `<XYZ>` subscription hours left, valid till `<DD Month YYYY>`.

`<In case of a non-severe incident, when you can estimate effort, please use following statement. Do not use it for big incidents, with an "open bucket" for hours usage.>`
Based on information document above, XFIR initial estimation of number of hours necessary to deliver tasks listed above is `<XYZ>`. This number may change with any change in the scope of XFIR work or based on investigation findings. Any change in number of estimated hours will be consulted to obtain your approval.

`<In case of significant incident, when it is impossible to estimate hours used, please use following statement.>`
At this stage, due to size and scope of incident you are facing, it is not possible to provide even an approximate value of hours necessary to deliver tasks defined for our team. For this reason, we can offer a weekly (or based on other frequency you prefer) reports containing details about current hours usage so you can manage the cost of this investigation. 

`<This is a final statement, make sure it is included. For Ad-hocs replace requirements to acknowledge by Incident Declarer to acknowledge by anyone from recipients.>`
IMPORTANT: To proceed further and engage XFIR for this incident, one of your representatives designated as "Incident Declarer" in our database, MUST reply to this mail acknowledging content of the Triage and Scoping Call Note as well as approving subscription hours usage. If you disagree with any of the points in the mail or it anything was misunderstood, please let us know, so we can work on clarification.
`------------ END OF A TEMPLATE ------------ `

Important points:
- do not use XX.YY.ZZZZ date format, as it can be confusing due to differences between American and European notation with day and month values swapped in places,
- even if Client decides to do not engage our team, it is still necessary to prepare the note (without predefined statements for a client) and pasting it to a Resilient as a trace from a Triage and Scoping Call.
- if number of estimated hours necessary for this engagement exceeds or is close to number of subscription hours left, then consider initiating commercial discussion, following same approach as for [Ad-hoc requests](#Ad-hoc-Assistance-Request).

Depending on the Client answer, potential next steps are:
1. XFIR gets engaged:
	- start [IR Spin-Up Process](DFIR-SpinUp.md),
	- populate "Owner/Engagement Lead" and "Members" fields accordingly in Resilient.
2. XFIR is not engage:
	- upload Triage and Scoping Call Summary Note to Resilient,
	- upload evidence with Client decision to do not engage to Notes section in Resilient ticket,
	- close ticket with "Not Engaged" resolution. 

If there is no response for 24 hours, then send a follow up mail or make a call.

## Claiming
XFIR service is build in such a way, that anyone can request assistance, mainly by calling Hotline. Triage and Scoping Call is offered free of charge irrespective of having subscription or not. It is not possible to provide claiming for all Triage participants. Only Triage Call Lead should:
- book 1 hour as "Telephone Triage", "not against subscription" in this Engagement ticket in Resilient,
- claim 1 hour as "general billable" against the workID

## Ad-hoc Assistance Request
To process commercials of the Ad-hoc IR request, as a temporary solution, reach out to designated ops manager from your geography:
* APAC: Amanda Nelson (anelson@au1.ibm.com), backup: Stephen Burmester (sburmester@au1.ibm.com)
* EMEA: NEil Jones (NEILJONE@uk.ibm.com), backup: Adam Harrison (Adam.MJ.Harrison@ibm.com)
* NA: Phil Harrold (rpharrol@us.ibm.com), backup: Kurt Rohrbacher (Kurt.Rohrbacher@ibm.com)