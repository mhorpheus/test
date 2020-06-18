

# IRIS Global Hotline Rotation and Procedures

## Table of Contents
**TO BE UPDATED**

 1. **[Hotline](#hotline)**
	- [Introduction](#introduction)
	- [Regional Numbers](#regional-numbers)
 2. **[Follow the Sun for Incident Intake](#Follow-the-Sun-for-Incident-Intake)**
	- [Concept description](#Concept-description)
	- [On-call Shifts Schedule](#On-call-Shifts-Schedule)
 3. **[Hotline Operations](#Hotline-Operations)**
	- [On-Call Person Responsibilities](#On-Call-Person-Responsibilities)
	- [Answering Hotline Call](#Answering-Hotline-Call)
	- [Processing Hotline Call](#Processing-Hotline-Call)
	- [Logging Hotline Call](#Logging-Hotline-Call)
	- [Shift Turnover](#Shift-Turnover)
	- [Determining Geography Owning the Incident](#Determining-Geography-Owning-the-Incident)
	- [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography)
4. **[Ad-hoc IR Requests](#Ad-hoc-IR-Requests)**
5. **[CSIRT](#CSIRT)**

## Hotline
### Introduction

The purpose of this page is to document the IRIS Hotline procedures both generically and as they pertain to Incident Response in-bounds from the Hotline.

X-Force IRIS maintains several hotline numbers in different geographies - they are used by Clients to declare a security incident and request emergency assistance. Such call, denoted as "initial call" is used to gather basic understanding of an incident as well as customer details so a Triage and Scoping call can proceed, resulting in an investigation being launched. IRIS uses a 24/7 availability, Follow the Sun Emergency Hotline. Using IRIS Hotline, Clients can reach a technical member of the IRIS team day or night if they are experiencing an incident. This is one of the main avenues our clients use to engage IRIS and in some cases this is the Client's first impression of our organization. It is important for us to remain professional and have tested procedures for handling incoming hotline calls.

Hotline numbers are publicly available in the Internet. Additionally, non-subscription customers can call the hotline and request assistance in "Ad-hoc" approach. Requesting assistance through a Hotline call is the only correct and reliable way to receive emergency assistance. 

The following documentation is a guideline for IRIS consultants for IRIS Hotline procedures and is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/Home.md)).

### Regional Numbers
IRIS maintains several hotline numbers for multiple countries. Due to history of integration, four main regions maintaining their local hotline numbers, delivered by different telecommunication providers. With introduction of [Follow the Sun] for incident intake, all except Japan, have been integrated and now lead to the same on-call person. 

Please use the following tables to identify individual regional/country hotline numbers. The list is also available in the form of PDF [Leaflet](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/DFIR/IBM%20X-Force%20IRIS%20Hotline%20Numbers.pdf) to be shared with a customer.

#### Asia & Pacific (APAC)
| Country/Region | Emergency Number |
|--|--|
| Australia | (+61) 1800 637 539 |
| Philippines | (+63) 1800 1611 0322 |
| Thailand | (+66) 1800 011 806 |
| New Zealand | (+64) 0800 426 111 |
| Malaysia | (+60) 1800 818 276 |
| Singapore | (+65) 800 616 7095 |
| India | (+91) 0008 000 401 045 |
| Indonesia | (+62) 00 180 361 859 |
___

#### Europe, Middle East, & Africa (EMEA)
| Country/Region | Emergency Number |
|--|--|
| Denmark | (+45) 4331 4987 |
| Finland | (+358) 972 522 099 |
| France | (+33) 157 327 272 |
| Germany | (+49) 693 8079 1120 |
| Italy | (+39) 029 995 3631 |
| Latvia | (+371) 66 163 849 |
| Netherlands | (+31) 707 709 351 |
| Norway | (+47) 23 024 798 |
| Poland | (+48) 223 062 234 |
| Portugal | (+351) 213 665 622 |
| Spain | (+34) 910 507 799 |
| Sweden | (+46) 850 252 313 |
| Switzerland | (+41) 227 614 228 |
| United Kingdom | (+44) 203 684 4872 |
| UAE | (+971)80 004 442 417 |
| Saudi Arabia (Landline) | (+966) 800 844 3872 |
| Saudi Arabia (Mobile) | (+966) 800 850 0399 |
___

#### North America (NA)
| Country/Region | Emergency Number |
|--|--|
| United States & Canada | (+1) 888 241 9812 |
| World Wide Number | (+1) 312 212 8034 |
___

#### Latin America (LATAM)
| Country/Region | Emergency Number |
|--|--|
| World Wide Number | (+1) 312 212 8034 |
___

#### JAPAN Region
| Country/Region | Emergency Number |
|--|--|
| Japan | (+81) 356 952 751 |
___

## Follow the Sun for Incident Intake

### Concept description
Three main regions maintain almost all hostline numbers: Asia Pacific, EMEA and North America. To provide a unified, standardized approach and to avoid the need for IRIS team members to work outside business hours, a Follow the Sun model is employed. In this approach, 24 hours are divided into three 8-hour shifts. Each shift is allocated within business hours of the owning geography. All hotline calls from any of the three respective Geographies participating in Follow-the-Sun, are answered by the Geography currently on shift during those designated hours. This means, that call to any of the EMEA, North America or APAC number will reach out to the same person. 

South America do not have dedicated hotline numbers and use World Wide number, while their team do not participate in shifts. Japan operated independently and their hotline number will reach only team in Japan. 

This operations model **should not be mistaken** with **Follow the Sun Incident Response**, as it is only designed to provide 24/7 **Incident Intake**. The aim is to ensure that call is answered, registered and depending on the situation, initial IRIS support is initiated.

### On-call Shifts Schedule
Shift distribution among participating Geographies is presented in the table below:

| Geography | UTC Shift | Sub-Geography | Local summer time | Local winter time|
|--|:--:|--|:--:|:--:|
| APAC | 23:00-07:00 | Sydney | 10:00-18:00 | 09:00-17:00 |
| EMEA | 07:00-15:00 | UAE | 11:00-19:00 |11:00-19:00 |
| | | EU – Central | 09:00-17:00 | 08:00-16:00 |
| | | EU – UK | 08:00-16:00 | 07:00-15:00 |
| North America | 15:00-23:00 | EA | 11:00-19:00 | 10:00-18:00 |
| | | CT | 10:00-18:00 | 09:00-17:00 |
| | | MT | 09:00-17:00 | 08:00-16:00 |
| | | PST | 08:00-16:00 | 07:00-15:00 |

The Hotline rotation and call escalation paths for on call personnel on are maintained by PagerDuty system (https://ibm.pagerduty.com/). Account setup process together with technical guidelines are documented on [PagerDuty](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/DFIR-PagerDuty) page.

Shifts are allocated on a weekly basis - each cycle starts on Monday morning. Every new cycles is started by APAC team on Sunday 23:00 UTC. Each Geography is responsible on its own for ensuring that two on-call people are available to cover the assigned shift and are properly scheduled within call routing system. 

Shift assignment is done automatically by PagerDuty based on the Round Robin algorithm from a pool of people assigned to a shift. There is no process of building an on-call schedule according to everyone's preferences, as this would be too complex. For this reason, everyone is responsible themselves to check when they have been assigned a shift. If there is any collision with other activities, eg. customer travel, personal plans, holidays, etc. it's person responsibility to find someone to swap or raise a need for a backup to local geography lead. 

## Hotline Operations
Hotline is supported by a primary and secondary on-call person. This means, that PagerDuty will attempt to connect a caller with a Primary on-call person. If this person is not available or do not pick up a call within 60 secons, PagerDuty will redirect a call to a Secondary on call person. To provide additional failsafe, in the event that neither of is available or pick up a call, there is an option to leave voicemail.

Every member of IRIS who is tasked with Hotline duty should maintain their Pager Duty profile with the correct phone number, and be aware of their on-call rotation schedule. For additional information regarding PagerDuty go [here](#pager-duty).

Number of IRIS clients maintain a close business relationship with IRIS Consultants they already have worked with or who are their Account Managers. They tend to request IRIS assistance reaching out to this person, instead of calling Hotline. In such a case, IRIS Consultant should kindly push back on such a request and ask customer to follow official process and call IRIS Hotline. 

### On-Call Person Responsibilities
Both Primary and Secondary people on call are responsible for following activities during their shift:
- Picking up all hotline calls.
- Processing all Voice Messages for hotline calls which were not picked up by both Primary and Secondary on call person. If applicable, it's on-call person responsibility to attempt to reach out to the caller and perform “Initial call” discussion.
- Logging all hotline calls in Resilient according to the requirements described in [Logging Hotline Call](#Logging-Hotline-Call).
- Organizing triage calls for all new incidents if they fall within timeframe of the current shift. If they fall outside current shift, they either need to be handed over to next geography or planned for a next business day if this was agreed with a customer. 
- Performing a shift hand over with a following geography according to process described in [Shift Turnover](#Shift- Turnover).
- If applicable, performing an incident hand over to a following geography according to a process described in [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography).
- Providing support to a customer and performing initial IR steps, even if incident will be handed over to another Geography.

The main aim of the on-call person is be available to pick up and initiate IRIS response to all hotline calls. This means that on-call person:
- may be already working on other engagements, and even may not have availability to pick up any analysis,
- is not automatically assigned to all new incoming incidents originating from hotline call,
- is not responsible for allocating people to the incident, as this should be done by Geography Leads **(TO BE CLARIFIED),**
- **ANY OTHER HINTS?**

Responsibility to organize a Triage call, does not mean that on-call person must be present on such a call. Triage call may be led by other Consultant to make sure that on-call person remains available to pick up other incoming Hotline calls or ensure that Secondary person is available to answer them. 

Technical guide on handling Voice Messages left in Pager Duty is available [here](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/DFIR-PagerDuty). 

### Answering Hotline Call
The Hotline is one of the main ways our clients and non-clients alike engage us during an incident. In some cases this is the client or potential client's first impression of IRIS and it is important that we represent a unified professional atmosphere when conducting an initial Hotline call.

Be professional and courteous during all communications with clients in general. However, this cannot be stressed enough on the initial Hotline call. Often, the client is in a frantic state as they either just found out about a security issue they are experiencing, or they are having trouble containing an incident. This can be a very stressful time for the client and it is our duty to help guide them as trusted advisors when they reach out to us.

There are no hard and fast rules to greeting the caller on an initial in-bound hotline call. However, it is recommended to start with "IBM X-Force IRIS Hotline, This is `<Consultant>` how may I help you". There are many reasons why clients call the hotline. At the very minimum the following information should be captured:
- caller's contact details such as: name, title, phone, ~~email~~ (**SHALL WE ask for email? THIS IS ERROR PRONE FOR NON ENGLISH NATIONS)**,
- organization name (company name, if an IBMer is calling then who are they calling for?),
- reason for call (get as much detail as possible),
- identify appropriate next steps (Triage/Scoping Call, client needs more info, etc),
	- if applicable, determine clients availability for a Triage/Scoping Call.

It is essential to request contact details listed above at the beginning of the call, to ensure that caller can be reached in case phone connection gets broken. Spelling personal IBM email addresses to non-native English speakers is error prone and often creates delays related to spelling errors. For this reason, every geography maintains simple group mail addresses, which should be easy to provide to a caller over the phone allowing to engage into written communication. 

| Region | Main address | Additional aliases |
| -- | -- | -- |
| APAC | xfiris@au1.ibm.com |
| EMEA | emea_ers@uk.ibm.com |XFORCE_IRIS_EU@uk.ibm.com, XFORCE_IRIS_MEA@uk.ibm.com |
| NA | ?? |

One of the aims of the hotline call is to get basic understanding of the incident customer is dealing with. It is hard to define strict list of questions which should be answered by a caller, especially if this person is non technical. On-call person should use common sense and experience to gather necessary data. Some example questions which can be asked are:
- How incident was detected?
- What is the scope of incident, eg. number and type of systems affected?
- What is the business impact of this incident?
- Who owns and manages system within the scope of incident?

In most cases, the initial hotline call itself is not the appropriate venue for making recommendations about a service offering that aligns with what the client needs. Often the person calling the hotline is not a technical resource and doesn't have all of the information required to make that decision. It is highly recommended to schedule a Triage/Scoping call with the client and their technical team following the initial hotline call. For more information visit the [Triage and Scoping Procedures](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/DFIR-Triage-Scoping.md) page.

No case related information should be divulged to a caller just based upon the name the he/she claims. This is to prevent impersonation of clients by third parties such as journalists. Caller verification can be performed by calling the person back on a number held on record in Resilient or having them email from their corporate email address to confirm identity.

The aim of the hotline and on-call team is to support IBM clients in emergency situation. Consultant speaking with a Client should use own common sense and experience to judge whether discussed case is indeed emergency. Example of non-emergency case is: malware analysis request for an incident which was already contained and remediated by a customer. If it is not an emergency, then on-call person should gently push back such request and recommend Client to reach out to his IRIS Account Manager - case will be handled within regular business hours. In such a case, on-call person is still obliged to:
- create and fill in a Resilient ticket marked with `Hotline` tag **(TO BE CLARIFIED)**,
- notify Account Manager of this customer that such request was submitted to the hotline and pushed back,
- provide Resilient ticket number to the Account Manager.

### Processing Hotline Call

The `#iris-hotline-ic` Slack channel is for communicating with the broader team about hotline calls that are currently active and in progress. It is recommended to have notifications turned on for this Slack channel as important information about active Hotline & Triage calls are often posted here. The `#iris-hotline-ic` Slack channel is also a place where IRIS members who are participating in Hotline Triage call can post questions for the member of the IRIS team who is running call.

It is expected that initial determination will be made as to the nature of the call and whether the request is a legitimate concern that can be addressed by the IRIS Incident Response team, or should the caller be re-directed. For cases potentially within a scope of IBM CSIRT, see guidelines [below](#csirt). Should the call be a legitimate concern, even if the client is calling from outside of the responder’s responsible Geography, it is critical to ensure the engagement initiation process is commenced . 

One of the main reasons behind Follow the Sun for Incident Intake is to ensure healthy work-private life balance. For this reason, if current on-call person determines that the incident must be handed over to another Geography, waking up another team should only happen if this is necessary. Guidelines on determination who should own an incident are addressed in section [Determining Geography Owning the Incident](#Determining-Geography-Owning-the-Incident). Currently the on-call person is obliged to provide any kind of IR support to a customer, until the Geography which should take over the incident becomes available. The cross geography incident hand over is described in the section [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography) Even in GDPR constraint cases, the on-call person can provide significant support to a customer without accessing data he may not be allowed to (eg. NA person on-call who received a call from EU customer). Such activities can include, but are not limited to:
- issue recommendations on containment
- discuss what evidence should be collected
- provide evidence collection manuals
- support customer’s team in evidence collection
- prepare for delivery to team who will be taking over the incident. 

The following steps should be performed after the Initial call has completed.
1.	Log an incident ticket in Resilient. 
	- Section [Logging Hotline Call](#Logging-Hotline-Call) defines which fields must be filled in creating incident ticket. Empty or incomplete tickets are not acceptable.
	- Every genuine hotline call must be recorded in Resilient, including those where it is ultimately determined that IRIS support is not required. In such cases, the ticket can be closed immediately after the appropriate information has been completed. 
	- Requirements for logging wrong calls are described in [Logging Wrong Number Calls](#Logging-Wrong-Number-Calls)
2.	~~Locate the client in Resilient and verify whether the caller is listed as an authorized ‘Incident Declarer’, i.e. one of the nominated individuals who are authorized  to engage IRIS on behalf of the client.~~
	- ~~If the caller is not an incident declarer, the triage call may proceed but inform them IRIS will need to written permission of an incident declarer to officially engage IRIS.~~ 
3.	Evaluate whether incident can be handled by team being currently on call or needs to be handed over to another Geography.
	- If incident will be handled by currently on call team, notify everyone using `#iris-hotline-ic` Slack channel.
	- If incident needs to be handed over to another Geography, proceed with steps discussed in the section [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography).
4.	**Notify Leads? (TO BE DISCUSSED)**
5.	Schedule a triage call at the discretion of the client. Include in the meeting invitation the client, requested client’s personnel, and X-Force IRIS consultants that will be attending the call.
	- Current on-call should ensure that a consultant designated as Lead Consultant for this case is introduced to a customer, which can be done in a number of ways:
		- on-call person sends Triage call invite, and then on call introduces Lead Consultant for this case,
		- on-call person notified Client about designated Lead Consultant for this case, who then sets up Triage call and directly engage in work with Client.
	- If the caller is an existing IRIS retainer client, ensure to follow the appropriate Service Level Agreement (SLA) for the respective Vision Retainer tiers. If SLA is not defined, default SLAa are:
		- Legacy ERS subscriptions – 1 hour
		- Vision Retainer Tier 2 and Tier 3 – 1 hour
		- Vision Retainer Tier 1 – 4 hours.
	- When scheduling a triage call, try to provide at least 30 minutes between the hotline call and the triage call to allow IRIS team members to join the call. 
	- Where possible, avoid joining client bridges/teleconferences.
		- IRIS cannot control who attends client bridges – other security vendors may join the call and may not be announced.
		- It is challenging to conduct an efficient and thorough triage call if IRIS is not in control of the bridge.

Triage/Scoping call details are documented separately [here](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/DFIR-Triage-Scoping.md). On-call person should also keep in mind, that even if incident was classified to be handed over to other geography, IRIS is obliged to meet SLA for Triage call. This means, that current on-call person is still responsible to organize Triage call, before incident is handed over.

### Logging Hotline Call
Following fields must be populated while logging Hotline Initial Call:
- Engagement details tab:
	- Description:
		- a **brief** description of incident, eg. "A BEC in UK" or "Ransomware outbreak in the factory in Austria".
		- Do **not** use multi sentence/multi line descriptions. There are separate fields where you can add more text.
		- there is no need to add client name, as there is a separate field dedicated for it.
	- Engagement type: "IR" (usage of "FOR" tag has been discontinued, even for purely Forensics cases).
	- Region: Fill in with correct value.
	- Client: Client this incident is assigned to. For Ad-hoc incidents, a new Client ticket should to be created.
- Triage worksheet tab:
	- Contact information: details of person calling hotline, including phone number with international code.
	- Incident Details:
		- Discovery: how incident was discovered.
		- Date discovered: timestamp of a hotline call
		- Hotline quick notes: provide description of incident based on information from person calling hotline.
	- Expectations: Fill in what customer is asking for (eg. on-site, remote, IR, only forensics, what are the investigation goals, etc).
- Members tab:
	- Owner/Account manager: on call person receiving the call. The incident is owned by this person, unless it is handed over to someone else from same or other geography. This should not be account manager.
	- Members/Engagement Leads: Add Account manager person for this particular customer to ensure that he/she is informed about new engagement.
		- Add Account Manager to Members for awareness

Fill in remaining fields depending on availability of information.

### Logging Wrong Number Calls
Following fields must be populated while logging Wrong Number Call to the IRIS hotline:
- Engagement details tab:
	- Description: Enter “Wrong number”.
	- Engagement type: "Hotline".
- Triage worksheet tab:
	- Contact information
		- Caller phone: Phone number of caller
	- Incident Details
		- Date discovered: timestamp of a hotline call
		- Hotline quick notes: if available, brief description why it was classified as wrong call.


### Shift Turnover
The `#iris-shift-turnover` Slack channel is for communicating with the previous and next shift rotation personnel about action items that the next shift needs to be aware of and to facilitate turnover of cross-regional Hotline or Triage calls. At the end of every shift, the `Primary` on-call member should communicate any items of interest to the on-coming shift for awareness. If no calls are received during a shift, there should still be clear communication provided to that effect. It must be clearly communicated whether the following Geography is needed to take any action(s) in relation to events during the previous shift(s). A person taking over a shift, should also "check in" in `#iris-shift-turnover` channel to ensure continuous communications. The `#iris-shift-turnover` channel used to hand over shift, should not be confused with `#iris-hotline-ic` channel where a discussion about hotline cases is taking place.

At the end of an Incident Responder’s shift please ensure:
 - All voicemails have been responded to, which means that all `Incident` tickets in PagerDuty with Voice messages have been acted upon and closed to avoid any "leftovers".
 - Resilient tickets for all hotline calls have been created and populated with necessary data.
 - All created Resilient tickets have an owner (who will lead the investigation) assigned, to avoid tickets "hanging" on on-call person.
 - A hand-over with all necessary information, has been provided for the upcoming Geography.

If there is an active cross-regional IR engagement, summarize the status of that engagement and coordinate details within the specific engagement Slack channel. If members of the Hotline duty personnel are assisting with that effort to support Follow-the-Sun, make sure the on-coming members have access to the engagement Slack channel and supporting technology such as Box/Aspera folders, EDR console, forensic data, summary reports, etc.

### Determining Geography Owning the Incident
It is the responsibility of the on-call staff to determine which region should lead an engagement, with guidance and input from regional management if required. Beyond standard allocation rule based on time zone and team members availability, the following factors should be taken into consideration:
- Where is the client physically located and is there a potential requirement for IRIS staff presence on client premises?
- What is incident location (may not be same as main client location).
- Is there a specific language requirement (i.e. the client only speaks Spanish).
- Are there potential data handling considerations such as: GDPR, country laws that would dictate data is only viewable by a specific country citizen?
- Is the client requesting specific IRIS staff from a designated region due to relationship or account management responsibilities?
- Are there any client specific requirements documents in the Notes filed in client record in Resilient?

If it was decided that incident should be owned by another Geography (either by on-call person, or Engagement Lead) – a hand over process described below should be followed.

During whole lifecycle of incident, a primary person responsible for incident must be indicated via the “Members” – “Owner/Account manager” field within Resilient. After the initial call this would be on-call person. Later this would be a person dealing with a triage or lead IR Analyst.

### Incident Hand-Over to Another Geography
Usage of a single point for Incident Intake, may cause the need to hand over newly created incident to another Geography. Examples where this may be the case include:
- Initial call arrived at the end of on-call person shift and the time when triage call should be organized falls under shift of following Geography.
- It was decided that indecent need to be transferred for handling to another Geography.

In the event that it is immediately identified during the initial call that an incident will likely be handed over to another region it is recommended that the on-call person(s) make efforts to engage with the geography which will be assigned the incident in an effort to have them join the initial triage.

In the event that the incident has to be transferred to another Geography, which is currently not reachable (eg. transfer from EU to APAC), it should be temporarily handed over to next Geography who will hand it over to a destination team (eg. EU hand over to NA and NA hands it over to APAC). It should be clearly explained who an ultimate receiver of an incident should be.
Hand over process is defined as follows:
1.	Ensure that Resilient ticket contains all information already collected.
2.	Identify on-call representative of next Geography who will be picking up the incident to hand over.
3.	Reach out to identified person to brief him/her that there is a need for an incident hand over. This should be done using `#iris-shift-turnover` slack channel or directly contacting the person. Provide necessary information such as:
a.	Resilient ticket number.
b.	Case background.
c.	Clients's expectations.
d. Next steps to be performed by person taking it over.
e. If applicable, reference to related discussion on `#iris-hotline-ic`  Slack channel.
4.	Ensure that person taking over an incident acknowledges it and is comfortable with all information provided.
5.	Update Resilient “Members” tab -> “Owner/Account manager field” with name of person taking over an incident.

If the receiving person is not responsive over Slack one can attempt to call him directly and bring his attention to a slack discussion. It is the responsibility of a person handing over an incident to ensure that the receiver acknowledges receipt of an incident. Just leaving a slack message or dropping an email with details of the incident is unacceptable. PagerDuty contains two on-call schedules, so in the event that the primary on-call person is unavailable, the second on-call person should be engaged.

The receiving geography on-call person is responsible for raising this incident to his/her Engagement Lead for team resource allocation.


## Ad-hoc IR Requests
**CONTENT NEEDED**

## CSIRT
THIS SECTION CONTAINS CONTENT MOVED FROM OLD DOCUMENT - TO BE REVIEWED
### IBM CSIRT notification
When the IRIS team is actively working or is notified of an incident involving IBM-owned or managed systems, it is required that notification be given to the IBM CSIRT team. This direction has been given by the IBM CIO’s office and is required when IRIS becomes involved in an incident that may cause significant impact to IBM business in either operational, financial, client relationship, or reputation form.

A cybersecurity incident that is within scope of IBM CSIRT response and involvement is:

An incident where an IBM managed asset and/or IBM managed customer data and/or an IBM employee/contractor/vendor is involved or at the heart of a cybersecurity allegation or cybersecurity incident. A cybersecurity incident or cybersecurity allegation could involve an IBM Commercial Customer (Target, Sony, American Express, BNSF, etc.) or an IBM Internal Customer (Sametime, w3, Lotus Notes, etc.) 

Other types of incidents where IBM CSIRT should be notified:
- Loss or compromise of IBM intellectual property
- Loss or compromise of IBM employee personal information (PI)
- Loss or compromise of client information
- Loss or compromise of IBM Confidential information that is technical or scientific in nature
- Loss or compromise of personal productivity device (laptop, smartphone, etc.) or other media type (hard drive, USB, flash memory, tape) and contains data about IBM business and/or employees or information relating to IBM's clients
- Suspected or confirmed penetration of an IBM system
- Compromised IBM system
- IBM Web application defacement is in progress or has occurred
- Unauthorized access to an IBM system
- Suspicious IT activity on an IBM system

Examples of incidents requiring notification to CSIRT include:
- GTS Strategic Outsourcing (SO) team supporting client Y has a system found to contain unknown malware and the system is owned by the client but managed by IBM.
- A client calls IRIS to report an incident involving an IBM-owned and managed system containing customer data which has been found to have unknown account creations and other suspicious activity.

If any of the conditions is true, such incident should be handed over to IBM CSIRT. Handover process is defined in Section “CSIRT Engagement”.

### IBM CSIRT Notification Process
When it has been determined that an active IRIS incident, or notification of an incident, meets the requirements listed in the previous section, IBM IRIS will notify the IBM CSIRT team (numbers below). NOTE: If an incident involves an IBM SO account, notify the SO DPE/PE first that you will be making contact with the ICC to eliminate confusion about the role of CSIRT.

IRIS will make notification to the Incident Contact Center (ICC).
- Incident Contact Center: 1-877-842-8642
- International Toll Number: 1-506-646-4222
- VRU option to Call Center for North America: 1-888-426-4357
- Tie-Line: 696-4222

IBM IRIS will ensure the appropriate case details are shared with IBM CSIRT, at the time of notification, and discuss whether IBM CSIRT involvement is required. 

NOTE: In the case of an incident involving other IBM entities such as SO, MSS or others, IBM IRIS should notify them, in the absence of the client, of the need to involve the IBM CSIRT team and why.

### IBM CSIRT Involvment
If IBM CSIRT involvement in an incident is required, the IBM IRIS Engagement Lead and IBM CSIRT lead should discuss the best way to proceed with the investigation.  For example, in the case of an SO incident, this should involve a call with the account DPE, IRIS engagement lead, and IBM CSIRT lead to discuss the best way to work the case with the client and ensure continued progress towards resolution. 

When the IBM CSIRT team is involved, incidents can be worked in one of three ways depending on what is best for the client and IBM’s interests.
- IBM CSIRT may transition to leading the investigation and continuing the forensics and other tasks with the IBM internal team.  In this case, IBM CSIRT will excuse IBM IRIS from the investigation, take over communications and status, and provide necessary resources to complete the investigation. 
- IBM IRIS will continue to lead and work the investigation as normal, however, they will provide regular communication to the IBM CSIRT team on investigation progress and findings to ensure appropriate legal involvement and protection of IBM’s interests as required.
- IBM IRIS and IBM CSIRT will work jointly with resources conducting investigative tasks and regular status flowing through a designated focal point to the IBM team and client.  This focal point will be an engagement lead from IBM IRIS or IBM CSIRT as determined appropriate for the security incident.

### Authority
When CSIRT is involved, IRIS still represents the interests of the IRIS subscription / ad-hoc client. While IRIS and CSIRT will likely collaborate on the response, any and all incident response work should be approved by the IRIS client. Should the incident response work not be approved by the client and has been requested by CSIRT, CSIRT will be responsible for absorbing the cost of the analysis (Note: have written approval from CSIRT prior to performing any analysis where CSIRT will incur charges).
