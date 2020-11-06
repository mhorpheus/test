

# XFIR Global Triage and Scoping Call Procedures

## Table of Contents

 1. [**Introduction**](#Introduction)
 2. [**Organizing a Triage and Scoping Call**](#Organizing-a-Triage-and-Scoping-Call)
	- [X-Force IR Representatives](#X-Force-IR-Representatives)
3. [**Responsibilities of a Triage Call Lead**](#Responsibilities-of-a-Triage-Call-Lead)
4. [**Phases of a Triage and Scoping Call**](#Phases-of-a-Triage-and-Scoping-Call)
6. [**Triage and Scoping Call Summary Note**](#Triage-and-Scoping-Call-Summary-Note)
7. [**Claiming**](#Claiming)
 5. [**Ad-hoc Assistance Request**](#Ad-hoc-Assistance-Request)

## Introduction
The purpose of this page is to document the XFIR Triage and Scoping Call procedure. The following documentation is a guideline for XFIR consultants for XFIR Triage and Scoping call procedures and is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](Home.md)).

A dedicated Triage and Scoping Call must be conducted for each assistance request received by X-Force IR. The intention of such a call is:
- get necessary understanding of the incident Client is facing,
- evaluate scope of he incident,
- determine type of assistance requested by a Client, eg.:
	- full IR support or maybe just forensics analysis,
	- on-site or remote assistance or mixed approach,
- determine necessary effort from X-Force IR.

A Triage and Scoping Call most often (but is not limited to) originates from:
- a call to X-Force IR Hotline,
- a direct contact from a Client to X-Force IR Consultant he/she has relationship with,
- a direct contact from IBM employees aware that Client is facing a security incident.

## Organizing a Triage and Scoping Call
X-Force IR is contractually obliged to organize a Triage and Scoping Call and meet defined SLA. The value of SLA depends on the type of the subscription. Default values are presented below (but there are exceptions documented in Resilient Client ticket):
- Legacy Emergency Response Service (ERS) subscriptions – 1 hour
- Vision Retainer Tier 2 and Tier 3 – 1 hour
- Vision Retainer Tier 1 – 4 hours.

When scheduling a Triage call, it is recommended to provide at least 30 minutes between the hotline call and the Triage call to allow all participants to prepare.

A Triage and Scoping Call should be explicitly set up by X-Force IR Consultants, to ensure that X-Force IR owns and holds full control of the Triage. For this reason:
- do not join already ongoing calls and always set up dedicated Triage and Scoping Call,
- if possible avoid using Client's or 3rd party teleconferencing bridges, due inability to control participants,
- do not use personal Webex links, but create a one-time Webex meeting,
Joining ongoing calls pose a significant risk, that X-Force IR would not be driving the call, but will just be one of many parties involved and important topics related to security incident may be lost in discussions among big group of participants. 

If a Triage and Scoping Call originates from a Hotline Call, then on-call person who picked up a call is responsible to:
1. ensure that X-Force IR is represented by required people (see Section [Roles of Participants](#Roles-of-Participants)),
2. set up a call, by sending meeting invite to necessary participants,
3. initiate a Call:
	- open teleconference bridge and join the call,
	- provide a quick summary of a current XFIR understanding of a case,
	- introduce X-Force IR members present on the call, clearly marking who would be leading the call.
The intention of this approach, is to ensure continuity of the contact with a Client, however on-call person is not responsible for running a Triage and Scoping Call. This means, that after completing actions listed above, on-call person is not required to participate further in the call and can drop off, unless has been assigned any of the roles described in the Section [Roles of Participants](#Roles-of-Participants).

Use `ir-triage-scoping` Slack channel to coordinate Triage and Scoping Call organization and discuss any topics related to that case. Please keep in mind, that `ir-hotline` Slack channel, should not be used to discuss case related topics. 

### X-Force IR Representatives
Roles of participants from X-Force IR during Triage and Scoping Call can be defines as following:
- **Senior Consultant** (required) - responsible for maintaining necessary quality of whole Triage and Scoping process. Can be Functional Lead, Manager, Geography Lead or other person considered by Leadership as Senior Consultant with sufficient experience.
- **Triage Call Lead** (required) - responsible tun run a call and Triage and Incident.
- **Special Matter Expert (SME)** (optional) - Consultant required to provide assistance in with his specific experience/knowledge/technology. 
- **Assigned Consultants** (optional) - ones who will be working on this engagement
- **Junior** or **Newcommer** (optional) - To build expertise of Junior Consultants or to share our approach for running Triage Calls with new team members.

It is not required to represent all above roles, as it should be decided on the case by case basis. *Senior Consultant* may lead the call holding *Triage Call Lead* role. Alternatively, *Senior Consultant* may be present on the call just to support or shadow other Consultant who would perform a role of a *Triage Call Lead*. Additionally, Triage Call Lead should not be mistaken with a Incident Response Lead for this particular case, as it is possible that such person was not yet designated before Triage and Scoping call.

Only necessary people should be invited to a Triage and Scoping Call, to avoid over-representation of X-Force IR team, which could overwhelm Client. 

Identification of individuals to represent necessary roles during Triage and Scoping Call can be performed according to one of the scenarios:
1. The person who received a trigger for a Triage and Scoping call is capable of running a call on his/her own being a Senior Consultant as well as has necessary availability. A trigger can be a Hotline call or any other contact requesting X-Force IR assistance.
2. `ir-triage-scoping` Slack channel can be used to query for volunteers willing to support Triage and Scoping Call as well as SMEs if necessary
3. In absence of volunteers, anyone from Leads team (Team Leads, Functional Leads or Geography Leads) should be contacted to help to designate people supporting Triage and Scoping Call.

## Responsibilities of a Triage Call Lead
Triage Call Lead (as defined [here](#Roles-of-Participants)) responsibilities are as follows:
- leading Triage and Scoping Call,
- taking notes or designating note taking person,
- preparing [Triage and Scoping Call Summary Note](#Triage-and-Scoping-Call-Summary-Note)
	- sending "Triage and Scoping Call Summary Note" to Client representatives present on a Triage and Scoping Call as well as all Incident Declarers listed in Resilient. Point to respective guides from Resilient.
- ensuring that incident details and Triage call outcome is recorded in Resilient:
	- if there is no ticket, create a new one following guidelines from [Logging Requirements for New IR Engagements](DFIR-Resilient.md#Logging-Requirements-for-New-IR-Engagements) section from Resilient page,
	- update Resilient ticket with additional details obtained during Triage and Scoping Call,
	- paste "Triage and Scoping Call Summary Note" which was sent to a Client to a Notes section in Resilient

It is important to note, that every triage call MUST be fully documented in the Resilient, regardless final decision whether X-Force IR was engaged or not. 

## Phases of a Triage and Scoping Call
To address Triage and Scoping goals listed in the [Introduction](#Introduction), a call has been dived into several phases. Below points should be treated as a **script** for running a Call:
1. Introduction:
	1. if necessary perform hand over from on-call person to a Triage Call Lead if necessary,
	2. introduce XFIR participants,
	3. ask Client to introduce his team together with their roles,
	4. if XFIR was engaged over the Hotline, on-call person provides a quick summary of a current XFIR understanding of a case.
2. Discovery:
	1. Client provides incident description - identify most important topics, such as: 
		- how it was detected,
		- number, type, role of systems impacted: servers, endpoints, windows, Linux, web servers, domain controllers, etc.
		- number and type of accounts compromised: workstation user, local admin, domain/enterprise admin, root, etc.
		- business impact,
 		- what kind of artefacts were already found,
		- containment and remediation steps already performed.
	2. Open floor for a questions from XFIR Consultants so they can get better understanding of the incident.
3. Identification of Client's objectives and expectations: 
	- what is needed to perform a successful delivery,
	- what type of task Client has for XFIR: full IR, dead box Forensic, logs analysis, etc.
	- what is expected in terms of XFIR availability: on-site or remote, 8x5, 8x7 or 24/7, etc.
4. Presentation of XFIR solution:
	- what we can offer to address Client goals and expectations,
	- discuss available solutions, eg. full blown forensics, triage systems, deploying EDR, search for candidates for full forensics
	- take into account business constraints from Client, as most probably they want to back in operations as soon as possible - try to propose solution addressing this demand as well as providing necessary level of security assurance,
	- provide initial/containment recommendation which Client can start immediately working on, while XFIR set up working environment,
	-  if applicable, XFIR Consultants can propose changes to a Client approach and expectations, explaining what would be the benefits
	- review approach proposed by XFIR against Client expectations, maybe Client wants to update their expectations/objectives for XFIR - agree on next steps.
5. Closing:
	- Agree on teleconference/communications cadence.
	- Read following statement: *Thank you very much for participant in this Triage and Scoping Call. After this call We/I will prepare a "Triage and Scoping Call Note".  It will be shared via mail with you, as well as your Incident Declarers listed in our database. The note will contain, in writing, most important outcomes of this Call, such as: incident summary, goals and expectations for X-Force IR, next steps agreed upon and approximation number of hours needed to deliver agreed tasks. To proceed further an Incident Declarer from your side MUST respond to this mail and state that he/she agrees with a content of the note and authorities our team to start work described as in the mail. Without such approval in writing, NO further investigative actions will be performed by our team.*


## Triage and Scoping Call Summary Note
Triage and Scoping Call Summary Note is a an evidence on what was discussed during a call. It is a crucial outcome from the beginning of our engagement and should be prepared with necessary care. The role of the Note is to:
 - **capture Triage and Scoping Call content** - ensure that discussed topics are documented in writing and not lost,
 - **populate Resilient ticket** - simply include this note to Resilient ticket, as it contains most of necessary information (just add remaining ones, detailed requirements of logging Resilieint tickets are [here](DFIR-Resilient.md#Logging-Requirements-for-New-IR-Engagements).
 - **allow for a smooth transition** - proper documentation is necessary to allow case/geography handover of the incident or Follow the Sun for IR,
 - **ensure common understanding with Client** - protect against "we agreed/understood this differently" problem with Clients, as we explicitly require customer to acknowledge the content of the note containing what was discussed and agreed as well as predicted scope expressed in hours.

Every Triage and Scoping Call Summary Note must contains sections defined below. Each section should contain several **key** points. It is not necessary to document every single sentence, as it is not a transcript of the Call. A common sense is necessary from author of the Note. While preparing a Note, prepare it in a way that a person receiving it would be able to pick up incident either totally without out or with very limited need to communicate with people present on Triage and Scoping Call. The sections are as following:
1. Key contact points.
	- both from Client and XFIR side (eg. Case Lead)
2. X-Force IR understanding of the incident
3. Expectations and goals for X-Force IR
	- what client wants us to do and what we agreed upon
4. Next steps proposed by X-Force IR
	- the intention of this point is to document what we recommended as IR steps, to avoid address future conflicts, such as "you recommended this and that" or "you have not recommended" something, and who is their owner (not actions tracker, but rather high level view of what to expect next from whom)
	- agreed cadence - when is next meeting,
5. Subscription hours status (not applicable to Ad-hoc engagements):
	- number of hours left from subscription and their expiry date,
	- if applicable, notify Client that number of hours may not be sufficient and contractual discussions needs to be started.
6. Estimated cost (in hours) of planned XFIR work. 

Few additional statements are necessary, to avoid any misunderstandings and clearly set up expectations. 

Please use below Triage and Scoping Call Summary Note template and do not compose a note yourself. 

TEMPLATE START
Dear Client Name


TEMPLATE END

Use below template to c

- Approximation of number of hours needed.
	- TODO: a clear (predefined) statement is needed to have proper working around the fact that this is 
		- approximate value
		- for a listed set of tasks (to avoid it open)
		- can change if the scope changes
- Clear statement, that for X-Force IR to proceed, we need an Incident Declarer to ACK that mail to:
	- ensure that we have not lost anything
	- avoid any misunderstandings or "games" from a Client side
	- receive green light to engage from Incident Declarer
This can be nicely templates, including all key statements, so just bullet points need to be populated. Also include case number as a reference in the mail body and topic.

Depending on the Client answer, potential next steps are:
1. Engaged - start Spin up process.
2. Do not engage - upload evidence with Client decision to do not engage to Notes section in Resilient ticket and close ticket with "Not Engaged" resolution. 
If there is no response for 24 hours, then send a follow up mail or make a call.

## Claiming
X-Force IR service is build in such a way, that anyone can request assistance, mainly by calling Hotline. Triage is offered free of charge irrespective of having subscription or not. It is not possible to provide claiming for all Triage participants. Only Triage Call Lead should claim 1 hour "not against subscription" in this Engagement ticket.

## Ad-hoc Assistance Request
To process commercials of the Ad-hoc IR request, as a temporary solution, reach out to designated ops manager from your geography:
* APAC: Amanda Nelson (anelson@au1.ibm.com), backup: Stephen Burmester (sburmester@au1.ibm.com)
* EMEA: NEil Jones (NEILJONE@uk.ibm.com), backup: Adam Harrison (Adam.MJ.Harrison@ibm.com)
* NA: Phil Harrold (rpharrol@us.ibm.com), backup: Kurt Rohrbacher (Kurt.Rohrbacher@ibm.com)

# OLD DOCUMENT 

### General Triage and Scoping Guidelines
To best help the client with their requests, a Team-Lead, Manager, or senior member of the team should be present on the call to help answer questions about our services and how they can be used. Additionally, having a senior member of the team available is important for properly scoping the incident and mapping that to our availability.

In general try to keep the Triage/Scoping call staffed with minimum required XFIR team members needed as to not overwhelm the client or tie up too many resources from the XFIR side. 

 - Required outputs from Triage/Scoping calls:
	 - Update Resilient Triage Worksheet
	 - Update Resilient Notes
	 - Did the client engage XFIR?
		- **Yes**	>> Begin the [IR Spin-Up Process](DFIR-SpinUp.md)
		- **No**	>> Follow the [Resilient Ticketing Procedures](DFIR-Resilient.md) for closing the ticket
	- Client Follow up
	
During the Triage/Scoping call, the XFIR team participating should identify someone to take detailed notes. It is also highly recommended to fill out the Resilient Hotline Triage Worksheet during the call while the details are fresh. If the client is engaging XFIR for incident response services, an XFIR member can begin the [IR Spin-Up Process](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR-SpinUp). 

Regardless of the engagement status, at the conclusion of the Triage/Scoping call the Resilient ticket needs to be updated with the relevant engagement information, or the Hotline Triage Ticket should be closed. Please see the [Resilient Ticketing Procedures](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR-Resilient) for more information.

### Conducting Triage and Scoping Calls
While conducting the Triage/Scoping call keep in mind the client's point of view. They could be experiencing their worst day and tensions could be high. It is important to get the facts and as much detail as possible. Identify someone to run the call and someone to take notes. It is also good practice to fill out the Triage Worksheet on the Resilient ticket during the call. 

Some things to consider:

 - What actions has the client taken within their environment or with the affected systems thus far?
 - Has the client properly secured the data required for analysis?
 - Does the client need onsite support?
 - What are the goals of the engagement?
 - Is the client Ad-hoc? Will the work require the client to sign a Statement of Work (SOW)?
 - Will the engagement require a Project Change Request (PCR) for additional hours?
 - Who will be the client POCs for the engagement?
 - It is recommended to establish a regular cadence for status updates

Take all of the relevant information and provide options for next steps. If the goals of the engagement are well defined and agreed upon, inform the client that XFIR will follow up in an email with a summary of the engagement goals and the agreed upon next steps. This will give the XFIR team involved time to properly estimate the number of hours required and the availability of resources. 

## Post Triage and Scoping Procedures
Following the Triage/Scoping call, there are some follow up activities that should be handled as soon as possible. If the client decided not to engage us, the Resilient ticket, Triage worksheet, and Notes should be filled out and the Hotline Triage ticket should be closed. The notes should include as much detail as possible about the client and the incident in the case that they decided to call us back or engage us at a later time. Please see the [Resilient Ticketing Procedures](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR-Resilient) for more information on closing tickets.

If the client has decided to engage XFIR for incident response services, it is the responsibility of the Team-Lead/Manager who was present on the Triage/Scoping call to work with other Leads/Managers  properly estimate the required number of hours XFIR will need to support the engagement. As well as identifying the available XFIR members who can support the engagement regionally as well as globally if needed.

Once the resources have been aligned and the estimated hours are determined, the XFIR team member who ran the Triage/Scoping call will follow up with the client and provide the following:

 - Summary of the Triage/Scoping call
 - Engagement goals as defined during the Triage/Scoping call
 - Next steps including tasks that are take-aways from the Triage/Scoping call
 - Estimate of initial hours required to support the IR engagement
	 - If the client has a retainer request approval from a designated `Incident Declarer`
	 - If the client is AdHoc request written agreement to the scope and estimate

*Note: If the client is AdHoc work with leadership to get the Statement of Work (SOW) process initiated once the client has agreed to the estimated hours.*

Once the client has agreed in writing (usually via email reply), the Engagement Lead or other XFIR stakeholder can begin the [IR Spin-Up Process](https://github.ibm.com/XFIR/DFIR-wiki/wiki/DFIR-SpinUp). Once XFIR has staffed the engagement the `Owner/Manager` and `Engagement Leads/Members` can be edited to reflect the assigned resources.
