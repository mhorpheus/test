

# IRIS Global Hotline Rotation and Procedures

The purpose of this page is to document the IRIS Hotline procedures both generically and as they pertain to Incident Response in-bounds from the Hotline.

IRIS uses a 24/7 availability, Follow the Sun Emergency Hotline. The Hotline is intended to be a way that both ad-hoc and existing clients can reach a technical member of the IRIS team day or night if they are experiencing an incident. This is one of the main avenues our clients use to engage IRIS and in some cases this is the client's first impression of our organization. It is important for us to remain professional and have tested procedures for handling incoming hotline calls.

The following documentation is a guideline for IRIS consultants for IRIS Hotline procedures and is a living document. If there is something you want to see documented here or explained with further detail please contact Matthew DeFir (matthew.defir@ibm.com)

## Table of Contents

 1. [**Follow the Sun**](#follow-the-sun)
	 - [Regional Numbers](#regional-numbers)
	 - [Pager Duty](#pager-duty)    
	 - [Global IR Hand-Off Procedures](#global-ir-hand-off-procedures) 
 2. [**Hotline Procedures**](#hotline-procedures) 
	 - [Hotline Calls](#hotline-calls)
	 - [Hotline Shift Turnover](#hotline-shift-turnover)


## Follow the Sun

IRIS has adopted a Follow the Sun model to provide `24/7x365` round-the-clock support for our clients and potential customers. What this means for individual IRIS team members is that you could be asked to join the 24/7 Hotline on-call rotation for your respective region. The Hotline rotation is managed through the application Pager Duty and at any time you can view your scheduled on-call rotations. For more information check the [Pager Duty](#pager-duty) section.

It is important to keep in mind that IRIS is a global team and regions will be handling incoming Hotline calls from other regions. The steps outlined here will serve as guidelines for handling Hotline calls globally.

### Regional Numbers

Please use the following tables to identify individual regional/country hotline numbers:

**Asia & Pacific (APAC)**

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
| Japan | (+81) 356 952 751 |

___

**Europe, Middle East, & Africa (EMEA)**

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

**North America (NA)**

| Country/Region | Emergency Number |
|--|--|
| United States & Canada | (+1) 888 241 9812 |
| World Wide Number | (+1) 312 212 8034 |

___

**Latin America (LATAM)**

| Country/Region | Emergency Number |
|--|--|
| World Wide Number | (+1) 312 212 8034 |

___

**JAPAN Region**

| Country/Region | Emergency Number |
|--|--|
| World Wide Number | (+1) 312 212 8034 |
| Japan | (+81) 356 952 751 |

___

### Pager Duty
The Hotline rotation and call escalation paths for personnel on Hotline duty are maintained in Pager Duty (https://ibm.pagerduty.com/). Pager Duty is an application that facilitates the management of on-call rotations. If you have not already set up your Pager Duty account profile you can sign into Pager Duty using your `w3id` credentials. You will want to update your profile with the appropriate phone number that will be used when Hotline calls are escalated to you. 

 - Update your Pager Duty profile
 - Check and be aware of your upcoming on-call rotations
 - Work with your manager and your regional Pager Duty admin to make changes within the schedule:

| Region | Pager-Duty Admin | Alternate |
|--|--|--|
| North America (NA)| Fred Chidsey (fachidse@us.ibm.com) | Phil Harrold (rpharrol@us.ibm.com) |
| Asia-Pacific (APAC) | Amanda Nelson (anelson@au1.ibm.com) | Stephen Burmester (sburmester@au1.ibm.com) |
| Europe, Middle East, & Africa (EMEA) | Adam Smutnicki (adam.smutnicki@pl.ibm.com) | Adam Harrison (adam.mj.harrison@ibm.com)|

### Global IR Hand-Off Procedures

In the event that one region receives a Hotline call from a current or potential client from another region, it is the responsibility of the region that is on-duty at that time to begin the Triage and IR Spin-Up procedures. This process begins with communication on Slack. IRIS personnel tasked with hotline duty should maintain a presence in the Slack channel `#iris-shift-turnover`. This is where we communicate about cross-regional Hotline and Triage calls.

The following guidelines are designed to be a reference in the event that you receive a Hotline call from client within another region:

1. Follow the [Global Hotline Procedures](#global-hotline-procedures) for handling the initial call
	 - If a triage call is required follow the [Triage and Scoping Procedures](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/IRIS-IR-Triage-Scoping)

2. Communicate with the on-coming region's Hotline duty members and client's regional Hotline duty members within the `#iris-shift-turnover` Slack channel and report the status of the hotline and/or triage call.

3. Is the client engaging IRIS?
	 - **Yes**	>> Begin the ***IR Spin-Up Process***
	 - **No**		>> Follow the [Resilient Ticketing Procedures](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/IRIS-Resilient) for closing the ticket



- Maintain communication with the client and relay any changes in status or client expectations to the on-coming and regional Hotline members via the `#iris-shift-turnover` Slack channel. 
- Update the Resilient engagement ticket notes with any additional information and verify the regional IRIS team has taken responsibility for the delivery of that engagement. 

## Global Hotline Procedures
There will always be two people on-call at any given time, a `Primary` and a `Secondary`. The primary individual is responsible as the main IRIS hotline point of contact during their on-call shift and should work directly with their secondary or "backup" on-call personnel to cover any period(s) of time that the `Primary` will not be able to take an in-coming Hotline call.

Every member of IRIS who is tasked with Hotline duty should maintain their Pager Duty profile with the correct phone number, and be aware of their on-call rotation schedule. For additional information regarding Pager Duty go [here](#pager-duty).

The `#iris-hotline-ic` Slack channel is for communicating with the broader team about hotline calls that are currently active and in progress. It is recommended to have notifications turned on for this Slack channel as important information about active Hotline & Triage calls are often posted here. The `#iris-hotline-ic` Slack channel is also a place where IRIS members who are participating in Hotline Triage call can post questions for the member of the IRIS team who is running call.

The `#iris-shift-turnover` Slack channel is for communicating with the previous and next shift rotation personnel about action items that the next shift needs to be aware of.  And to facilitate turnover of cross-regional Hotline or Triage calls. At the end of every shift, the `Primary` on-call member should communicate any items of interest to the on-coming shift for awareness.

*Note: If Primary does not answer an incoming hotline call, Pager Duty will route that call directly to the Secondary on-call member. If neither answers the call, the client will get a voice recording and it is the responsibility of the on-call personnel to return that call.* 
 
### Hotline Calls
The Hotline is one of the main ways our clients and non-clients alike engage us during an incident. In some cases this is the client or potential client's first impression of IRIS and it is important that we represent a unified professional atmosphere when conducting an initial Hotline call.

Be professional and courteous during all communications with clients in general. However, this cannot be stressed enough on the initial Hotline call. Often, the client is in a frantic state as they either just found out about a security issue they are experiencing, or they are having trouble containing an incident. This can be a very stressful time for the client and it is our duty to help guide them as trusted advisors when they reach out to us.

There are no hard and fast rules to greeting the caller on an initial in-bound hotline call. However, it is recommended to start with "IBM X-Force IRIS Hotline, This is `<Consultant>` how may I help you". There are many reasons why clients call the hotline. At the very minimum the following information should be captured:
- Caller's Name, Organization, Title, Phone, Email
- Organization Name (Company Name, if an IBMer is calling then who are they calling for?) 
- Reason for call (Get as much detail as possible)
- Identify appropriate next steps (Triage/Scoping Call, Client needs more info, etc)

In most cases, the initial hotline call itself is not the appropriate venue for making recommendations about a service offering that aligns with what the client needs. Often the person calling the hotline is not a technical resource and doesn't have all of the information required to make that decision. It is highly recommended to schedule a Triage/Scoping call with the client and their technical team following the initial hotline call. For more information visit the [Triage and Scoping Procedures](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/IRIS-IR-Triage-Scoping) page.

As a general rule, whichever IRIS member answered the initial Hotline call should be present in the Triage/Scoping call for continuity. The other member should remain free and available to take additional Hotline calls if needed.

Once the hotline call has concluded, the person who answered the call should create a Resilient ticket with as much detail as possible. This is required for all hotline calls that aren't prank calls, unrelated, etc. Please see Resilient Ticketing Documentation (*Insert Resilient Documentation link*) for more information on properly logging Resilient ticket information for Hotline calls.

### Hotline Shift Turnover

At the end of each Follow-the-Sun rotation, one of the on-duty Hotline members should report any relevant information to the on-coming Hotline shift in the `#iris-shift-turnover` Slack channel. 

If there is an active cross-regional IR engagement, summarize the status of that engagement and coordinate details within the specific engagement Slack channel. If members of the Hotline duty personnel are assisting with that effort to support Follow-the-Sun, make sure the on-coming members have access to the engagement Slack channel and supporting technology such as Box/Aspera folders, EDR console, forensic data, summary reports, etc.
