# X-Force IR Incident Response Spin-Up Process

## Table of Contents
1. [**Introduction**](#Introduction)
2. [**Setting up Collaboration Environment**](#Setting-up-Collaboration-Environment)
	- [Internal X-Force IR Working Environment](#Internal-X-Force-IR-Working-Environment)
	- [Environment for Data Sharing with a Client](#Environment-for-Data-Sharing-with-a-Client)
3.  [**Threat Intel Support**](#Threat-Intel-Support)
4. [**Endpoint Detection and Response Deployment**](#Endpoint-Detection-and-Response-Deployment)
5. [**Tutorials**](#Tutorials)
	- [Slack](#Slack)
	- [IBM Box Folder for Case Data](#IBM-Box-Folder-for-Case-Data)
	- [IBM Box Folder for Digital Evidence](#IBM-Box-Folder-for-Digital-Evidence)
	- [Aspera](#Aspera)
		- [Creating a Folder for an Aspera Upload](#Creating-a-Folder-for-an-Aspera-Upload)
		- [Troubleshooting Aspera](#Troubleshooting-Aspera)

## Introduction
The purpose of this page is to document the X-Force IR Incident Response Service Spin-Up process and procedures. This is is a living document. If there is something you want to see documented here or explained with further detail please contact your geographic Functional IR Lead (listed on the  [Homepage](Home.md)).

Once X-Force IR has been engaged for Incident Response services regardless of the scope and size of that effort there are some fundamental procedures that are required for every IR engagement. In addition to the basic IR engagement spin-up, and depending on several factors, there are a number of procedures that could also apply to your engagement that will be documented here.


## Setting up Collaboration Environment
All technical details describing how to perform the steps required in this section and best practices on using them, are described in the [Tutorials](#Tutorials) section at the bottom of this page.

### Internal X-Force IR Working Environment
Proceed with the following steps to set up a working environment for collaboration within X-Force IR (all steps are obligatory, unless stated otherwise):
1. Create a central repository for all data related to this IR engagement, by creating a dedicated IBM Box folder:
	- do **not** use this folder for digital evidence storage, to share data with the Client or any third party! This topic is addressed separately in section [Environment for Data Sharing with a Client](#Environment-for-Data-Sharing-with-a-Client).
	- use a template: "IR_Engagement_Folder_Template_DONOTMODIFY" (simply using copy option in Box) for the case folder structure from [here](https://ibm.ent.box.com/folder/63956024543),
	- create a case folder in a location specific for each geography: [EMEA](https://ibm.ent.box.com/folder/41834082550), [NA](http://TO_BE_POPULATED), [APAC](http://TO_BE_POPULATED).
	- rename template of the case folder to a case number: 'IRXX-YYYY (uppercase!; do not append anything in the folder name after a case number),
	- see [tutorial](#IBM-Box-Folder-for-Case-Data) below.
2. Download Evidence Tracking Sheet (ETS) Template from [here](DFIR/IBM%20X-Force%20IR%20Engagement%20Tracking%20Sheet.xlsx) and place is the IBM Box case folder created in the previous step (root of the case folder).
3. Create a dedicated channel for this engagement within X-Force IRIS Slack workspace for regular communication about the case:
	- channel name must be equal to a case number - "irXX-YYYY" (Slack channels are always named with lowercase letters),
	- Post a message called "Administrative notes" on the Slack channel and pin it. Include following information into a note:
		- who is a case lead,
		- if there are any, current hours usage constraints,
		- frequency of hours reporting in Resilient.
	- for small engagements, where there is only one person assigned and working individually, there is no need to create a Slack channel,
	- follow usage recommendation listed in the [tutorial](#Slack) below.
4. Grant access to consultants assigned to this case:
	1. Populate an "Owner" field in Resilient with Case Lead name.
	2. Populate "Members" field in Resilient with consultants assigned to this case.
	3. Add people to Slack channel from X-Force IR or TI or RE teams.

### Environment for Data Sharing with a Client
Remote Evidence Collection, together with all supporting materials, is documented on the [Digital Evidence](DFIR-Digital-Evidence.md) page.
Evidence Delivery in most of the cases is performed over the Internet. The best option is when Client shares evidence using their own infrastructure taking over the responsibility for data sharing process and data security. However, often they do not have sufficient capabilities. For this reason X-Force IR offers one or more of below methods:
1. dedicated IBM Box folder for evidence upload (this is not same as the case IBM Box folder created above):
	- is an ultimate target for evidence - all evidence should be finally put into this folder (eg. uploaded with Aspera),
	- maximum file size: 32 GB,
	- "need to know" privilege implemented by adding only X-Force IR consultants working for this case,
	- folder must be named "IRXX-YYYY-Evidence" in the root folder of a consultant's IBM Box:
		- invite only X-Force IR people working on this case with "Co-owner" rights,
		- do **not** create it within a team shared part of IBM Box,
	- create an "IRXX-YYYY-Evidence/Client Upload" folder for Client originating upload:
		- files uploaded by Clients to "IRXX-YYYY-Evidence/Client Upload" can be moved to "IRXX-YYYY-Evidence" folder to limit extensive access,
		- invite people for an upload with "Previewer Uploader" rights, so they confirm that files have been uploaded, but can not do much beyond that,
	- do not send Box invites to free email providers (eg. Gmail, Hotmail) as they are banned from accessing IBM's Box and will violate IBM ITCS300 Security Policy.
	- see [tutorial](#IBM-Box-Folder-for-Digital-Evidence) below.
2. IBM Aspera folder (optional):
	- folder must be named “IRXX-YYYY-Evidence”,
	- should be considered ONLY for transition as data will be deleted after 7 days:
		- make sure smaller files (under Box size limit) are uploaded directly to Box,
		- for larger files (above Box limit), download them from Aspera, split into chunks (eg. with 7zip) and upload to IBM Box,
	- invite only X-Force IR people working on this case, assigning them "Edit" rights in the Aspera menu,
	- invite Client representatives:
		- always attempt to invite people by email, assigning them only the following rights: "Browse", "Upload files" and "Create folders",
		- whenever possible, try to avoid using "Shared links" as once a shared link is created the permissions cannot be downgraded and upload is anonymous (try to use send invites as mentioned in the above point).
	- other considerations:
		- practical file size limit is 5TB,
	 	- requires Web Browser plugin and software installation,
	 	- may require some firewall changes on a Client side (see [Troubleshooting Aspera](#Troubleshooting-Aspera) below),
		- do not use Aspera "Package" option, as it is deleted immediately after successful download, making it impossible to forward to another X-Force IR consultant. Always use "Files" option.
 	- see [tutorial](#Aspera) below.
3. NA only: Forensics Lab.

Currently, none of the available tools are GDPR compliant. Alternatively, digital evidence can be physically shipped to a X-Force IR consultant or NA Forensics Lab. If Clients do not agree to share digital evidence outside it's location, the only available solution would be on-site support.

### Threat Intel Support
Threat Intel (TI) and Reverse Engineering (RE) teams provide support for IR engagements. "Intel Engagement" ticket must be created for every IR ticket in Resilient irrespectively of decision whether TI/RE support is needed or not. It is done to ensure the TI team has necessary visibility into IR engagements, thus is able to process the outcome from IR work. "Intel Engagement" tickets should have already been created during creation of the new IR tickets (should this not be a case, it can be created following [this](DFIR-Threat-Intel.md#Creating-Intel-Engagement-Ticket) tutorial).

 It is a Case Lead's responsibility to determine whether TI or RE assistance is required. Requesting RE assistance automatically means that TI need to be engaged. Please follow detailed guidelines documented in [this](DFIR-Threat-Intel.md#Requesting-TI-Support-for-IR-Engagements) section to engage TI for IR case. Additionally, the [Threat Intel](DFIR-Threat-Intel.md) page documents several other aspects for X-Force IR engaging TI. 

## Endpoint Detection and Response Deployment
This section is currently unavailable - please use EDR [Deployment](https://github.ibm.com/XFIR/ATA-wiki/wiki/ATA-Engagement-Process#deployment) section from ATA wiki, until this section is ready.

## Tutorials

### Slack
General rules to help keep the clutter down and to avoid potential issues are as following:
-   Use  `Threads`  in your engagement channel. This will help keep the noise down as well as resolve potential issues with information taken out of context.
-   Keep topics not related to the engagement out of the main engagement channel.
-   Limit the members of your engagement channel to the members that need to know.
-   When posting analysis findings do not post a wall of text. If the data is longer than a paragraph of textual data just upload that to the channel in a text document and then provide the context about that finding in a comment.
- When posting findings from a particular system, create a separate Thread for this hostname.
-   Do not post sensitive client information in the engagement channel. Use your best judgement and follow best practices for handling of data, which includes, but is not limited to:
    -   PII/PHI,
    -   PCI/Track Data,
    -   Client Data/Documents of proprietary nature.
-   When posting URLs or IP addresses from analysis findings make sure you aren't posting a "Hot Link" that someone could potentially click on:
    -   IP addresses should be "de-fanged" or formatted, eg:  `192.168.45[.]22`
    -   URLs should not be "clickable", eg.:  `hxxp://yahoo[.]com`

When creating your Engagement Slack channel make sure you are in the  `X-Force IRIS`  Slack workspace: `x-forceiris.slack.com`. Once the channel is created, it is possible to add members. To create a new Slack channel:
1.  Click `+` on the right hand side of `Channels` section or if it is not visible, hover `Channels` section header which should cause `+` to appear and click it.
<p align="center" width="100%"><img src="screenshots/Slack_01.png"></p>
2. Pick up an option "Create a channel". <br />
3. Fill in details of a new channel:
	- name channel using a case number: irXX-YYYY,
	- Select `Make Private`
	- Fill in description providing customer name and brief description of the case, eg. "BEC case of 2 accounts for MyCompany"
<p align="center" width="100%"><img src="screenshots/Slack_02.png"></p>

### IBM Box Folder for Case Data
1. Navigate to a folder containing case folder template "IR_Engagement_Folder_Template_DONOTMODIFY" https://ibm.ent.box.com/folder/63956024543
2. Pick "Move or Copy" from 3 dots menu for template folder
<p align="center" width="100%"><img src="screenshots/Box_engagement_folder1.png"></p>
3. Pick up a destination of the folder (engagements folder specific for each geography listed above) and click "Copy".
<p align="center" width="100%"><img src="screenshots/Box_engagement_folder2.png"></p>
4. Navigate to a destination where folder was created, you may receive a green pop-up at the bottom of the page with option to show newly created folder.
<p align="center" width="100%"><img src="screenshots/Box_engagement_folder3.png"></p>
5. Rename created folder according to requirements provided in the section <a href="#Environment-for-Data-Sharing-with-a-Client">Environment for Data Sharing with a Client</a>. 
<p align="center" width="100%"><img src="screenshots/Box_engagement_folder4.png"></p>


### IBM Box Folder for Digital Evidence
1.  Browse to the root of your IBM Box account:  [https://ibm.ent.box.com/folder/0](https://ibm.ent.box.com/folder/0)
2. On the right side chose "New" and then "Folder"
<p align="center" width="100%"><img src="screenshots/Box_upload_folder1.png"></p>
3. Enter folder name according to requirements provided in the section <a href="#Environment-for-Data-Sharing-with-a-Client">Environment for Data Sharing with a Client</a> and click "Create". Add X-Force IR team members working on this case with "Co-worker" permissions.
<p align="center" width="100%"><img src="screenshots/Box_upload_folder2.png"></p>
4. Navigate to newly created folder. <br />
5. Click "Share" on the right side to invite Client representatives.
<p align="center" width="100%"><img src="screenshots/Box_upload_folder3.png"></p>
6. Enter Client email addresses so they receive invites (and need to create Box accounts). Make sure to assign "Previewer uploader" rights, to ensure tight control of uploaded data.
<p align="center" width="100%"><img src="screenshots/Box_upload_folder4.png"></p>

If your client has questions about data privacy and security as it relates to Box you can refer them to the official  <a href="https://cloud.app.box.com/s/igvy6orjgbhg8oxjn967s54x4py23st9">Box Security Whitepaper</a>. 

Make sure you do not send invites to free email provider accounts, such as Gmail, Hotmail, etc as they are banned from accessing IBM Box - see above [note](#Environment-for-Data-Sharing-with-a-Client):
<p align="center" width="100%"><img src="screenshots/Box_upload_folder5.png"></p>

### Aspera
Location: https://ibm.ibmaspera.com/

#### Creating a Folder for an Aspera Upload
1. Launch Aspera in the browser and login with your IBM credentials.
2. Choose  "Files" application
<p align="center" width="100%"><img src="screenshots/Aspera1.png"></p>
3. Ensure that you have "All IBM" chosen on left vertical menu.
<p align="center" width="100%"><img src="screenshots/Aspera2.png"></p>
4. Click "Create folder"
<p align="center" width="100%"><img src="screenshots/Aspera3.png"></p>
5. Enter folder name according to requirements provided in the section <a href="#Environment-for-Data-Sharing-with-a-Client">Environment for Data Sharing with a Client</a> and click "Create".
<p align="center" width="100%"><img src="screenshots/Aspera4.png"></p>
6. Navigate to newly created folder. <br />
7. Enter sharing options on the right side: click "Share this folder" and then "Invite collaborators"
<p align="center" width="100%"><img src="screenshots/Aspera5.png"></p>
8. Invite X-Force IR team members working on this case with "Edit" rights.
<p align="center" width="100%"><img src="screenshots/Aspera6.png"></p>
9. Invite Client representatives with "Custom" rights, assigning only following rights: "Browse", "Upload files" and "Create folders"
<p align="center" width="100%"><img src="screenshots/Aspera7.png"></p>

![Choose "File" application](screenshots/Aspera1.png)

#### Troubleshooting Aspera
- Test Aspera connectivity: https://test-connect.asperasoft.com/
- Firewall configuration requirements documentation: https://www.ibm.com/support/pages/node/746389
- Aspera is able to use whole available bandwidth of the Internet connection so may disturb other traffic.