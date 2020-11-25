

# XFIR Global Hotline Rotation and Procedures

## Table of Contents
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
	- [Shift Turnover](#Shift-Turnover)
	- [Determining Geography Owning the Incident](#Determining-Geography-Owning-the-Incident)
	- [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography)
4. **[Ad-hoc IR Requests](#Ad-hoc-IR-Requests)**
5. **[IBM CSIRT](#IBM-CSIRT)**

## Hotline
### Introduction

The purpose of this page is to explain the XFIR Hotline operations model and document procedures. Content of this page should be presented to every new XFIR team member as a part of onboarding process and preparation to support XFIR Hotline. This page is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](Home.md)).

XFIR maintains several hotline numbers in different geographies - they are used by XFIR Clients to declare an IT security incident and request XFIR assistance. Hotline call (denoted sometimes as "initial call") is used to gather basic understanding of an incident as well as Client's details so a Triage and Scoping Call can proceed, resulting in an investigation being launched. Using XFIR Hotline available 24/7, Clients can reach XFIR Consultant during both day and night if they are experiencing an incident. This is one of the main avenues our Clients use to engage XFIR and in some cases this is the Client's first impression of our organization. It is important for us to remain professional and have tested procedures for handling incoming Hotline calls.

Hotline numbers are publicly available in the Internet. Additionally, non-subscription Clients can call the XFIR Hotline and request assistance in "Ad-hoc" approach. Requesting assistance through a Hotline call is the only correct and reliable way to receive emergency assistance. 

Hotline Call handling should not me confused with a [Triage and Scoping Call](DFIR-Triage-Scoping.md), as each of them has different goals and follows different process.

### Regional Numbers
XFIR operates several Hotline numbers in multiple countries. In the past XFIR geographies operated independently, working on their own with different local telecommunication providers. Each geography was covering on their own full 24/7 period locally. With an introduction of [Follow the Sun for Incident Intake](#Follow-the-Sun-for-Incident-Intake), Hotline operation for all regions except Japan, have been integrated and unified and now lead to the same on-call person. 

Below tables list regional/country Hotline numbers. The list is also available in the form of PDF [Leaflet](DFIR/IBM%20X-Force%20IR%20Hotline%20Numbers.pdf) which can shared with a existing or potential Client.

#### Worldwide Hotline
- (+1) 312 212 8034
___
#### Asia & Pacific (APAC)
| Country/Region | Hotline Number |
|:--|:--|
| Australia | (+61) 1800 637 539 |
| Hong Kong | (+852) 800 900 704 |
| India | (+91) 0008 000 401 045 |
| Indonesia | (+62) 00 180 361 859 |
| Malaysia | (+60) 1800 818 276 |
| New Zealand | (+64) 0800 426 111 |
| Philippines | (+63) 1800 1611 0322 |
| Singapore | (+65) 800 616 7095 |
| Thailand | (+66) 1800 011 806 |
| Vietnam (Mobifone) | 121010013 |
| Vietnam (Viettel) | 12280435 |
| Vietnam (VNPT-I) | 120852208 |
___
#### Japan (staffed locally)
- (+81) 356 952 751 
___
#### Europe, Middle East, & Africa (EMEA)
| Country/Region | Hotline Number |
|:--|:--|
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
| Saudi Arabia (Landline) | (+966) 800 844 3872 |
| Saudi Arabia (Mobile) | (+966) 800 850 0399 |
| Spain | (+34) 910 507 799 |
| Sweden | (+46) 850 252 313 |
| Switzerland | (+41) 227 614 228 |
| United Arab Emirates | (+971)80 004 442 417 |
| United Kingdom | (+44) 203 684 4872 |
___
#### United States & Canada (North America)
- (+1) 888 241 9812
___
#### Latin America (LATAM)
- No dedicated number available. Please use [World Wide Number](#World-Wide-Number)
___

## Follow the Sun for Incident Intake

### Concept description
Three main regions maintain almost all Hotline numbers: APAC, EMEA and NA. To provide a unified, standardized approach and to avoid the need for XFIR team members to work outside business hours, a Follow the Sun model is employed. In this approach, 24 hours are divided into three 8-hour shifts. Each shift is allocated within business hours of the owning geography. All Hotline calls from any of the three respective Geographies participating in Follow the Sun, are answered by the Geography running a shift during those designated hours. This means, that call to any of the EMEA, North America or APAC number always will reach out to the same person at a given moment in time.

South America do not have dedicated Hotline numbers and use World Wide number, while their team do not participate in shifts. Japan operated independently and their Hotline number will reach only team in Japan. 

This operations model **should not be mistaken** with **Follow the Sun Incident Response**, as it is only designed to provide 24/7 **Incident Intake**. The aim is to ensure that call is answered, registered and depending on the situation, initial XFIR support is initiated.

### On-call Shifts Schedule
Shift distribution among participating Geographies is presented in the table below:

| Geography | UTC Shift | Sub-Geography | Local summer time | Local winter time|
|--|:--:|--|:--:|:--:|
| APAC | 23:00-07:00 | Sydney | 10:00-18:00 | 09:00-17:00 |
| EMEA | 07:00-15:00 | UAE | 11:00-19:00 |11:00-19:00 |
| | | EU – Central | 09:00-17:00 | 08:00-16:00 |
| | | EU – UK | 08:00-16:00 | 07:00-15:00 |
| North America | 15:00-23:00 | Eastern | 11:00-19:00 | 10:00-18:00 |
| | | Central | 10:00-18:00 | 09:00-17:00 |
| | | Mountain | 09:00-17:00 | 08:00-16:00 |
| | | Pacific | 08:00-16:00 | 07:00-15:00 |

The Hotline rotation and call escalation paths for on call personnel on are maintained by PagerDuty (PD) system (https://ibm.pagerduty.com/). Details documentation on how Hotline is operated by PD, how to use PD for handling calls together with other useful usage hints are documented on a separate [PagerDuty](DFIR-PagerDuty.md) page.

Shifts are allocated on a weekly basis - each cycle starts on Monday morning. Every new cycle is started by APAC team on Sunday 23:00 UTC. Each Geography is responsible on its own to ensure that two on-call people are available to cover assigned shift and are properly scheduled within call routing system. 

Shift assignment is done automatically by PagerDuty based on the Round Robin algorithm from a pool of people assigned to a shift. There is no process of building an on-call schedule according to everyone's preferences, as this would be too complex. For this reason, everyone is responsible themselves to check when they have been assigned a shift. If there is any collision with other activities, eg. Client travel, personal plans, holidays, etc. it's person responsibility to find someone to swap or raise a need for a backup to manager or geography leads. 

## Hotline Operations
Hotline is supported by a primary and secondary on-call person. This means, that PagerDuty will attempt to connect a caller with a primary on-call person. If this person is not available or don't pick up a call within 60 seconds, PagerDuty will redirect a call to a secondary on call person. To provide additional fail-safe, in the event that neither of them is available to pick up a call, there is an option to leave voicemail.

Every member of XFIR who is tasked with Hotline duty is obliged to set up his mobile phone and PagerDuty profile according to instruction provided [here](DFIR-PagerDuty.md#newcomer-on-boarding).

A number of XFIR Clients maintain a close business relationship with XFIR Consultants they already have worked with or who are their designated primary contact points. They tend to request XFIR assistance reaching out to this person, instead of calling Hotline. In such a case, XFIR Consultant should kindly push back on such a request and ask Client to follow official process and call XFIR Hotline. 

### On-Call Person Responsibilities
Both Primary and Secondary person on call are responsible for following activities during their shift:
- Picking up all Hotline calls.
- Processing all voice messages for Hotline calls which were not picked up by both Primary and Secondary on call person.
	- It's on-call person responsibility to attempt to reach out to the caller and perform “Initial call” discussion.
	- Technical guide on handling voice messages left in Pager Duty is available [here](DFIR-PagerDuty.md). 
- Logging Hotline calls in Resilient (see details in [Processing Hotline Call](#Processing-Hotline-Call) section)
- Organizing Triage and Scoping Call for all new incidents if they fall within time-frame of the current shift. If they fall outside current shift, they either need to be handed over to next geography or planned for a next business day if this was agreed with a Client. 
- Performing a shift hand over with a following geography according to process described in [Shift Turnover](#Shift-Turnover).
- If applicable, performing an incident hand over to a following geography according to a process described in [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography).

The main aim of the on-call person is be available to pick up and initiate XFIR response to all Hotline calls. This means that on-call person:
- may be already working on other engagements, and even may not have availability to pick up any analysis,
- is not automatically assigned to all new incoming incidents originating from Hotline call,
- is not responsible for allocating people to the incident, as this should be done by Leadership/Management of each Geography,
- is not responsible for leading the Triage and Scoping call, however is responsible for organising it.

Time spent on supporting Hotline can not be claimed as billable in ILC (or other systems) as we do not have any dedicated code. 

### Answering Hotline Call
The Hotline is one of the main ways our Clients and Non-Clients alike engage us during an incident. In some cases this is the Client or potential Client's first impression of XFIR and it is important that we represent a unified professional atmosphere when conducting an initial Hotline call. 

Be professional, calm and courteous during all communications with clients in general. Often, the Client is in a frantic state as they either just found out about a security issue they are experiencing, or they are having trouble containing an incident. This can be a very stressful time for the Client and it is our duty to help guide them as trusted advisors when they reach out to us.

There are no hard and fast rules to greeting the caller on an initial in-bound hotline call. However, it is recommended to start with "*IBM X-Force Incident Response Hotline, This is `<Consultant name>` how may I help you*". There are many reasons why Clients call the hotline. At the very minimum the following information should be captured:
- caller's contact details such as: name, title, phone; optinally email (spelling over the phone for non-native nations can be error prone), 
- organization name (company name, if an IBMer is calling then who are they calling for?),
- reason for call (get as much detail as possible),
- identify appropriate next steps (Triage and Scoping Call, client needs more info, etc),
	- if applicable, determine clients availability for a Triage and Scoping Call. 

It is essential to request contact details listed above at the beginning of the call, to ensure that caller can be reached in case phone connection gets broken. Spelling personal IBM or Client email addresses to non-native English speakers is error prone and often creates delays related to spelling errors. For this reason, every geography maintains simple group mail addresses, which should be easy to spell and provide to a caller over the phone allowing to engage into written communication. 

| Region | Main address | Additional aliases |
| -- | -- | -- |
| APAC | xfiris@au1.ibm.com |
| EMEA | emea_ers@uk.ibm.com |XFORCE_XFIR_EU@uk.ibm.com, XFORCE_XFIR_MEA@uk.ibm.com |
| NA | ?? |

One of the aims of the Hotline call is to get basic understanding of the incident, Client is dealing with. It is hard to define strict list of questions which should be answered by a caller, especially if this person is non technical. On-call person should use common sense and experience to gather necessary data. Some example questions which can be asked are: 
- How incident was detected/discovered?
- What is the scope of incident, eg. number and type of systems affected?
- What is the business impact of this incident?
- Who owns and manages system within the scope of incident? 
 
In most cases, the initial Hotline call itself is not the appropriate venue for making recommendations about a service offering that aligns with what the Client needs. Often the person calling the Hotline is not a technical resource and doesn't have all of the information required to make that decision. In other situations, a person calling Hotline may have extensive technical knowledge and may push to immediately discuss details of the incident, converting discussion into "mini triage". In all those situations, on-call consultant should explain that a dedicated Triage and Scoping Call is necessary to proceed with engagement.  

No case related information should be divulged to a caller just based upon the name the he/she claims. This is to prevent impersonation of clients by third parties such as journalists. Caller verification can be performed by calling the person back on a number held on record in Resilient or having them email from their corporate email address to confirm identity. 

The aim of the Hotline and on-call team is to support IBM clients in emergency situation. Consultant speaking with a Client should use own common sense and experience to judge whether discussed case is indeed emergency. Example of non-emergency case is: malware analysis request for an incident which was already contained and remediated by a client. If it is non-emergency, then on-call person should gently push back such a request and recommend Client to reach out to his XFIR Account Manager (aka Delivery Lead in NA) - case will be handled within regular business hours. In such a case, on-call person is still obliged to:
- create and fill in a Resilient ticket marked with a correct tag representing requested activity, ensuring that at least contact details of the caller are documented,
- notify Account Manager of this client that such request was submitted to the Hotline and pushed back,
- provide Resilient ticket number to the Account Manager. 

### Processing Hotline Call  
It is expected that initial determination will be made as to the nature of the call and whether the request is a legitimate concern that can be addressed by the XFIR team, or should the caller be re-directed. For cases potentially within a scope of IBM CSIRT, see guidelines [below](#ibm-csirt). Should the call be a legitimate concern, even if the Client is calling from outside of the responder’s responsible Geography, it is critical to ensure the engagement initiation process is commenced. 

One of the main reasons behind [Follow the Sun for Incident Intake](#Follow-the-Sun-for-Incident-Intake) is to ensure healthy work-private life balance. For this reason, if current on-call person determines that the incident must be handed over to another Geography, waking up another team should only happen if this is necessary. Guidelines on determination who should own an incident are addressed in section [Determining Geography Owning the Incident](#Determining-Geography-Owning-the-Incident). Currently the on-call person is obliged to provide any kind of IR support to a Client, until the Geography which should take over the incident becomes available. The cross geography incident hand over is described in the section [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography) Even in GDPR constraint cases, the on-call person can provide significant support to a Client without accessing data he may not be allowed to (eg. NA person on-call who received a call from EU Client). Such activities can include, but are not limited to:
- issue recommendations on containment,
- discuss what evidence should be collected,
- provide evidence collection manuals,
- support Client’s team in evidence collection,
- prepare for evidence delivery to team who will be taking over the incident.

The following steps must be performed after the Hotline call has been completed:
1.	Log an incident ticket in Resilient:
	- Section [Logging Requirements for New IR Engagements](DFIR-Resilient.md#Logging-Requirements-for-New-IR-Engagements) on a Resilient page defines which fields must be populated while creating incident ticket. Empty or incomplete tickets are not acceptable.
	- Every genuine Hotline call must be recorded in Resilient, including those where it is ultimately determined that XFIR support is not required. In such cases, the ticket must follow all documentation requirements as well as explanation why we are not engaged. It can be closed immediately after the appropriate information has been completed. 
	- Wrong/silent and other unrelated calls are not logged in the Resilient.
2. Document every call logged by PagerDuty integration within `ir-hotline` Slack channel, by creating a thread and replying with following information:
	- for genuine Hotline call - provide Client name, Resilient case ID and Resilient ticket URL,
	- for non-genuine call - provide details on what happened and why this is not a genuine call.
3.	Evaluate whether incident can be handled by team being currently on call or needs to be handed over to another Geography:
	- If incident will be handled by currently on call team, notify everyone using `ir-triage-scoping` Slack channel.
	- If incident needs to be handed over to another Geography, proceed with steps discussed in the section [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography).
4.	Organize Triage and Scoping Call following process documented separately [here](DFIR-Triage-Scoping.md). 

On-call person should also keep in mind, that even if incident was classified to be handed over to other geography, XFIR is obliged to meet Contractual SLA's for Triage and Scoping Call. This means, that current on-call person is still responsible to ensure that whoever performs a Triage call, appropriate SLA is met.

If needed, a dedicated Slack channel `ir-triage-scoping` can be used for communicating with the broader team about new IR engagements and should be used for Triage and Scoping Call preparations. Further details on how to use this Slack channel and other topics related to Triage/Scoping call are available on [Triage and Scoping page](DFIR-Triage-Scoping.md).

### Shift Turnover
The `ir-hotline` Slack channel is used to communicate with the previous and next shift rotation personnel, to facilitate turnover of cross-regional Hotline or Triage calls which require further actions or other items next shift should be aware of (eg. early notifications that Client may call hotline and request assistance). At the end of every shift, the Primary on-call member should communicate any items of interest to the on-coming shift for awareness. If no calls are received during a shift, there should still be clear communication provided to that effect. It must be clearly communicated whether the following Geography is needed to take any action(s) in relation to events during the previous shift(s). A person taking over a shift, should also "check in" in `ir-hotline` channel to ensure continuous communications. PagerDuty integration with Slack posts notification to `ir-hotline` about every Hotline call, allowing to trace back recent activity. 

The `ir-hotline` channel used to hand over shift, should not be confused with `ir-triage-scoping` channel where a discussion about new IR cases is taking place. As a rule of thumb, `ir-hotline` channel is focused on hotline calls itself (administrating them) and related tasks hand over, while `ir-triage-scoping` is focused on handling incidents (raised by hotline calls or by other means of communications), and is not concerned about the hotline call itself. 

The `ir-hotline` channel should not be used to hand over existing cases analysis/monitoring in the Follow the Sun approach, etc. Any ongoing activity, which requires cross geography activity, should be coordinated by Case Lead in the Slack channel dedicated for this case. On call personnel is not responsible for handling any cross geography work unrelated to  incoming IR engagements. 

At the end of each shift ensure that:
 - All voicemails have been responded to, which means that all `Incident` tickets in PagerDuty with voice messages have been acted upon and closed in PD to avoid any "leftovers".
 - Resilient tickets for all hotline calls have been created and populated with necessary data.
 - All created Resilient tickets have an owner (who will lead the investigation) assigned, to avoid tickets "hanging" on on-call person.
 - A hand-over with all necessary information, has been provided for the upcoming Geography.

If there is an active cross-regional IR engagement, summarize the status of that engagement and coordinate details within the specific engagement Slack channel. If members of the Hotline duty personnel are assisting with that effort to support Follow the Sun, make sure the on-coming members have access to the engagement Slack channel and supporting technology such as Box/Aspera folders, EDR console, forensic data, summary reports, etc.

### Determining Geography Owning the Incident
It is the responsibility of the on-call staff to determine which region should lead an engagement, with guidance and input from regional management if required. Beyond standard allocation rule based on time zone and team members availability, the following factors should be taken into consideration:
- Where is the Client physically located in and is there a potential requirement for XFIR staff presence on client premises?
- What is incident location (may not be same as main Client location).
- Is there a specific language requirement (i.e. the Client only speaks Spanish).
- Are there potential data handling considerations such as: GDPR, country laws that would dictate data is only viewable by a specific country citizen?
- Is the client requesting specific XFIR staff from a designated region due to relationship or account management responsibilities?
- Are there any client specific requirements documents in the Notes filed in client record in Resilient?

If it was decided that incident should be owned by another Geography (either by on-call person, or Engagement Lead) – a hand over process described below should be followed.

During whole life-cycle of incident, a primary person responsible for incident must be indicated via the “Members” – “Owner/Account manager” field within Resilient. After the initial call this would be on-call person. Later this would be a person dealing with a triage or a case Lead.

### Incident Hand-Over to Another Geography
Usage of a single point for Incident Intake, may cause the need to hand over newly created incident to another Geography. Examples where this may be the case include, but are not limited to:
- A Hotline call arrived at the end of on-call person shift and the time when Triage and Scoping Call should be organized falls under shift of following Geography.
- It was decided that incident need to be transferred for handling to another Geography.

In the event that it is immediately identified during the Hotline call that an incident will likely be handed over to another region it is recommended that the on-call person(s) make efforts to engage with the geography which will be assigned the incident in an effort to have them join the Triage and Scoping Call.

In the event that the incident has to be transferred to another Geography, which is currently not reachable (eg. transfer from EU to APAC), it should be temporarily handed over to next Geography who will hand it over to a destination team (eg. EU hand over to NA and NA hands it over to APAC). It should be clearly explained who an ultimate receiver of an incident should be.
Hand over process is defined as follows:
1.	Ensure that Resilient ticket contains all information already collected.
2.	Identify on-call representative of next Geography who will be picking up the incident to hand over.
3.	Reach out to identified person and notify that there is a need for an incident hand over. This should be done using `ir-hotline` slack channel or directly contacting the person. Provide necessary information such as:
	- Resilient ticket number.
	- Case background.
	- Clients's expectations.
	- Next steps to be performed by person taking it over.
	- If applicable, reference to related discussion on `ir-triage-scoping`  Slack channel with case details.
4.	Ensure that person taking over an incident acknowledges it and is comfortable with all information provided.
5.	Update Resilient “Members” tab -> “Owner/Account manager field” with name of person taking over an incident.

Try calling IBM mobile number of the receiving person if there is no response to the Slack messages. It is the responsibility of a person handing over an incident to ensure that the receiver acknowledges receipt of an incident. Just leaving a slack message or dropping an email with details of the incident is unacceptable. PagerDuty contains two on-call schedules, so in the event that the Primary on-call person is unavailable, the Second on-call person should be engaged.

The receiving geography on-call person is responsible for raising this incident to his/her Delivery Lead (for EMEA) or Engagement Lead (for NA) for team resource allocation.


## Ad-hoc IR Requests
XFIR Hotline numbers are publicly available and anyone, not only Clients having active subscription, can call. The intention is to allow also non-IBM Clients to call and request assistance with so called "Ad-hoc IR request". In this concept, a Triage and Scoping call is considered "for free" - we want to show XFIR expertise and what kind support a potential Client may receive, hoping that they will be satisfied and decide to proceed with IBM. 

During discussion with a Client representative when received a Hotline call, on-call person should explain that XFIR is more that happy to assist and offers immediately a Triage and Scoping Call to:
- evaluate Client situation,
- present proposed approach,

It should be clearly explained, that if Client decides to engage XFIR to handle this incident, an Ad-hoc contract need to be signed with Ad-hoc hourly rate. XFIR will not proceed with any work beyond Triage and Scoping Call without signed contract. 

On-call person should not engage into any discussion related to commercials details and hourly rates, as this should be handled by XFIR Operations Managers and Sales team. Dedicated [process](DFIR-Triage-Scoping.md#Ad-hoc-Assistance-Request) should be initiated to sort out commercial part of the Ad-hoc request. 

## IBM CSIRT
A clear, written guidelines for handling cases to CSIRT are not yet ready. A current rule of thumb is that any case which involves IBM managed or IBM owned systems fall under IBM CSIRT scope and CSIRT should be involved. Consult your manager or geography Leaders for more guidelines in this topic.

An Incident to IBM CSIRT can be submitted by calling IBM hotline and choosing option to submit Cyber Security Incident. 
