

# XFIR Global Hotline

## Table of Contents
 1. **[Hotline](#hotline)**
	- [Introduction](#introduction)
	- [Regional Numbers](#regional-numbers)
 2. **[Follow the Sun for Incident Intake](#Follow-the-Sun-for-Incident-Intake)**
	- [Concept Description](#Concept-description)
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

The purpose of this page is to explain the XFIR Hotline operating model and document its procedures. This page should be presented to every new XFIR team member as a part of the onboarding process to prepare them to support the XFIR Hotline. This page is a living document. If there is something you want to see documented here or explained in further detail please contact your geographic Functional IR Lead (listed on the [Homepage](wiki/Home)).

XFIR maintains several hotline numbers in different geographies - they are used by XFIR Clients to declare an IT security incident and request XFIR assistance. A Hotline call (denoted sometimes as "initial call") is used to gather a basic understanding of an incident as well as the Client's details so that a Triage and Scoping Call can proceed, resulting in an investigation being launched. Using the 24/7/365 XFIR Hotline, Clients can reach an XFIR Consultant if they are experiencing an incident day or night. This is one of the main avenues our Clients use to engage XFIR, and in some cases this is the Client's first impression of our organization. It is important for us to remain professional and have tested procedures for handling incoming Hotline calls.

Hotline numbers are publicly available on the Internet. Additionally, non-subscription Clients can call the XFIR Hotline and request assistance in "Ad-hoc" engagements. Requesting assistance through a Hotline call is the only correct and reliable way to receive emergency assistance. 

Hotline Call handling should not be confused with a [Triage and Scoping Call](wiki/DFIR-Triage-Scoping), as each has different goals and follows different processes.

### Regional Numbers
XFIR operates several Hotline numbers in multiple countries. In the past XFIR geographies operated independently, working on their own with different local telecommunication providers. Each geography was covering on their own full 24/7 period locally. With the introduction of [Follow the Sun for Incident Intake](#Follow-the-Sun-for-Incident-Intake), Hotline operation (for every region except Japan) has been unified and will now lead to the same on-call person. 

The below tables list regional/country Hotline numbers. The list is also available in the form of PDF [Leaflet](documents/IBM%20X-Force%20IR%20Hotline%20Numbers.pdf) which can shared with existing or potential Clients.

#### Worldwide Hotline
- (+1) 312 212 8034
___
#### Asia & Pacific (APAC)
| Country/Region | Hotline Number |
|:--|:--|
| Australia | (+61) 1800 637 539 |
| China | (+86) 4008 424 397 |
| Hong Kong | (+852) 800 900 704 |
| India | (+91) 0008 000 401 045 |
| Indonesia | (+62) 00 180 361 859 |
| Malaysia | (+60) 1800 818 276 |
| New Zealand | (+64) 0800 426 111 |
| Philippines | (+63) 1800 1611 0322 |
| Singapore | (+65) 800 616 7095 |
| Taiwan | (+886) 00801 852 057 |
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

### Concept Description
Three main regions maintain almost all Hotline numbers: APAC, EMEA and NA. To provide a unified, standardized approach and to avoid the need for XFIR team members to work outside business hours, a Follow the Sun model is employed. In this approach, 24 hours are divided into three 8-hour shifts. Each shift is allocated within business hours of the owning region. All Hotline calls from any of the three respective region participating in Follow the Sun, are answered by the region running a shift during those designated hours. This means that calls to any of the local numbers (except Japan)  will always reach out to the same person at a given moment in time.

South America do not have dedicated Hotline numbers and use the Worldwide Hotline number, while their team do not participate in shifts. Japan operated independently and their Hotline number will reach only a team in Japan. 

This operational model **should not be confused** with **Follow the Sun Incident Response**, as it is only designed to provide 24/7 **Incident Intake**. The aim is to ensure that call is answered, registered and, depending on the situation, initial XFIR support is initiated.

### On-call Shifts Schedule
Shift distribution among participating regions is presented in the table below:

| Geography | UTC Shift | Sub-Geography | Local Summer Time | Local Winter Time|
|--|:--:|--|:--:|:--:|
| APAC | 23:00-07:00 | Sydney | 10:00-18:00 | 09:00-17:00 |
| EMEA | 07:00-15:00 | UAE | 11:00-19:00 |11:00-19:00 |
| | | EU – Central | 09:00-17:00 | 08:00-16:00 |
| | | EU – UK | 08:00-16:00 | 07:00-15:00 |
| North America | 15:00-23:00 | Eastern | 11:00-19:00 | 10:00-18:00 |
| | | Central | 10:00-18:00 | 09:00-17:00 |
| | | Mountain | 09:00-17:00 | 08:00-16:00 |
| | | Pacific | 08:00-16:00 | 07:00-15:00 |

The Hotline rotation and call escalation paths for on call personnel are maintained by the PagerDuty (PD) system (https://ibm.pagerduty.com/). Detailed documentation on how the Hotline is operated by PD, how to use PD for handling calls together with other useful usage hints are documented on a separate [PagerDuty](wiki/DFIR-PagerDuty) page.

Shifts are allocated on a weekly basis - each cycle starts on Monday morning (local time). Every new cycle is started by the APAC team on Sunday 23:00 UTC, i.e. their Monday morning. Each region is responsible on its own to ensure that two on-call people are available to cover their assigned shift and are properly scheduled within PagerDuty. 

Shift assignment is done automatically by PagerDuty based on the Round Robin algorithm from a pool of people assigned to a shift. There is no process of building an on-call schedule according to everyone's preferences, as this would be too complex. For this reason, everyone is responsible themselves to check when they have been assigned a shift. If there is any collision with other activities, eg. Client travel, personal plans, holidays, etc. it's the scheduled person's responsibility to either arrange a swap or raise the issue with their regional PagerDuty administrators. **Administrators should communicate any changes to the PagerDuty rota through overrides to the impacted users.**

## Hotline Operations
The Hotline is supported by a primary, secondary on-call person. This means, that PagerDuty will attempt to connect a caller with a primary on-call person. If this person is not available or do not pick up a call within 30 seconds, PagerDuty will redirect the call to a secondary on call person. To provide an necessary reliability, in the event that neither are available to pick up a call, there are two additional layers: geography lead and an option to leave a voicemail.

Every member of XFIR who is tasked with Hotline duty is obliged to set up their mobile phone and PagerDuty profile according to instruction provided [here](wiki/DFIR-PagerDuty#newcomer-on-boarding).

A number of XFIR Clients maintain a close business relationship with individual XFIR Consultants that they have already worked with or who are their designated primary contact points. They tend to request XFIR assistance by reaching out to this person, instead of calling the Hotline. In such a case, the XFIR Consultant should politely remind the Client that the official process, to call the XFIR Hotline, is likely to provide the quickest response and provides 24/7/365 coverage.

### On-Call Person Responsibilities
Both the Primary and Secondary persons on call are responsible for following activities during their shift:
- Picking up all Hotline calls.
- Processing all voice messages for Hotline calls which were not picked up by both Primary and Secondary on call person.
	- It is the on-call person's responsibility to attempt to reach out to the caller and perform “Initial call” discussion.
	- Technical guide for handling voice messages left in Pager Duty is available [here](wiki/DFIR-PagerDuty). 
- Logging Hotline calls in Resilient (see details in [Processing Hotline Call](#Processing-Hotline-Call) section)
- Organizing Triage and Scoping Call for all new incidents if they fall within timeframe of the current shift. If they fall outside the current shift, they either need to be handed over to next on-call region or planned for the next business day, if this was agreed with the Client. 
- Performing a shift hand over with the following on-call region, according to the process described in [Shift Turnover](#Shift-Turnover).
- If applicable, performing an incident hand over to the following region according to a process described in [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography).

The main aim of the on-call person is be available to pick up and initiate XFIR response to all Hotline calls. This means that the on-call person:
- may be already working on other engagements, and may not have availability to pick up any analysis,
- is not automatically assigned to all new incoming incidents originating from Hotline call,
- is not responsible for allocating people to the incident, as this should be done by Leadership/Management of each geography,
- is not responsible for leading the Triage and Scoping call, however they are responsible for organizing it.

Time spent on supporting the Hotline cannot be claimed as billable as we do not have any dedicated code. 

### Answering Hotline Calls
The Hotline is one of the main ways our Clients and Non-Clients alike engage us during an incident. In some cases this is the Client or potential Client's first impression of XFIR and it is important that we represent a unified professional atmosphere when conducting an initial Hotline call. 

Be professional, calm and courteous during all communications with clients in general. Often, the Client is in a frantic state as they either just found out about a security issue they are experiencing, or they are having trouble containing an incident. This can be a very stressful time for the Client and it is our duty to help guide them as trusted advisors when they reach out to us.

There are no hard and fast rules to greeting the caller on an initial in-bound hotline call. However, it is recommended to start with "*IBM X-Force Incident Response Hotline, This is `<Consultant name>` how may I help you*". There are many reasons why Clients call the hotline. At the very minimum the following information should be captured:
- caller's contact details such as: name, title, phone; optionally email (spelling over the phone for non-native English speakers can be error prone), 
- organization name (company name, if an IBMer is calling then who are they calling for?),
- reason for call (get as much detail as possible),
- identify appropriate next steps (Triage and Scoping Call, client needs more info, etc),
	- if applicable, determine clients availability for a Triage and Scoping Call. 

It is essential to request the contact details listed above at the beginning of the call, to ensure that caller can be reached in case the phone connection gets broken. It may be worth telling the caller that you will call them back if the connection is lost, to avoid them contacting the Hotline again while you are trying to call them back. Spelling personal IBM or Client email addresses to non-native English speakers is error prone and often creates delays related to spelling errors. For this reason, every geography maintains simple group mail addresses, which should be easy to spell and provide to a caller over the phone allowing to engage into written communication. 

| Region | Main address | Additional aliases |
| -- | -- | -- |
| APAC | xfiris@au1.ibm.com |
| EMEA | emea_ers@uk.ibm.com |XFORCE_XFIR_EU@uk.ibm.com, XFORCE_XFIR_MEA@uk.ibm.com |
| NA | does not exist |

One of the aims of the Hotline call is to get a basic understanding of the incident the Client is dealing with. It is hard to define a strict list of questions that should be answered by a caller, especially if this person is non technical. The on-call person should use common sense and experience to gather necessary data. Some example questions which can be asked are: 
- How incident was detected/discovered?
- What is the scope of incident, eg. number and type of systems affected?
- What is the business impact of this incident?
- Who owns and manages systems within the scope of incident? 
 
In most cases, the initial Hotline call itself is not the appropriate venue for making recommendations about a service offering that aligns with what the Client needs. Often the person calling the Hotline is not a technical resource and doesn't have all of the information required to make that decision. In other situations, a person calling the Hotline may have extensive technical knowledge and may push to immediately discuss details of the incident, converting discussions into a "mini triage" call. In all those situations, the on-call consultant should explain that a dedicated Triage and Scoping Call is necessary to proceed with an engagement. This benefits the client, as they save time by not having to explain the incident in detail on both calls.  

No case related information should be divulged to a caller just based upon the name the he/she claims. This is to prevent pretexting: impersonation of clients by third parties such as journalists. Caller verification can be performed by calling the person back on a number held on record in Resilient or having them email from their corporate email address to confirm identity. You may also wish to provide your Slack username to IBMers and ask them to send you a message.

The aim of the Hotline and on-call team is to support IBM clients in emergency situations. A consultant speaking with a Client should use their own common sense and experience to judge whether the discussed case is indeed an emergency. An example of a non-emergency case is: malware analysis request for an incident which was already contained and remediated by a client. If it is non-emergency, then on-call person should gently push back such a request and recommend that the Client reaches out to his XFIR Account Manager so that the case may be handled within regular business hours. In such a case, on-call person is still obliged to:
- create and fill in a Resilient ticket marked with a correct tag representing requested activity, ensuring that at least contact details of the caller are documented,
- notify the Account Manager that the request was submitted to the Hotline and pushed back,
- provide Resilient ticket number to the Account Manager. 

### Processing Hotline Calls 
It is expected that an initial determination will be made as to the nature of the call and whether the request is a legitimate concern that can be addressed by the XFIR team, or should the caller be redirected. For example, cases potentially within the scope of IBM CSIRT, see guidelines [below](#ibm-csirt). Should the call be a legitimate concern, even if the Client is calling from outside of the responder’s responsible geography, it is critical to ensure the engagement initiation process is commenced. 

One of the main reasons behind [Follow the Sun for Incident Intake](#Follow-the-Sun-for-Incident-Intake) is to encourage a healthy work/life balance. For this reason, if the current on-call person determines that the incident must be handed over to another geography, waking up another team member should only happen if this is absolutely necessary. Guidelines on determinating who should own an incident are addressed in section [Determining Geography Owning the Incident](#Determining-Geography-Owning-the-Incident). Currently the on-call person is obliged to provide any kind of IR support to a Client, until the geography which should take over the incident becomes available. The inter-geography incident hand over is described in the section [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography). Even in GDPR constrained cases (for more on GDPR for XFIR read [here](wiki/DFIR-GDPR), the on-call person can provide significant support to a Client without accessing data he may not be allowed to (e.g. NA person on-call who received a call from EU Client). Such activities can include, but are not limited to:
- issue recommendations on containment,
- discuss what evidence should be collected,
- provide evidence collection manuals,
- support Client’s team in evidence collection,
- prepare for evidence delivery to the team who will be taking over the incident.

The following steps must be performed after the Hotline call has been completed:
1.	Log an incident ticket in Resilient:
	- Section [Logging Requirements for New IR Engagements](wiki/DFIR-Resilient#Logging-Requirements-for-New-IR-Engagements) on a Resilient page defines which fields must be populated when creating an incident ticket. Empty or incomplete tickets are not acceptable.
	- Every genuine Hotline call must be recorded in Resilient, including those where it is ultimately determined that XFIR support is not required. In such cases, the ticket must follow all documentation requirements as well as explanation why we are not engaged. It can be closed immediately after the appropriate information has been completed. 
	- Wrong/silent and other unrelated calls are not logged in Resilient.
2. Document every call logged by PagerDuty integration within the `ir-hotline` Slack channel, by creating a thread and replying with following information:
	- for genuine Hotline calls - provide Client name, Resilient case ID and Resilient ticket URL,
	- for non-genuine calls - provide details on what happened and why this was not a genuine call.
3.	Check whether the caller is not on the Denied Parties List, to confirm that we can proceed with work:
	- Check **must be performed for every single engagement**, for every single client, even if we have done business with them in the past or they already have a subscription.
	- Detailed process how to perform a check and how to document it is described [here](https://github.ibm.com/XFIR/XFIR-master-wiki/wiki/Denied-Parties-List).
4. Evaluate whether the incident can be handled by the team currently on call or needs to be handed over to another geography:
	- If the incident will be handled by the currently on call team, notify everyone using `ir-triage-scoping` Slack channel.
	- If the incident needs to be handed over to another geography, proceed with steps discussed in the section [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography).
5.	Organize Triage and Scoping Call following the process documented separately [here](wiki/DFIR-Triage-Scoping). 

The on call person should also keep in mind, that even if an incident was identified to be handed over to other geography, XFIR is obliged to meet contractual SLAs for Triage and Scoping Calls. This means, that the current on call person is still responsible to ensure that, whoever performs a Triage call, the appropriate SLA is met.

A dedicated Slack channel `ir-triage-scoping` can be used for communicating with the broader team about new IR engagements and should be used for Triage and Scoping Call preparations. Further details on how to use this Slack channel and other topics related to Triage/Scoping call are available on [Triage and Scoping page](wiki/DFIR-Triage-Scoping).

### Shift Turnover
The `ir-hotline` Slack channel is used to communicate with the previous and next shift rotation personnel, to facilitate turnover of cross-regional Hotline or Triage calls which require further actions or other items next shift should be aware of (eg. early notifications that Client may call hotline and request assistance). At the end of every shift, the Primary on-call member should communicate any items of interest to the on-coming shift for awareness. If no calls are received during a shift, there should still be clear communication provided to that effect. It must be clearly communicated whether the following region needs to take any action(s) in relation to events during the previous shift(s). A person taking over a shift, should also "check in" via the `ir-hotline` channel to ensure continuous communications. PagerDuty integration with Slack posts a notification to `ir-hotline` about every Hotline call, allowing tracking of recent activity.

The `ir-hotline` channel is used to hand over between shifts and view incoming call details only, and should not be confused with the `ir-triage-scoping` channel, used for discussion of new IR cases. As a rule of thumb, `ir-hotline` channel is focused on the hotline functionality itself, while `ir-triage-scoping` is focused on staffing incidents and scoping calls (either raised by hotline calls or through other means). 

The `ir-hotline` channel should not be used to hand over existing cases analysis/monitoring in the Follow the Sun approach, etc. Any ongoing activity, which requires cross geography activity, should be coordinated by Case Lead in the Slack channel dedicated for this case. On call personnel are not responsible for handling any cross geography work unrelated to incoming IR engagements. 

At the end of each shift ensure that:
 - All voicemails have been responded to, which means that all `Incident` tickets in PagerDuty with voice messages have been acted upon and closed in PD to avoid any "leftovers".
 - Resilient tickets for all hotline calls have been created and populated with necessary data.
 - All created Resilient tickets have an owner assigned (who will lead the investigation), to avoid tickets "hanging" on the on-call person.
 - A hand-over with all necessary information, has been provided for the upcoming region's on-call team.

If there is an active cross-regional IR engagement, summarize the status of that engagement and coordinate details within the specific engagement Slack channel. If members of the Hotline duty personnel are assisting with that effort to support Follow the Sun, make sure the incoming members have access to the engagement Slack channel and supporting technology such as Box/Aspera folders, EDR console, forensic data, summary reports, etc.

### Determining Geography Owning the Incident
It is the responsibility of the on-call staff to determine which region should lead an engagement, with guidance and input from regional management, if required. Beyond standard allocation rules based on time zone and team members' availability, the following factors should be taken into consideration:
- Where is the Client physically located and is there a potential requirement for XFIR staff presence on client premises?
- Where is the incident location? This may not be same as main Client location.
- Is there a specific language requirement (e.g. the Client only speaks Spanish)?
- Are there potential data handling considerations such as: [GDPR](wiki/DFIR-GDPR), country laws that would dictate data is only viewable by a citizen of a specific country or group of countries?
- Is the client requesting specific XFIR staff from a designated region due to a pre-existing relationship or account management responsibilities?
- Are there any client-specific requirement documents in the Notes filed in the client record in Resilient?

If it was decided that the incident should be owned by another geography (either by on-call person, or Engagement Lead) – the hand over process described in section [Incident Hand-Over to Another Geography](#Incident-Hand-Over-to-Another-Geography) should be followed.

During whole lifecycle of incident, a primary person responsible for the incident must be indicated via the “Members” – “Owner/Account manager” field within Resilient. After the initial call this would be the on-call person. Later this would be either the person dealing with a triage call or a case lead.

### Incident Hand-Over to Another Geography
Usage of a single point for Incident Intake may cause the need to hand over a newly created incident to another geography. Examples where this may be the case include, but are not limited to:
- A Hotline call arrived at the end of on-call shift and the time when Triage and Scoping Call should be organized falls under shift of following region.
- It was decided that incident needed to be transferred for handling by another geography.

In the event that it is immediately identified during the Hotline call that an incident will likely be handed over to another region, it is recommended that the on-call person(s) make efforts to engage with the geography which will be assigned the incident in an effort to have them join the Triage and Scoping Call.

In the event that the incident has to be transferred to another geography which is currently not reachable (eg. transfer from EU to APAC), it should be temporarily handed over to next geography who will in turn hand it over to the destination team (eg. EU hand over to NA and NA hands it over to APAC). It should be clearly explained who the ultimate owner of an incident should be.
The hand over process is defined as follows:
1.	Ensure that Resilient ticket contains all information already collected.
2.	Identify on-call representative of next geography who will be picking up the incident to hand over.
3.	Reach out to the identified person and notify that there is a need for an incident hand over. This should be done using the `ir-hotline` slack channel or directly contacting the person. Provide necessary information such as:
	- Resilient ticket number.
	- Case background.
	- Client's expectations.
	- Next steps to be performed by person taking it over.
	- If applicable, reference to related discussion on the `ir-triage-scoping`  Slack channel with case details.
4.	Ensure that person taking over an incident acknowledges it and is comfortable with all information provided.
5.	Update Resilient “Members” tab -> “Owner/Account manager field” with name of the person taking over the incident.

Try calling the IBM mobile number of the receiving person if there is no response to the Slack messages. It is the responsibility of a person handing over an incident to ensure that the receiver acknowledges receipt of an incident. Just leaving a Slack message or dropping an email with details of the incident is unacceptable, unless you have received a reply to acknowledge. PagerDuty contains two on-call schedules, so in the event that the Primary on-call person is unavailable, the Secondary on-call person should be engaged.

The receiving geography on-call person is responsible for raising this incident to his/her Delivery Lead for team resource allocation.


## Ad-hoc IR Requests
XFIR Hotline numbers are publicly available and anyone, not only Clients having active subscription, can call. The intention is to allow non-IBM Clients to call and request assistance with so called "Ad-hoc IR requests". In this concept, a Triage and Scoping call is considered "for free" - we want to showcase XFIR expertise and what kind support a potential Client may receive, hoping that they will be satisfied and decide to proceed with IBM. 

During discussions with a Client representative on a Hotline call, the on-call person should explain that XFIR is more that happy to assist and offers an immediate Triage and Scoping Call to:
- evaluate the Client's situation,
- present a proposed approach.

It should be clearly explained that, if Client decides to engage XFIR, an Ad-hoc contract will need to be signed at the Ad-hoc hourly rate. XFIR will not proceed with any work beyond Triage and Scoping Call without a signed contract. 

The on-call person should not engage into any discussion related to commercial details and hourly rates, as this should be handled by XFIR Operations Managers and Sales team. A dedicated [process](wiki/DFIR-Triage-Scoping#Ad-hoc-Assistance-Request) should be initiated to handle the commercial part of the Ad-hoc request. 

## IBM CSIRT
Clear, written guidelines for handling cases from/for CSIRT are not yet ready. A current rule of thumb is that any case which involves IBM managed or IBM owned systems falls under IBM CSIRT scope and CSIRT should be involved. Consult your manager or geographic Leaders for more guidelines on this topic.

An Incident to IBM CSIRT can be submitted using one of the methods described on IBM's [Report a Cybersecurity Issue](https://w3.ibm.com/cybersecurity/report.html) page. IBMers should be asked to do this themselves and then provide the CSIRT reference number they receive from CSIRT back to XFIR for our records.
