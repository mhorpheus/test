# Engagement Tracking Sheet
The XFIR Engagement Tracking Sheet is a document used to centralize and organize data relevant to an incident. The ETS is meant to be updated primarily by the Engagement Lead, but others members of the incident are allowed to update the ETS as requested or needed. 

**Note**: It is important to ensure the ETS isn't being edited by multiple people at the same time. It is best practice to lock the ETS in Box while it is being edited to ensure data entered into the ETS isn't lost in the event multiple people are working on the ETS concurrently. Box's Excel Online option can be used to allow for multiple people to contribute to the ETS concurrently, but the Excel Online feature is not as robust as the actual MS Excel application and is best used for small entries or edits. 

The current XFIR Engagement Tracking Sheet (ETS) is available in the Incident Response [Templates](https://ibm.ent.box.com/folder/53676630277) Box instance. 

The current tabs in the XFIR ETS are:

 - TL;DR 
 - Timeline
 - To-Dos & Action Items
 - Evidence Tags
 - Systems of Interest
 - Attacker Commands
 - Compromised Accounts
 - Malware
 - Data Theft
 - Network Indicators
 
 ## TL;DR
 
 The TL;DR section (a Reddit-ism for Too Long; Didn't Read, aka a summary) contains a summary of information that can centralize high-level information and TTPs regarding an incident.

The TL;DR contains the following data points:
 - Attacker Attribution
- Group Actions
- Earliest Evidence of Compromise
- How was breach identified?
- Most Recent Evidence of Interactive Attacker Activity
- Most Recent Evidence of Compromise  
- Active Attacker?
- Earliest Compromised System
- First Compromised Account
- Identified Means of Lateral Movement
- System(s) most commonly accessed
- Commonly used compromised accounts
- Attacker created accounts?
- Attacker Network Based Indicators (NBIs)
- Commonly used staging directory?
- Attacker targeted data type
	- PII, Intellectual Property, credit cards, general intel, etc.
- Client Sector/Subsector
- Client Region
- Remediation Event
- Additional Threat Groups Present
- Dates of Threat Group Overlap
- Identified keyboard layouts
- Languages used

## Timeline

The Timeline section of the ETS functions as a master timeline of all identified activity. The format follows the XFIR System Timeline exactly and is meant to be a location to centralize all completed XFIR System Timelines. Data outside of what was recorded in XFIR System Timelines can be added to the Timeline tab, such as firewall log entries, EDR real-time events, etc. 

XFIR System Timelines should only be added to the ETS's Timeline tab by the Engagement Lead (or whoever the EL appoints to do so). Additionally, XFIR System Timelines should only be added to the ETS Timeline **after** they have been peer-reviewed and finalized. 

If data of interest is identified on a system whose timeline has been finalized, it is important to not only update the XFIR System Timeline for the system in question, but to also update the ETS Timeline with the new entries. 

**Note**: It is best practice to add events to the ETS as they are identified to prevent having to play catch-up. For example, if you identify malicious activity in Carbon Black Response, make sure to add the events to the ETS Timeline tab as soon as you can - otherwise valuable data may be forgotten about or may time-out of of the EDR console. Additionally, keeping the Timeline tab accurate and up-to-date can provide a better datasource to understand what activity has been identified to-date. 

## To-Dos & Action Items

The To-Dos & Action Items is a tab of the ETS used to keep track of XFIR and client requests, the responsible parties, and the status of the requests. It is common for multiple requests and action items to be established during an incident and tracking the requests and the status of the requests is critical to preventing things from falling through the cracks and being forgotten about. 

Common items track include:

 - XFIR requests for logs, disk images, or other data relevant to an investigation
 - Client requests for XFIR to investigate or review particular systems or issues
 - XFIR recommendations for the client to take containment or remediation measures

## Evidence Tags
The Evidence Tags tab is used to keep track of data relevant to disk images and other data collected or provided to XFIR. 

The Evidence Tags tab contains the following columns:

 - Date Added
 - Evidence Tag
	 - Engagement number_Evidence number (IR3282_001)
 - Hostname
 - IP Address
 - Reason Collected
 - Data
	 - Disk Image, LR Collection, Memory, Log Data, etc.
 - Data Location
 - Received By
 - Received Date
 - Image Name
 - Acquisition MD5
 - Analysis Status
 - Analyst
 - Encryption Key
	 - Bitlocker, PGP, etc. keys used to decrypt image for analysis

## Systems of Interest
The Systems of Interest tab is used to keep track of systems with confirmed malicious activity or suspected malicious activity. 

The Systems of Interest tab includes the following columns:

 - Date Added
 - Domain
 - Hostname
 - Isolation Status
 - Operating System
 - TL;DR
	 - High-level findings relevant to why it was collected
 - IPv4 Address
 - Function
 - Location
 - Level of Compromise 
	 - False Positive, TBD, Accessed, Backdoor Installed, Credentials Harvested, etc.
 - Earliest Evidence of Compromise
	 - Recorded in the format YYYY-MM-DD HH:MM:SS UTC
 - Evidence 
	 - Evidence associated with earliest date of compromise
 - Data Available
	 - Disk Image, LR Collection, Memory, Log Data, etc.
 - Analyst
	 - Assigned analyst
 - Analysis Status 
	 - Complete, In Progress, etc.
 - Priority 
 - Reporting Level
	 - Full Report, Triage Report, Timeline, N/A
 - In Timeline
	 - Is the system in the ETS TImeline?
## Attacker Commands
The Attacker Commands section is free-form and can be used to track identified attacker commands, such as WMIC, PowerShell, NET, CMD, Mimikatz cmdline parameters, etc. 

## Compromised Accounts
The Compromised Accounts tab is used to track compromised or likely compromised accounts. 

The Compromised Accounts tab contains the following columns:

 - Date Added
 - Account
 - SID (Security Identifier)
 - Account Type
	 - Local, Domain, Domain Admin, Service, etc. 
 - Attacker Created
	 - Did the attacker create the account?
 - Status
	 - Compromised, Suspected Compromised, or False Positive
 - Earliest Evidence of Compromise
 -  Reason 
	 - What does XFIR believe the account to be compromised?
	 - Ex. Installed malicious service on domain controller "SVADDC03"
 - Evidence
	 - What evidence does XFIR have to support why we believe the account to be compromised?
 - Account Used by Attacker?
	 - Did the attacker leverage the compromised account or was it just compromised during mass credential harvesting or something along those lines?
 - Reported to Client?
	 - Did XFIR report the compromised account to the client?
 - Credentials
	 - Record the credentials of the compromised account, if identified


## Malware
The Malware tab is used to record data relevant to malicious software and/or utilities XFIR identified associated with the incident. 

The Malware tab includes the following columns:

 - Date Added
 - Earliest File Created (UTC)
	 - Recorded in the format YYYY-MM-DD HH:MM:SS
 - Status
	 - Malicious, Suspicious, False Positive
 - System(s)
	 - Which system(s) did XFIR identify the malware on?
 - FIle Name
	 - Base file name of malware
	 - Ex. `Mimikatz.exe`
 - Full Path
	 - Full path of malware
	 - Ex. `C:\Windows\IME\Mimikatz.exe`
 - Type
	 - What type of malware is it?
	 - Backdoor, Credential Harvester, Privilege Escalation, Recon, etc.
 - Notes
 - File Size (Bytes)
	 - File size in bytes
 - MD5
	 - MD5 hash value of file
 - SHA1
	 - SHA1 hash value of file
 - Purpose
	 - Purpose of the malware (similar to, but more detailed than Type column)
 - Description
	 - A more verbose description of the file
	 -Ex. `QuasarRAT backdoor persistent via BAT file in Startup dir`
	 -Ex. `Emotet dropper`
 - Commodity
	 - Boolean value if the file is considered commodity malware
 - Targeted
	 - Boolean value if the file is considered targeted malware
 - Persistent
	 -Boolean value if the file is persistent
 - Persistence Mechanism
	 - Startup dir, Run key, Service, etc. 
 - C2 Domain(s)
	 - Associated C2 domains
 - C2 IP(s)
	 - Associated C2 IPs

## Data Theft
The Data Theft tab is used to record any identified data theft. 

The Data Theft tab contains the following columns:

 - Date (UTC)
 - System
 - Account
 - Type
 - Data Stolen
 - Targeted or Bulk Theft
 - Evidence
 - Method

## Network Indicators
The Network Indicators tab is used to track network-based indicators associated with the incident. 

The Network Indicators tab includes the following columns:

 - Date Added
 - Status
 - Source
 - Indicator Type
 - IP
 - Domain
 - URL
 - Notes
 - Associated Malware
 - Attacker Owned?
 - Attacker Compromised?
 - Available Intel?