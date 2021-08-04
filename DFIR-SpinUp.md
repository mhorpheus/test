# DFIR Spin-Up Process

## Table of Contents
1. [**Introduction**](#Introduction)
2. [**Setting up Collaboration Environment**](#Setting-up-Collaboration-Environment)
	- [Internal XFIR Working Environment](#Internal-XFIR-Working-Environment)
	- [Environment for Data Sharing with a Client](#Environment-for-Data-Sharing-with-a-Client)
3. [**Threat Intel Support**](#Threat-Intel-Support)
4. [**Endpoint Detection and Response Deployment**](#Endpoint-Detection-and-Response-Deployment)
5. [**Tutorials**](#Tutorials)
	- [Slack](#Slack)
	- [Case Folder at Box](#Case-Folder-at-Box)
	- [Evidence Folder at Box](#Evidence-Folder-at-Box)
	- [Aspera](#Aspera)
		- [Creating a Folder for an Aspera Upload](#Creating-a-Folder-for-an-Aspera-Upload)
		- [Troubleshooting Aspera](#Troubleshooting-Aspera)

## Introduction
The purpose of this page is to document the XFIR Spin-Up process and procedures. This is is a living document. If there is something you want to see documented here or explained with further detail please contact your geographic Functional IR Lead (listed on the  [Homepage](Home)).

Once XFIR has been engaged for Incident Response services regardless of the scope and size of that effort there are some fundamental procedures that are required for every IR engagement. In addition to the basic IR engagement spin-up, and depending on several factors, there are a number of procedures that could also apply to your engagement that will be documented here.

## Setting up Collaboration Environment
All technical details describing how to perform the steps required in this section and best practices on using them, are described in the [Tutorials](#Tutorials) section at the bottom of this page.

### Internal XFIR Working Environment
Adherer to [rules for Digital Evidence, Client Data and Case Data](DFIR-Project-Managenent#Handling-Digital-Evidence-Client-Data-and-Case-Data) defining which parts of collaboration environment should be used to store different types of data.

Proceed with the following steps to set up a working environment for collaboration within XFIR (all steps are obligatory, unless stated otherwise):
1. Create a "**Case Folder**" on IBM Box:
	- acts as a central repository for this IR engagement
	- use a template: "IR_Case_Folder_Template_DONOTMODIFY" (simply using copy option in Box) for the case folder structure from [here](https://ibm.ent.box.com/folder/63956024543),
	- create a case folder in a location specific for each geography:
		- [EMEA](https://ibm.ent.box.com/folder/41834082550)
		- [NA](https://ibm.ent.box.com/folder/27712184811)
		- APAC creates an independent Box folder (outside shared folder structure) for each case and invites participants on the need to know basis. There is an ongoing discussion about unification of an APAC approach with other geos. This section will be updated accordingly when such agreement is reached.  
	- rename template of the case folder to a case number: eg IRYY-NNNN (uppercase!; do not append anything in the folder name after a case number),
	- do **not** use this folder for digital evidence storage, or to share data with the Client or any third party as is addressed separately in section [Environment for Data Sharing with a Client](#Environment-for-Data-Sharing-with-a-Client).
	- see [tutorial](#Case-Folder-at-Box) below.
2. Create an "**Evidence Folder**" on IBM Box:
	- to store all digital evidence and other data owned by a Client,
	- use a template: "IR_Evidence_Folder_Template_DONOTMODIFY" (simply using copy option in Box) for the case folder structure from [here](https://ibm.ent.box.com/folder/63956024543),
	- is an ultimate target for evidence - all evidence independently on delivery method, should be finally put into this folder (eg. uploaded with Aspera),
	- use "need to know" principle by adding only XFIR consultants working for this case,
	- folder must be named "IRYY-NNNN-Evidence" in the root folder of a consultant's IBM Box:
		- invite only XFIR people working on this case with "Co-owner" rights,
		- do **not** create it within a team shared part of IBM Box,
	- maximum file size: 32 GB (cut bigger files into chunks),
	- see [tutorial](#Evidence-Folder-at-Box) below.
3. Create a dedicated channel for this engagement within X-Force IRIS Slack workspace for regular communication about the case:
	- channel name must be equal to a case number - eg. "irYY-NNNN" (Slack channels are always named with lowercase letters),
	- the purpose of this channel is to provide communication **only** within XFIR team (if you need to invite IBMers from other teams or client representatives seen next points for guidance).
	- Post a message called "Administrative notes" on the Slack channel and pin it. Include following information into a note:
		- who is a case lead,
		- if there are any, current hours usage constraints,
		- frequency of hours reporting in Resilient.
	- for small engagements, where there is only one person assigned and working individually, there is no need to create a Slack channel,
	- follow usage recommendation listed in the [tutorial](#Slack) below.
4. Download Evidence Tracking Sheet (ETS) Template from [here](DFIR-ETS)
	- place is the "ETS" folder within "Case Folder",
	- update ETS filename to contains proper case number
5. Grant access to consultants assigned to this case:
	1. Populate an "Owner" field in Resilient with Case Lead name.
	2. Populate "Members" field in Resilient with consultants assigned to this case.
	3. Add people to Slack channel from XFIR or TI or RE teams.
6. Optionally, if needed, create additional Slack channel for communication with people outside XFIR:
   - for communication with other IBMers not belonging to XFIR:
      - channel must be created within "CIO" Slack workspace (ibm-cio.slack.com), which all IBMers have access to. This ensures that anyone from IBM can be invited without any issues. 
      - channel name must be equal to a case number ending with "-collab"- eg. "irYY-NNNN-collab", to indicate collaboration outside XFIR, but still within IBM
   - for communication with people external to IBM, eg. client representatives:
     - channel must be created within X-Force IRIS Workspace (x-forceiris.slack.com), because this is the only workspace where XFIR has administrative access, required to invite guests (external to IBM)
     - channel name must be equal to a case number ending with "-external"- eg. "irYY-NNNN-external", to indicate collaborators external to IBM, eg. Client representatives.
   - to simplify management of multiple Slack channels for a single case, spread among 2 workspaces, channels can be configured to be shared between workspaces. A shared channel is indicated by 2 crossed circles on the right side of the channel name.

### Environment for Data Sharing with a Client
Remote Evidence Collection, together with all supporting materials, is documented on the [Digital Evidence](DFIR-Digital-Evidence) page.

Evidence Delivery in most of the cases is performed over the Internet. The best option is when Client shares evidence using their own infrastructure taking over the responsibility for data sharing process and data security. However, often they do not have sufficient capabilities. For this reason XFIR offers one or more of below methods:
1. Dedicated folder for evidence upload within the scope of "Evidence Folder" at IBM Box:
	- create an "IRYY-NNNN-Evidence/Client Upload" folder for Client originating upload:
		- files successfully uploaded by Client to "IRYY-NNNN-Evidence/Client Upload" must be moved to "IRYY-NNNN-Evidence" folder to limit extensive access,
		- invite people for an upload with "Previewer Uploader" rights, so they confirm that files have been uploaded, but can not do much beyond that,
	- do not send Box invites to free email providers (eg. Gmail, Hotmail) as they are banned from accessing IBM's Box and will violate IBM ITCS300 Security Policy.
2. IBM Aspera folder (optional):
	- folder must be named “IRYY-NNNN-Evidence”,
	- should be considered ONLY for transition as by Aspera policy data will be deleted after 7 days:
		- make sure smaller files (under Box size limit) are uploaded directly to "Evidence Folder" on Box,
		- for larger files (above Box limit), download them from Aspera, split into chunks (eg. with 7zip) and upload to "Evidence Folder" on IBM Box,
		- when files are migrated to Box, they should be deleted from Aspera.
	- use "need to know" principle by adding only XFIR consultants working for this case,, assigning them "Edit" rights in the Aspera menu,
	- invite Client representatives:
		- always attempt to invite people by email, assigning them only the following rights: "Browse", "Upload files" and "Create folders",
		- whenever possible, try to avoid using "Shared links" as once a shared link is created the permissions cannot be downgraded and upload is anonymous (try to use send invites as mentioned in the above point).
	- other considerations:
		- practical file size limit is 5TB,
	 	- requires Web Browser plugin and software installation,
	 	- may require some firewall changes on a Client side (see [Troubleshooting Aspera](#Troubleshooting-Aspera) below),
		- do not use Aspera "Package" option, as it is deleted immediately after successful download, making it impossible to forward to another XFIR consultant. Always use "Files" option.
 	- see [tutorial](#Aspera) below.
3. Forensics Lab.

Currently, none of the available tools are GDPR compliant. For more details on how to address GDPR related constraints for XFIR engagements, please see separate [page](DFIR-GDPR).

### Threat Intel Support
Threat Intel (TI) and Reverse Engineering (RE) teams provide support for IR engagements. "Intel Engagement" ticket must be created for every IR ticket in Resilient irrespectively of decision whether TI/RE support is needed or not. It is done to ensure the TI team has necessary visibility into IR engagements, thus is able to process the outcome from IR work. "Intel Engagement" tickets should have already been created during creation of the new IR tickets (should this not be a case, it can be created following [this](DFIR-Threat-Intel#Creating-Intel-Engagement-Ticket) tutorial).

 It is a Case Lead's responsibility to determine whether TI or RE assistance is required. Requesting RE assistance automatically means that TI need to be engaged. Please follow detailed guidelines documented in [this](DFIR-Threat-Intel#Requesting-TI-Support-for-IR-Engagements) section to engage TI for IR case. Additionally, the [Threat Intel](DFIR-Threat-Intel) page documents several other aspects for XFIR engaging TI. 

## Endpoint Detection and Response Deployment
IBM has a partnership with several external EDR providers. For this reason, XFIR can offer a short term license together with a cloud environment of a chosen tool at no cost for a client, to support IR engagement. The decision on whether to use EDR technology and which particular one depends on the IR case lead. 

Shall you need to deploy EDR for IR engagement, please refer to a separate [page](DFIR-EDR) discussing this topic.

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
	- name channel using a case number: irYY-NNNN,
	- Select `Make Private`
	- Fill in description providing customer name and brief description of the case, eg. "BEC case of 2 accounts for MyCompany"
<p align="center" width="100%"><img src="screenshots/Slack_02.png"></p>

### Case Folder at Box
1. Navigate to a folder containing case folder template "IR_Engagement_Folder_Template_DONOTMODIFY" https://ibm.ent.box.com/folder/63956024543
2. Pick "Move or Copy" from 3 dots menu for template folder
<p align="center" width="100%"><img src="screenshots/Box_engagement_folder1.png"></p>
3. Pick up a destination of the folder (engagements folder specific for each geography listed above) and click "Copy".
<p align="center" width="100%"><img src="screenshots/Box_engagement_folder2.png"></p>
4. Navigate to a destination where folder was created, you may receive a green pop-up at the bottom of the page with option to show newly created folder.
<p align="center" width="100%"><img src="screenshots/Box_engagement_folder3.png"></p>
5. Rename created folder according to requirements provided in the section <a href="#Environment-for-Data-Sharing-with-a-Client">Environment for Data Sharing with a Client</a>. 
<p align="center" width="100%"><img src="screenshots/Box_engagement_folder4.png"></p>


### Evidence Folder at Box
1.  Browse to the root of your IBM Box account:  [https://ibm.ent.box.com/folder/0](https://ibm.ent.box.com/folder/0)
2. On the right side chose "New" and then "Folder"
<p align="center" width="100%"><img src="screenshots/Box_upload_folder1.png"></p>
3. Enter folder name according to requirements provided in the section <a href="#Environment-for-Data-Sharing-with-a-Client">Environment for Data Sharing with a Client</a> and click "Create". Add XFIR team members working on this case with "Co-worker" permissions.
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
8. Invite XFIR team members working on this case with "Edit" rights.
<p align="center" width="100%"><img src="screenshots/Aspera6.png"></p>
9. Invite Client representatives with "Custom" rights, assigning only following rights: "Browse", "Upload files" and "Create folders"
<p align="center" width="100%"><img src="screenshots/Aspera7.png"></p>

![Choose "File" application](screenshots/Aspera1.png)

#### Troubleshooting Aspera
- Test Aspera connectivity: https://test-connect.asperasoft.com/
- Firewall configuration requirements documentation: https://www.ibm.com/support/pages/node/746389
- Aspera is able to use whole available bandwidth of the Internet connection so may disturb other traffic.