# IRIS Engagement Status Report
The IRIS Engagement Status Report is a document that can be provided to a client periodically throughout an engagement to provide a high-level overview of the current status of the engagement. 

The current IRIS Engagement Status Report is available in the Incident Response [Templates](https://ibm.ent.box.com/folder/53676630277) Box instance. 

The IRIS Engagement Status Report contains the following sections:

 - Summary of Findings
 - Open Items
 - Issues
 - Billable Hours
 - Activities Completed Since Last Update
 - Planned Activities

Each of the listed sections will be covered in more detail below.

## Summary of Findings

The Summary of Findings section should include a chronological timeline of high value findings that are relevant to the client and their executives. 

Be accurate and specific in the Summary of Findings sections, but don't overwhelm the client with unnecessary details. 

**Example of Summary of Findings:**

IBM IRIS performed forensic analysis of the disk image associated with the ACME host “CNZEP001” and determined the following:

•**The earliest confirmed evidence of compromise occurred on September 08, 2018 at 10:26:26 UTC**

At that time, Windows event logs recorded lateral movement to CNZEP001 by the compromised Service Account “AZZSIDMgSv” from the source IP address “164.162.94.159”, assigned to the Lync server “GLPOSAKSDB14”.

• **On September 10, 2018 at 02:23:17 UTC, the attacker installed a QuasarRAT backdoor on the system**

The attacker installed the QuasarRAT backdoor on the system as a Windows Service that communicated with the command and control IP address “181.129.35.250” over TCP port 443. The attacker also uploaded additional utilities to the system, such as the VBS backdoor “get.vbs” and SysDFIRs’ “PsPing.exe”.

• **On September 10, 2018 between 09:39:05 UTC, and 14:23:21 UTC, file system artifacts recorded the creation of two (2) multipart RAR archives totaling in approximately 2.3GB**

The attacker named the RAR archives “a.part[01 to 27].rar” and “k.part[01 to 19].rar” and were created in the directory “C:\IDE”, each of the RAR segments was 52,428,800 bytes (50MB) in size for a total of ~2.3GB of compressed data. The attacker later moved the RAR archive files to the directory “C:\Recovery”.

Firewall logs recorded the attacker transferred approximately 2.4GB of data to the command and control IP “181.129.35.250” on September 10, 2019 between 02:27:38 UTC and 17:27:38 UTC, which likely included the two multipart RAR archives.

The attacker deleted the RAR archives on September 11, 2018.  Attempts to recover or identify contents of the RAR archives were unsuccessful.

• **On September 11, 2018 between 01:58:19 UTC and 13:00:40 UTC, the attacker attempted to move laterally to hosts within the `ACME.net` domain using four (4) compromised accounts.**

Windows event logs recorded sixty (60) events where the attacker attempted to move laterally to remote systems in the ACME environment using the compromised accounts “AZZSIDMgSv”, “AZZGOPS4Adm”, “AADSYN01Sv” and “ASOAD002Adm”.

• **The last identified attacker activity occurred on September 12, 2018 at 11:14:37 UTC.

At that time, the removed the QuasarRAT backdoor from the system **


## Open Items
The Open Items/Issues section is used to track open action items and issues. Entries in the Open Items/Issues section should be removed from subsequent ESRs if they have been completed. 

**Note**: The ETS's "To-Dos & Action Items" tab can be used to track open and closed items. At the time of the creation of the ERS, the "Open" items can be added to the Open Items/Issues section. 

Guiding questions:
 - What items are needed from the customer or some other external source?  
 - What issues exist that are slowing or preventing progress on the project? 
 - What items does IRIS owe the client?

## Issues
The Issues section is used to issues that are slowing down the investigation or preventing aspects of the investigation altogether . Entries in Issues section should be removed from subsequent ESRs if they have been completed. 

**Note**: The ETS's "To-Dos & Action Items" tab can be used to track open and closed items. At the time of the creation of the ERS, the "Open" items can be added to the Open Items/Issues section. 

Guiding questions:
 - What issues exist that are slowing or preventing progress on the project? 

## Billable Hours
The Billable Hours section of the ESR contains an editable chart that allows for the `Hours Used` and `Hours Remaining` values to be updated to reflect the current status of the engagement. 

The Billable Hours chart should include hours for all consultants supporting the incident, including hours for IRIS Threat Research, Malware Reverse Engineering, etc. 

## Activities Completed Since Last Update

The “Activities Completed Since Last Update” section should include a table organized by Activity Type (Technology Deployment, Data Collection, Analysis, Containment, etc.) containing a bullet point listing of the high-level activities completed/started since the last update.

Each Engagement Status Report (ESR) is for the period going back to the last update and does not cover the entire engagement.

Examples of entries for Activities Completed Since Last Update:
 - IRIS & ACME Co. personnel deployed Carbon Black Response agents to 5,000 systems in the `ACME.NET` domain.
 - IRIS personnel created a disk image for the compromised web server "ACMEWEB001"
 - IRIS completed the forensic analysis of the `ACME.NET` Domain Controller "ACMEDC01"

## Planned Activities
What activities are planned for the near future? Remove items from this list when they are completed.

 - Perform forensic analysis of the compromised web server "ACMEWEB001"
 - Continue to deploy Carbon  Response to the remaining 10,000 systems in the `ACME.NET` domain
 - Review firewall logs for known-bad IP addresses and suspicious activity
