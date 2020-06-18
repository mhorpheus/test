# PagerDuty

## Table of Contents
**TO BE UPDATED**

 1. [**Introduction**](#Introduction)
 2. [**How Does it Work?**](#How-does-it-work?)
 3. [**Scheduling**](#Scheduling)
 4. [**Newcomer On-boarding**](Newcomer-on-boarding)
 5. [**Daily Operations**](#Daily-operations)
 6. [**Tutorials**](#tutorials)
	 - [Setting-up Your Environment for the First Time](#Setting-up-your-environment-for-the-first-time)
	 - [Working with PD Incidents to Track Hotline Calls](#Working-with-PD-Incidents-to-track-Hotline-calls)
	 - [Handling Voice Messages](#Handling-Voice-Messages)
	 - [Using Calendar Feeds to Track On-call Schedule](#Using-Calendar-Feeds-to-Track-On-Call-Schedule)
	 - [Checking Who Is Currently On-call](#Checking-Who-Is-Currently-On-call)
	 - [Creating Overrides](#Creating-Overrides)

## Introduction
**TO BE FILLED IN**

Hotline numbers are maintained by three main regions: EMEA, North America and APAC. Japan operates and maintains Hotline infrastructure independently. PagerDuty (PD) is an application that facilitates the management of on-call rotations for those three main geographies. 

PagerDuty administrators for IRIS teams are:

| Region | PagerDuty Admin | Alternate |
|--|--|--|
| North America (NA)| Fred Chidsey (fachidse@us.ibm.com) | Phil Harrold (rpharrol@us.ibm.com) |
| Asia-Pacific (APAC) | Amanda Nelson (anelson@au1.ibm.com) | Stephen Burmester (sburmester@au1.ibm.com) |
| Europe, Middle East, & Africa (EMEA) | Adam Smutnicki (adam.smutnicki@pl.ibm.com) | Adam Harrison (adam.mj.harrison@ibm.com)|

All topics discussed on this page are not applicable to Japan.

PagerDuty is a shared instance among multiple teams. There is no sufficient access control, so please do not put any sensitive information there as well as do not mess up with configuration for other people, eg. in the call module - only one item there is 'ours'.

## How Does it Work?
Almost all hotline numbers are provided by different providers:
- North America and world wide number - RACC
- APAC - Telstra
- EMEA - British Telecom (BT)

It was not possible to transfer Hotline numbers between operators, so to integrate them under one of the providers IRIS would need to change several hotline numbers. IRIS decided it this is not acceptable scenario and decided to use PagerDuty (PD) for integration, 

All hotline numbers from RACC, Telstra and BT are pointing at single phone number offered by PD, so all incoming calls are redirected to PD. Then, every PD incoming call is redirected to a currently on-call person. To provide fail-over mechanism as described in the [Hotline Operations](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/DFIR-Hotline.md#Hotline-Operations), two on-call schedules are configured to represent primary and secondary on-call plan. When a new call arrives to PD, it redirects a call to a primary on-call person according to "[X-Force IRIS - Follow the sun (L1 - main)](https://ibm.pagerduty.com/schedules#PAL8VJX)" schedule (often referenced by team members as L1). If person is not available or do not pick up a call within 60 seconds, the call is redirected to a secondary on-call person according to "[X-Force IRIS - Follow the sun (L2 - overflow)](https://ibm.pagerduty.com/schedules#PB084QZ)" schedule (often referenced by team members as L2). If this person is not available or do not pick up a call for 60 seconds, PD will offer calling person an option to leave a Voice Message. 

All incoming calls will always be routed initially to the first person on-call, then in case of rejection or the time-out limit is reached, it will then be sent to second person on-call. If the Primary person line is busy, PD will still be calling this number. IRIS teams performed a stress test of the PD, generating significant volume of calls, exceeding several times the highest rate which was ever observed. It was confirmed that PD can redirect all of them and that in such situation it is an on-call team who becomes a "bottleneck", not the technology. Option to leave Voice Message within Pager Duty is the best solution to address high peak of calls. On-call team can process them having detailed trace in PD.

PD has many functions supporting handling and escalating incidents. Due to sensitivity of data processed by IRIS as well as dedicated Resilient instance, PD is used only to handle Hotline calls. Every call is recorded as an Incident, which is marked as Acknowledged when on-call person answers it and marked as resolved when call ends. If Hotline call is not picked up, but Voice Message is left, PD will start chasing on-call people from both schedules via phone calls and text messages to notify about phone call (Incident in PD) requiring attention. 

There is one specific case in which PagerDuty will not create an Incident ticket for incoming call: when both on-call assigned people do not answer the call, and the caller does not leave a VoiceMail message. In such a case there is no option to use Incident information to track a hotline call.

Several additional details related to PD:
-   PD IBM instance: [https://ibm.pagerduty.com/incidents](https://ibm.pagerduty.com/incidents), log in using your IBM Intranet credentials.
-   Point of contact inside IBM for support: Bhaskar Roy/Watson/Contr/IBM ([royb@us.ibm.com](mailto:royb@us.ibm.com)) or generic PagerDuty support on IBM side: pagerduty@us.ibm.com
-   Call module direct URL (as it is not available in the menu): [https://pd-live-call-routing.herokuapp.com/account/ibm/06cafe478403a818ca8730f65a9d9c70](https://pd-live-call-routing.herokuapp.com/account/ibm/06cafe478403a818ca8730f65a9d9c70)
-   IRIS PD hotline number: +44 808 178 1527
-   Android and Apple app available as well.

Initial setup was built by Adam Smutnicki (adam.smutnicki@pl.ibm.com) from IRIS EMEA - shall you have any questions reach out to him. 

## Scheduling

On call person is determined using PD Schedules - separate for Primary and Secondary person. Each Schedule consists of three layers, while each layer represents separate geography thus shift. See below picture for reference.

![RESHOT](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/DFIR/PagerDuty_schedule_view.PNG)

People allocation within each layers is constrained to shift timeframe of this geography, eg. Layer 1 represents APAC and allocation is done only for 23:00-07:00 UTC. This results in a fact, that each layer is not allocated in a continuous way. Finally, all 3 layers are concatenated into continuous "Final schedule" displayed on the bottom row of the picture. PD is using a "Final Schedule" layer from each schedule to automatically switch between recipients of Hotline calls. 

Each Layer has a pool of people allocated (from the same geography), who are automatically assigned using Round Robin algorithm. This means, that people are not picking up week which suits them, but they are automatically assigned. This approach removes manual housekeeping work, which was getting complicated as teams were growing. Such approach can lead to a situation, when one will get shift assigned which may collide with future business (eg. customer travel) or private (eg. holiday) plans. In such a case, on-call person is responsible to find a replacement:
- find someone willing to support hotline during colliding period,
- or swap part or whole shift with someone. 
By design, schedules are not modified except adding and removing permanently a member from a rotation pool. To address above problem, PD using a concept of "Schedule override" - it allows to replace on-call person within a schedule by someone else. Such override can be set up in advance, for any time period. Example of such situation is visible in the above screenshot - person from Layer 1 is replaced on 17th June by entry in the "Override Layer". We can see that "Final schedule" contains person from "Override layer" instead person configured in "Layer 1". A common approach among team members is to swap whole weeks when there is a bigger collision, while either use a short override or a Secondary person is Primary person is not available over short period of time, eg. once, just for few hours. 

## Newcomer On-boarding
Every new team member who will be supporting Hotline, must configure his mobile phone and PagerDuty profile according to following steps:
1. Log into [PagerDuty](https://ibm.pagerduty.com/incidents) with IBM Intranet credentials, so your account is created.
2. Populate your PD profile entering your IBM mobile number as "Phone number" - this is a number PD will be calling to.
3. Disable personal Voice Mail on your IBM mobile number.
4. Work with your manager and your regional Pager Duty admin to be added to on-call schedules, which includes:
	- adding person to a Global IRIS team in PD,
	- adding to both L1 and L2 schedules.
5. Check when you're on call for the first time.
6. Set up mobile app for your own usage (optional).
7. Read [Tutorial](#tutorials) section below.

**Disabling personal Voice Mail is critical for Hotline operations**, and everyone should double check that they have it really disabled. Not doing it, can cause severe consequences for IRIS. The last thing we want is a customer leaving message on personal IBM Voice Mail, instead of PD Voice Mail, which is not accessible by other team members. PD Voice Mail has advantage, that everyone can access it and react upon as well as PD will chase other on-call person, which will not happen in case Client leaves message on personal IBM VoiceMail. 

A common practice, is to put new on-call person first as Secondary, allowing him/her to get familiar with Hotline support activity. 

For details on above steps, refer to a guide on how to initially set up your PD account [below](#setting-up-your-environment-for-the-first-time).

## Daily Operations

Intro for a caller
Message that this is PD calling
Caller phone number pass through and issue with NA

## Tutorials

### Setting-up Your Environment for the First Time

Make sure you have our IRIS team enabled in the right cornet, to see only IRIS related configuration.


### Working with PD Incidents to Track Hotline Calls

### Handling Voice Messages
PD will chase - already mentioned.
One can listed over web or via mobile app.

### Using Calendar Feeds to Track On-call Schedule

### Checking Who Is Currently On-call

### Creating Overrides

Don't edit main schedule, the aim is to have it populated automatically without a need to amend every cycle.
    -   On-time changes are performed to address mentioned need for a backup/swap of week - use an '**override**' function in a schedule:
        -   Click sprocket icon for main schedule and choose 'Edit'.
        -   In the right corner of page there is a button 'schedule an override'. Fill in necessary details.
        -   Edit and save schedule.
    -   To swap weeks, just schedule 2 overrides.

Since Follow the Sun configuration was introduced, number of people who can schedule an override has been limited to ensure some level of protection against mistakes. Currently, overrides can be set up by anyone having a 'Manager' or 'Responder' role (see a list of names below) - chase any of them to get override set up for you.
