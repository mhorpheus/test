
# IRIS Incident Response Intel Analysis Ticketing Process

The purpose of this page is to document the IRIS Incident Response ticketing process for Intel support.

During an Incident Response engagement as the need for various Intel services or support arises, you will need to create a ticket for those support services including Malware Analysis, DarkWeb Analysis, Engagement Support, etc.

The following documentation is a guideline for IRIS consultants for the IRIS Incident Response Intel ticketing process and is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/Home.md)).

 - [**Intel Support**](#intel-support)  
 - [**Intel Ticketing in Resilient**](#intel-ticketing-in-resilient) 
 - [**Creating an IR Ticket with Intel Support**](#creating-an-ir-ticket-with-intel-support)
 - [**Creating an Intel Ticket for an Existing Resilient Engagement Ticket**](#creating-an-intel-ticket-for-an-existing-resilient-engagement-ticket)
 - [**Creating a Malware Analysis Ticket**](#creating-a-malware-analysis-ticket)

## Intel Support
Intel supports IRIS during our engagements through various services IRIS consultants can leverage including dedicated intel analyst support for IR engagements, malware reverse engineering, dark web analysis, and more. 

Intel uses Jira for their ticketing process and to engage intel a Jira ticket must be created for that support. The good news is that most of that can be completed through the Resilient ticket for your IR engagement. 

In some scenarios you might need to provide additional details or update a ticket with new information. And in those use cases access to Jira may be required. The Jira portal can be accessed [here](https://jira.sec.ibm.com).

## Intel Ticketing in Resilient
The most common method for engaging Intel for direct support on your IR engagement is to create an Intel ticket within Resilient. If you are creating the IR engagement ticket as well, there is an option for creating an Intel ticket and automatically associating that ticket with your IR ticket.

If there is already a `Hotline Triage` ticket and the client has engaged IRIS for IR services. After you have updated the Resilient ticket with the `IR` tag and provided additional details surrounding the engagement, you can create a separate Intel ticket and correlate that with your IR engagement.

Both of these scenarios are documented in the following sections.

## Creating an IR Ticket with Intel Support

In the case where you want to create an IR ticket and an Intel ticket at the same time use the following instructions:

Click the `Create` button at the top of the main Resilient page.

![IRTAG](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline03.png)

2. In the `Ticket Type` field select `Engagement Project`.

![IRTYPE](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline04.png)

3. In the `Region` field select the appropriate region that correlates with the client's region.

![IRREGION](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline05.png)

4. In the `Client` field type or select the client entry associated with the respective client.

![IRCLIENT](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline06.png)

5. In the `Engagement Type` field select `IR` and then add a description for the IR that includes how IRIS was engaged and the goals of the engagement.

![IRTYPE](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline07.png)

6. In the `Request Intel Support` field select `Yes`. All engagements of the type `IR` require an initial Intel Ticket for engagement support. This helps Intel facilitate the correlation of other tickets that might be required for an IR such as (Malware, DarkWeb Analysis, etc).

![IRINTEL](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline08.png)

Once you have completed filling out these fields click `Next` to create the ticket. A corresponding Intel ticket will be created and associated with your Resilient IR ticket.

![IRINTEL](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel01.png)

This step is important as any additional Intel tickets created for an engagement will be associated in Jira with the initial Intel support ticket that is created. This helps Intel keep track of relationships between different tickets.

## Creating an Intel Ticket for an Existing Resilient Engagement Ticket

In the case where an IR engagement ticket has already been created or you need to update an existing Hotline Triage ticket to include the `IR` tag when a client engages us, use the following instructions for creating an associated Intel ticket.

1. Click the `Create` button at the top of the main Resilient page.

![Create](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline03.png)

2. In the `Ticket Type` field select `INTEL Ticket`.

![Type](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel02.png)

3. In the `Region` field select the appropriate region that correlates with the client's region.

![IRREGION](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline05.png)

4. In the `Type of Intel Support` field select the appropriate Intel ticket type.

![Type](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel03.png)

Currently the options are:

 - Engagement Work - Request an INTEL resource for IRs, FORs, ATAs, Dark Web Analysis, etc.
- Malware Analysis - Submit a malware analysis request.
- Production Work - Request for a STA

If this is the first Intel ticket that will be associated with your IR engagement choose the `Engagement Work` Intel ticket type. This is highly recommended to help Intel keep track of associated tickets. Even in the case where all you need is malware analysis, or dark web analysis, it helps Intel keep track of tickets on their end if there is a "Master" ticket for each engagement that they can then associate additional tickets with.

5. In the `Related Resilient Engagement` field type the Resilient ticket ID for your IR engagement. (`IR19-3818` for example). And provide a brief but detailed description in the `Description` field.

![Description](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel04.png)

6. In the `(Intel) Type of Engagement` field select `IR - Incident Response` as this documentation is for the IR Intel ticketing process and you are creating an initial `Engagement Work` ticket for your IR engagement.

Fill out the `Client` detail field and provide a more detailed description in the `(Intel) Description` field. This description needs to include the specific ask(s) from Intel. Why are we requesting support and what are the details of the IR so that Intel can assign the appropriate resource.

Finally, fill out the `(Intel) Engagement Data URL` with the URL for the Engagement Box folder.

![TypeClientDetails](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel05.png)

Repeat this process if there is already an engagement work ticket for your IR (All engagements of the type `IR` are required to have an Intel `Engagement Work` ticket) and you need to create a ticket for malware analysis, dark web analysis, etc. On the backend in Jira, Intel will be able to correlate those additional requests for their tracking purposes.

## Creating a Malware Analysis Ticket

In the case where an you need to create a Malware Analysis Intel ticket please use the following instructions:

1. Click the `Create` button at the top of the main Resilient page.

![Create](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline03.png)

2. In the `Ticket Type` field select `INTEL Ticket`.

![Type](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel02.png)

3. In the `Region` field select the appropriate region that correlates with the client's region.

![IRREGION](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Hotline05.png)

4. In the `Type of Intel Support` field select `Malware Analysis`. In the `Related Resilient Engagement` field enter the Resilient Ticket ID for your IR engagement (`IR19-3818` for example).

Enter a brief but detailed description in the `Description` field.

![Type](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel06.png)

5. In the `Work ID` field input the ILC bill code for your project, select the analysis level in the `(Intel) Level of Malware Analysis` field and provide any additional details you have for the sample (MD5, Sandbox URL, Maximum number of hours to consume, Due Date, and Engagement Box URL)

![Type](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel07.png)

For the `(Intel) Level of Malware Analysis` field please use the detailed descriptions for each level outlined below:

 - **Level 0** - *Automated sandbox run. - For people who don't have access to the sandbox or just want runs with no context - Link to sandbox run or other output from tools in the JIRA ticket.*
 - **Level 1** - *Quick Triage Report  - Leverage automation and dynamic analysis to pull out tactical information to support an investigation or extract indicators without an in-depth explanation. Tactical indicators returned  in the JIRA ticket or in a report only if requested.  This should be a first step output for any IR engagement request.*
 - **Level 2** - *Full Malware Report  - Identify and explain the relevance of indicators, characteristics, commands and behaviors of the malware in the requested time-frame. Provide as much context as possible in the JIRA ticket to direct or guide the analysis.  Examples of relevant context includes where the file was found or it's interactions with other potential files on the compromised system, other samples or tickets that might be related, suspected identification and any relevant open source reporting or information.  If a specific malware feature such as C2 commands, encryption details or network communications should be the primary focus, that should be indicated in the request as well. Resource intensive, primarily utilized to support a paying customer.*
 - **Level 3** - *Targeted Capability Creation and Full Malware Report - Create signatures, parser, decoders as requested or as relevant to support automation efforts around processing the malware. Provide as much context as possible in the JIRA ticket to direct or guide the analysis.  Suspected identification and any relevant open source reporting or information should be provided.  If a specific malware feature such as C2 commands, encryption details or network communications should be the primary focus, that should be indicated in the request as well. This can be very resource intensive.*
 - **Level 4** - *Focused Effort  - Answer a specific question or set of questions about a particular piece of malware or provided sample.  This report type should is best used to create/fix/update a targeted script or capability or as a follow-on to a previous effort to answer a discrete set of questions.  A full analysis report may or may not be necessary depending on the circumstances.  This ticket type can be used for a follow on request to previous analysis. This request can be used to support an external investigation, automation efforts, or hunting and research. Provide as much context as possible in the JIRA ticket for the specific request.  If a grouping of samples is submitted for targeted capability development provide any relevant open source reporting or possible categorizations (dropper, loader, trojan etc...) along with the requested capability (YARA signature, configuration parser etc...).  Additional examples of requests might be to: update a script to decrypt additional variants, provide details of a specific malware feature such as C2 commands, encryption details or network communications, or confirm it is the same as this open-source malware and if not conduct full L2 analysis. Resource level varies.*

6. Click `Next` and your Intel Malware Analysis ticket will be created. At this point you have created the ticket for analysis however, you will still need to attach the malware sample(s) to the ticket.

If you return to the main Resilient Engagement Ticket that you created the Malware Analysis ticket in support of, you will see the new ticket in the `Related Tickets and Clients` section of the Engagement Ticket. 

![RelatedTickets](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel09.png)

7. Select your newly created Intel ticket and add sample(s) on the `Attachements` tab.

![Attachments](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Resilient_Intel08.png)

If you need to add additional samples at a later time, you can always add additional attachments to this tab and the corresponding Jira ticket will be updated. This also works for the `Notes` tab. If you need to provide additional details surrounding the malware you can create a note in the `Notes` tab and that information will be updated on the Intel Jira ticket.
