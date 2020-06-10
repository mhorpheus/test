# IRIS Incident Response Spin-Up Process

The purpose of this page is to document the IRIS Incident Response Service Spin-Up process and procedures.

Once IRIS has been engaged for Incident Response services regardless of the scope and size of that effort there are some fundamental procedures that are required for every IR engagement. In addition to the basic IR engagement spin-up, and depending on several factors, there are a number of procedures that could also apply to your engagement that will be documented here.

The following documentation is a guideline for IRIS consultants for the IRIS Incident Response Spin-Up process and is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](https://github.ibm.com/IRIS-NA/DFIR-wiki/blob/master/Home.md)).

## Table of Contents

 1. [**General IR Spin-Up Procedures**](#general-ir-spin-up-procedures)
	 - [Engagement Box Folder](#engagement-management)
	 - [Engagement Slack Channel](#engagement-slack-channel)
	 - [Resilient Engagement Ticket](#resilient-engagement-ticket)
	 - [Intel Engagement Ticket](#intel-engagement-ticket)
 2. [**Situational IR Spin-Up Procedures**](#situational-ir-spin-up-procedures) 
	 - [Client Data Transfer](#client-data-transfer)
	 - [Technology Deployment](#technology-deployment)
	 - [Data Acquisition](#data-acquisition)
	 - [OnSite Support](#onsite-support)
	 - [Forensic LAB Support](#forensic-lab--support)

# General IR Spin-Up Procedures

When a client or potential customer engages IRIS for incident response services there are steps required on the back end to ensure that process is accurate and efficient. Certain aspects of the IR Spin-Up process are variables depending on the type of engagement. However, there are some items that need to be completed regardless of those variables.

 1. Set up the [Engagement Box Folder](#engagement-management); this is important to establish DFIR engagement management and proper documentation. The Engagement Box Folder will be the central repository for all DFIR data regarding the IR engagement. 

The Engagement Box folder is NOT for client data transfers. For more information on establishing data transfer between IRIS and clients see the ***Client Data Transfer*** section.

2. The [Engagement Slack Channel](#engagement-slack-channel) is required for communication with other IRIS members, engagement management, and general analysis information and tasking. 
3. Update the [Resilient Engagement Ticket](#resilient-engagement-ticket) early and often. Resilient is the primary client and engagement management tool we use at IRIS. 

We log and track hours, reporting and QA tasks, communications between IRIS and the client, engage Intel and much more using Resilient. Visit the [Resilient Overview](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/IRIS-Resilient) for more information.

4. Every IR engagement requires an [Intel Engagement Ticket](#intel-engagement-ticket). When we engage Intel for malware analysis, dark-web analysis, or any other Intel specific task related to an IR engagement, that work needs to be tracked and associated with an `Engagement Work` Intel ticket. 

## Engagement Box Folder

The Engagement Box Folder is a requirement for every engagement regardless of the size and scope of that IR engagement. The intent and purpose of this Box folder is to provide a repository for various data points and engagement tracking documents that are integral for proper documentation and engagement management function.

The Engagement Box Folder should only be used DFIRly and should only include data that is relevant to the current IR engagement. If your IR engagement requires a Box folder for data transfer between IRIS and the client, a separate Box folder should be established to facilitate that data transfer, and proper access controls should be implemented to ensure access is granted only to people who have a legitimate need to access that data. For more on Box as a client data transfer mechanism see the ***Client Data Transfer*** section below.

The steps for creating an Engagement Box Folder are outlined below:

 1. Browse to the URL [https://ibm.ent.box.com/folder/0](https://ibm.ent.box.com/folder/0)

*Note: You will need to be on IBM VPN to access your Box account.*

Once you've authenticated you should see something similar to the following:

<img src="https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/IRIS-Box.png" width="650">

 2. Navigate to the `0-Active Engagements` Folder

All Engagement Box Folders should be created within the `0-Active Engagements` Box folder. The purpose of this is to logically separate Box folders that are shared with clients or other non-engagement related data.

 3. Select the additional options for the `0-Engagement Template Folder` at the top if sorted by "Name"

<img src="https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/IRIS-Box-Template-02.png" width="650">

 4. Select  `Move or Copy` from the options menu

<img src="https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/IRIS-Box-Template-03.png" width="250">

 5. You will be presented with options to Move or Copy the `0-Engagement Template Folder`. Select `Copy` and a folder named `0-Engagement Template Folder (1)` will be created with all of the template folders and ***Engagement Tracking Sheet*** included.

<img src="https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/IRIS-Box-Move-Copy.png" width="500">

 6. Rename the newly copied folder `0-Engagement Template Folder (1)` to the relevant name for your engagement (example: `IR19-1337`). Click the "Rename" icon next to the folder name.
 
*Pro-Tip: You can get the ticket number for your engagement from the Resilient Ticket that was created during the Hotline or Triage process*

![Rename](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/IRIS-Box-Rename.png)

<img src="https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/IRIS-Box-Rename-02.png" width="335">

 6. Once you have renamed the template folder you will see the Box Folder named with your IR ticket number which has predefined sub-folders for engagement management purposes as well as a blank IRIS engagement tracking sheet.

![Engagement Box Folder](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/IRIS-Box-Template-04.png)

 
## Engagement Slack Channel

The Engagement Slack channel is extremely important during an IR engagement. This is where the team communicates tasking, findings from analysis, and generally coordinates the engagement management and incident response effort. 

When creating your Engagement Slack channel make sure you are in the `X-Force IRIS` Slack workspace `x-forceiris.slack.com`

![Slack](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Slack_02.jpg)

1. Within the `Channels` side menu click on the `+`

![Slack](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Slack_01.jpg)

2. Select the `Make Private` option and give your channel a name and description. The name should be the same as the Resilient Engagement Entry

![Slack](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Slack_03.jpg)

Once the channel is created you will be able to add additional IRIS members to the channel and begin communicating. It is important to communicate effectively in the Slack channel for an engagement to reduce the chances of important information getting lost.

Here are some general rules to help keep the clutter down and to avoid potential issues:

 - Use `Threads` in your engagement channel. This will help keep the noise down as well as resolve potential issues with information taken out of context.
 - Keep topics not related to the engagement out of the main engagement channel
 - Limit the members of your engagement channel to the members that need to know
 - When posting analysis findings do not post a wall of text. If the data is longer than a paragraph of textual data just upload that to the channel in a text document and then provide the context about that finding in a comment.
 - Do not post sensitive client information in the engagement channel. Use your best judgement and follow best practices for handling of data this includes but is not limited to:
	 - PII/PHI
	 - PCI/Track Data
	 - Client Data/Documents of proprietary nature
- When posting URLs or IP addresses from analysis findings make sure you aren't posting a "Hot Link" that someone could potentially click on.
	- IP addresses should be "de-fanged" or formatted: `192[.]168[.]45[.]22`
	- URLs should not be "clickable": `hxxp://yahoo[.]com`

## Resilient Engagement Ticket

Updating the `Resilient Engagement Ticket` is the primary engagement management function required from end-to-end on any IR engagement. If the client is engaging us after they called the Hotline there should already be `Hotline Triage` ticket at this point. If this is the case, simply add the `IR` tag and make sure the `Triage Worksheet`, `Notes`, and `Engagement Members` are updated.

If the client has engaged us through other means you will need to create an engagement ticket. For more information on the `IR Ticketing Process` go [here](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/IRIS-IR-Resilient).

For more information on Resilient in general visit the [Resilient Overview](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/IRIS-Resilient) 

Some general rules and best practices for engagement management in Resilient:

 - Update hours associated with an engagement project everyday. It is difficult for the `Engagement Lead` to properly manage resources and tasking when the consumption of hours are not accurately recorded in a timely fashion.
 - Use the `Notes` tab to record significant developments within the engagement project. It is recommended to log significant client communications and engagement tasking within the `Notes` tab. 
 - Use the attachments tab to upload status updates, draft and final reports, as well as the engagement tracking sheet periodically or upon completion of the IR engagement.

## Intel Engagement Ticket

All IRIS engagements of the type `IR` require an initial `Engagement Work` Intel ticket. Intel uses Jira for ticketing and associates additional tickets created in support of an engagement with this initial `Engagement Work` ticket. For example, if you submit three malware analysis tickets for your engagement, Intel will track the relationship between those tickets through the initial Intel ticket.

This makes the task of tracking those tickets easier for Intel and facilitates better workflow between IR consultants and Intel analysts working on an engagement together. IRIS uses functionality within Resilient to create and associate these tickets with our client engagements. For more information see the [Intel Analysis Ticketing](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/IRIS-IR-IntelTicketing) section.

# Situational IR Spin-Up Procedures

No two IR engagements are the same, some will require additional infrastructure and considerations to support the effort. For example, the client might prefer to use their own data transfer solution instead of ours (*Box/Aspera*). The engagement could require deployment of Endpoint Detection and Response (EDR) technology or in some cases, just analysis of logs or forensic images.

You may need to perform one or more of these additional spin-up processes and not necessarily in any particular oder or timeframe depending the dynamic nature of incident response. 

1. [Client Data Transfer](#client-data-transfer)
2.  [Technology Deployment](#technology-deployment)
3. [Data Acquisition](#data-acquisition)
4. [On-Site Support](#on-site-support)
5. [Forensic LAB Support](#forensic-lab--support)

## Client Data Transfer

In most cases, you will need to establish some method of secure data transfer with the client. If the client does not wish to use their own data transfer method we can use Box or Aspera to facilitate the transfer. If the client does not wish to share data remotely for security or privacy concerns, we can suggest other methods such as shipping data to the [Forensic LAB](#forensic-lab-support) on encrypted medium, or [OnSite Support](#onsite-support). In either case, it is our duty to handle client data in a secure manner and adhere to local

It should be noted that Box and Aspera have different file size and bandwidth limitations. Your choice of solution could be driven by those factors.

- Box
	- Maximum File Size: 
	- Bandwidth Limitations: 
- Asper

The following is a guide for setting up and sharing a data transfer folder with your client:

 - [Client Data Transfer via Box](#client-data-transfer-via-box)
 - [Client Data Transfer via Aspera](#client-data-transfer-via-aspera)

### Client Data Transfer via Box

Setting up Box for data transfer is simple and secure. If your client has questions about data privacy and security as it relates to Box you can refer them to the official [Box Security Whitepaper](https://cloud.app.box.com/s/igvy6orjgbhg8oxjn967s54x4py23st9). If the client needs additional information about IBM or IRIS specific data security and privacy procedures check the ***Data Privacy and Retention*** page for more resources.

To create a new Client Data Transfer folder use the following instructions:

1. Browse to the URL [https://ibm.ent.box.com/folder/0](https://ibm.ent.box.com/folder/0)

*Note: You will need to be on IBM VPN to access your Box account.*

Once you've authenticated you should see something similar to the following:

<img src="https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/IRIS-Box.png" width="650">

2. Create a folder within the root of your Box access `https://ibm.ent.box.com/folder/0` and name it accordingly. You can do this by selecting `New` from the options in the upper right hand of the page and select `Folder`

![New](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Box_Client_01.png)

3. Name the folder accordingly and then add the relevant contacts from your client and hit `create`. Make sure to set the permissions to `Viewer Uploader` unless you specifically need the client to have editing functionality.

![New](https://github.ibm.com/IRIS-NA/DFIR-wiki/wiki/DFIR/Box_Client_02.png)

Once you've created the folder, whoever you shared the folder with will receive an email informing them of your collaboration folder and a link to Box. They will then need to either create a free Box account using the same email or authenticate to an existing Box account under that email.

You can always add or remove additional collaborators and change permissions for users within a Box folder. It is best practice to limit the collaborators to individuals who have a need to know and handle the subject data. 

Once the engagement is complete and unless data retention is requested by the client or client's counsel. The data transfer folder should be deleted. For specific information regarding IRIS data retention policy see the ***Data Privacy and Retention*** page.

Other Box considerations and tips:

 - Turn on upload/download notifications for your data transfer folder to receive email alerts when someone uploads or downloads a file.
 - If a specific file is relevant to other IRIS members on your engagement, consider copying that file to the `Data Provided by Client` folder within the `Engagement Box Folder` for your engagement instead of adding and managing permissions on the data transfer folder.
 - The client data transfer folder is simply a mechanism for clients to provide data to IRIS remotely and securely and should not be used as a "working" folder. One exception to this could be a shared Box note or document between IRIS and the client for syncing tasks and efforts.

### Client Data Transfer via Aspera

## Technology Deployment

## Data Acquisition

## OnSite Support

## Forensic LAB Support
