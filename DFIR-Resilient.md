# X-Force IR Resilient Ticketing Process

## Table of Contents
1. **[Introduction](#Introduction)**
2. **[Logging Requirements for New IR Engagements](#Logging-Requirements-for-New-IR-Engagements)**
3. **[Populating Subscriptions Hours Usage](#Populating-Subscriptions-Hours-Usage)**
4. **[Tutorials](#Tutorials)**
	- [Creating New Engagement Ticket](#Creating-New-Engagement-Ticket)
	- [Creating New Client Ticket](#Creating-New-Client-Ticket)
	- [Checking Number of Remaining Subscription Hours](#Checking-Number-of-Remaining-Subscription-Hours)

## Introduction
The purpose of this page is to document the X-Force IR ticketing process. X-Force IR uses customized Resilient instance to:
- track Client entries containing different types of contact points,
- track Client subscription details, including number of remaining subscription hours,
- track every single engagement.

Once X-Force IR has been engaged for Incident Response services regardless of the method we are engaged, a Resilient IR engagement ticket needs to be created.

The following documentation is a guideline for X-Force IR consultants for the X-Force IR Resilient ticketing process and is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/Home.md)).

X-Force IR Resilient instance is located here: https://xforce-iris.resilientsystems.com. Use w3 IBM Intranet credentials to log in.

## Logging Requirements for New IR Engagements
Following fields must be populated while logging New IR Engagement (this means that some fields needs editing after Resilient ticket was created):
- Engagement Details tab:
	- Description:
		- a **brief** description of incident, eg. "A BEC in UK" or "Ransomware outbreak in the factory in Austria".
		- Do **not** use multi sentence/multi line descriptions. There are separate fields where you can add more text.
		- there is no need to add client name, as there is a separate field dedicated for it.
	- Engagement type: "IR".
	- Region: Fill in with correct value.
	- Client: Client this incident is assigned to. For Ad-hoc incidents, a new Client ticket should to be created.
	- Points of contact: fill in contact point details such as name, phone number and mail to most important people from Client side.
- Triage worksheet tab:
	- Contact information: if ticket is created as a result of a Hotline call, details of a person calling Hotline should be filled in here.
	- Incident Details:
		- Discovery: how incident was discovered.
		- Date discovered: timestamp of a hotline call
		- Hotline quick notes: provide description of incident based on information from person calling hotline.
	- Expectations: Fill in what client is asking for (eg. on-site, remote, IR, only forensics, what are the investigation goals, etc).
- Members tab:
	- Owner/Account manager: on call person receiving the call. The incident is owned by this person, unless it is handed over to someone else from same or other geography. This should not be Account Manager (IRIS consultant assigned to this customer).
	- Members/Engagement Leads: 
		- Add Account Manager person for this particular Client to ensure that he/she is informed about new engagement. 
			- In EMEA all Clients have "Owner / Account Manager" set to Neil Jones, who is IRIS EMEA Ops Manager. The Account Manager who should be added to every new incident ticket is listed as "Members / Engagement Leads" in Resilient Client ticket. 

Fill in remaining fields depending on availability of information.

## Populating Subscriptions Hours Usage

## Tutorials

### Creating New Engagement Ticket
This process is responsible to create an IR Engagement ticket, which then should be populated further with available information. To create a new ticket (screenshot with example provided below):
 1. Click "Create" from top horizontal menu in Resilient.
 2. Choose "Ticket Type": "Engagement Project"
 3. Fill in correct "Region"
 4. Find Client name from base of existing entries (start typing for suggestions). For Ad-hoc cases, a new Client Entry needs to be created to be able to pick it up. This is not "type value" field.
 5. Pick up "IR" tag from "Engagement type" field.
 6. Description - a brief, high level statement of what kind of incident it is. Follow guidelines from [Logging Requirements for New IR Engagements](#Logging-Requirements-for-New-IR-Engagements) section.
 7. "Name" under "Notes" is automatically populated to just enter some random value.

Example:
![RESHOT](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_New_IR_Engagement.png)

All other fields needs to be populated after ticket is created.

### Creating New Client Ticket

### Checking Number of Remaining Subscription Hours

## DRAFT SECTION



### IR Ticketing in Resilient



### Updating a Ticket

Most of the time you will be updating an existing Resilient Hotline Triage ticket after the client has engaged us to perform incident response services. 

1. Identify the Resilient Hotline Triage ticket assigned to the current project.

![RESHOT](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline.png)
 
2. On the `Engagement Details` tab of the Hotline Triage ticket click the `Edit` button.

3. Add the `IR` tag to the `Engagement Type` field.

![IRTAG](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline02.png)

4. Add additional details to the description regarding the engagement goals.
5. Add a Note on the `Notes` tab with more details regarding the type of IR and initial response actions required by the client

Be detailed in your descriptions and notes. Are we going to be deploying technology? If so, what type of tech? How many endpoints? Be specific when defining the goals established between X-Force IR and the client on the Triage call.