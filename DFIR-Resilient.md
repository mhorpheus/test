

# X-Force IR Resilient Ticketing Process

## Table of Contents
1. **[Introduction](#Introduction)**
2. **[Logging Hotline Call](#Logging-Hotline-Call)**
TO BE POPULATED

## Introduction
**TO BE POPULATED and cleaned**

The purpose of this page is to document the X-Force IR ticketing process for resilient.

Once X-Force IR has been engaged for Incident Response services regardless of the method we are engaged, a Resilient IR engagement ticket needs to be created or updated.

The following documentation is a guideline for X-Force IR consultants for the X-Force IR Resilient ticketing process and is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/Home.md)).

Resilient is the application X-Force IR uses for client tracking and engagement ticketing. 

## Logging Hotline Call
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
	- Expectations: Fill in what client is asking for (eg. on-site, remote, IR, only forensics, what are the investigation goals, etc).
- Members tab:
	- Owner/Account manager: on call person receiving the call. The incident is owned by this person, unless it is handed over to someone else from same or other geography. This should not be Account Manager (IRIS consultant assigned to this customer).
	- Members/Engagement Leads: 
		- Add Account Manager person for this particular Client to ensure that he/she is informed about new engagement. 
			- In EMEA all Clients have "Owner / Account Manager" set to Neil Jones, who is IRIS EMEA Ops Manager. The Account Manager who should be added to every new incident ticket is listed as "Members / Engagement Leads" in Resilient Client ticket. 

Fill in remaining fields depending on availability of information.

## DRAFT SECTION



### IR Ticketing in Resilient
Incident Response engagement opportunities can come to X-Force IR in various ways. The most common flow for IR ticketing is to simply update the Hotline Triage ticket including the `IR` tag and some additional information regarding the goals and objectives of the engagement. In other cases an IR ticket will need to be created from scratch if the engagement came through different means.

The following sections will describe the process for creating a ticket or updating a current ticket.

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

### Creating a Ticket

If an IR comes in through other means (Adhoc, business relationship, direct to X-Force IR delivery lead, etc) a Hotline Triage ticket may not have been created previously and you will need to create the ticket from scratch.

If the client is Adhoc or otherwise does not currently exist in the Resilient database you will need to create the client entry first. Please reference the general Resilient instructions for creating a client entry [here](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/IRIS-Resilient).

If the client entry already exists in the Resilient database you can simply move to the ticket creation process outlined below:

1. Click the `Create` button at the top of the main Resilient page.

![IRTAG](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline03.png)

2. In the `Ticket Type` field select `Engagement Project`.

![IRTYPE](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline04.png)

3. In the `Region` field select the appropriate region that correlates with the client's region.

![IRREGION](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline05.png)

4. In the `Client` field type or select the client entry associated with the respective client.

![IRCLIENT](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline06.png)

5. In the `Engagement Type` field select `IR` and then add a description for the IR that includes how X-Force IR was engaged and the goals of the engagement.

![IRTYPE](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline07.png)

6. In the `Request Intel Support` field select `Yes`. All engagements of the type `IR` require an initial Intel Ticket for engagement support. This helps Intel facilitate the correlation of other tickets that might be required for an IR such as (Malware, DarkWeb Analysis, etc).

![IRINTEL](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline07.png)

Once you have completed filling out these fields click `Next` to create the ticket. It is highly recommended to be detailed when describing the expectations and objectives of the IR Engagement.

Consider adding a Resilient Note to include a detailed synopsis of the engagement expectations and goals including initial steps taken thus far.
