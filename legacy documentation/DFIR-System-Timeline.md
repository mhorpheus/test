




# XFIR System Timeline 

The XFIR System Timeline is used to document findings identified on systems of interest during the course of XFIR investigations. The XFIR System Timeline contains six (6) tabs that are used to record findings, the contents of processed artifacts, and information that may be useful during timeline review. 

The current XFIR System Timeline is available in the Incident Response [Templates](https://ibm.ent.box.com/folder/53676630277) Box instance. 

The current tabs in the XFIR System Timeline are:

 1. System Timeline - Timeline of events of interest, see below for more details
 2. Malware - Details for malware or attacker tools/utilities identified on the system
 3. User Accts - User acct and SID mappings from SOFTWARE hive
 4. System Info - System information including hostname, OS install date, last shutdown date, etc.  
 5. AppCompat - Parsed contents of the Shim Cache from the system

Each of the tabs will be elaborated upon in the sections below.

*Note: Additional Tabs can be created when needed for evidence that does not match the current Tabs*

## System Timeline Tab
The System Timeline tab is the most critical component of the XFIR System Timeline and is used to document all findings. During the course of an XFIR investigation, each of the System Timeline tabs of complete system timelines are incorporated into a master timeline that is stored in the Engagement Tracking Sheet (ETS). Since each timeline is added to the master timeline in the ETS upon completion, it is very important that data is entered into the System Timeline tab in a consistent manner. 

The System Timeline tab consists of the following columns:

 1. Date/Time (UTC) 
 2. System
 3. ATT&CK Technique
 4. Source Type
 5. Source File
 6. Event ID
 7. Description
 8. Notes
 9. User
 10. SID
 11. Size
 12. MD5
 13. SHA1
 14. Additional Info

  
### Date/Time (UTC)
The date/time in the format YYYY-MM-DD HH:MM:SS of the event of interest in UTC. If an event is not stored in UTC time, it must be converted to UTC prior t being recorded in the System Timeline tab. 

[https://www.worldtimebuddy.com/](https://www.worldtimebuddy.com/) is a useful resource for determining UTC time for events recorded in system-local time. 

If the timezone of the system is not known, it can be determined via the "timezone" RegRipper plugin or manually at the following location:

```
SYSTEM\CurrentControlSet\Control\TimeZoneInformation | TimeZoneKeyName
```
### System 

This is the hostname of the system being forensicated/analyzed. If you are unsure of what the system's hostname is, it can be derived from the registry via the "compname" RegRipper plugin or manually at the following locations:

```
SYSTEM\CurrentControlSet\Control\ComputerName | ComputerName
SYSTEM\CurrentControlSet\Services\Tcpip\Parameters | Hostname
```
### ATT&CK Technique

The ATT&CK Technique column is used to document which ATT&CK Technique an event corresponds to. 

The available ATT&CK Technique cans be found on the MITRE ATT&CK Matrix for Enterprise website at [https://attack.mitre.org/](https://attack.mitre.org/). 

ATT&CK Techniques should be entered in the format of "Technique Name [Technique Identifier]"
For example, if the attacker installs a malicious service on the system, it should be entered as "New Service [T1050]".

### Source Type

The Source Type column is used to record which type of data is being recorded. There is a large range of available Source Types and ad-hoc Source Types can be created as needed. Please contact the Incident Response Function Lead with any ad-hoc Source Types that are used for inclusion into the System Timeline documentation. 

##### File System Events Overview
Only relevant timestamps need to be included in the timeline for file system events. For example, if an attacker dropped a malicious file on a system and the Created, Modified, Accessed, and (\$MFT) Entry Modified timestamps are the same or within very close temporal proximity to each other (i.e: within seconds), you may only want to include the created time as this has relevance to the attacker's actions on the system. However, if the attacker later updated or modified a file, then including both the Created and Modified timestamps would be relevant. 

If there are multiple file system events associated with a single timestamp, they can be included in a single entry, using the Sleuth Kit nomenclature of `MACB`. For example, if a file was last Modified and and Accessed at the same time `MA..` should be entered into the Source Type column. If all four timestamps correspond to a single timestamp, `MACB` should be entered into the Source Type column.

If dealing with NTFS file system, regular `MACB` timestamps will be treated as \$STANDARD_INFORMATION attribute timestamps. If \$FILENAME attribute timestamps need to be specified, append `$FN` to the `MACB` timestamps. See the `$MFT $FN` section below for examples. 
 

`MACB` Source Types can also correspond to artifacts such as INDX allocation record entries that record file system events, such as files being Modified, Born (created), etc. 

 ##### Timeline Entry Source Types
The following section details various XFIR System Timeline Source Types for Windows, Linux, and macOS. 

**Note: File System Source Types**: If there are multiple file system events (events derived from \$MFT or similar) associated with a single timestamp, they can be included in a single entry, such as `MACB` , `.A.B`, `MA..`, etc. 

Same thing goes for NTFS \$FN timestamps `MACB ($FN)` , `.A.B ($FN)`, `MA.. ($FN)`, etc.
The purpose of delineation between \$FN and \$SI attributes becomes clearer if you need to include timestamps from both the \$MFT: \$STANDARD_INFORMATION and \$FILENAME attributes to show the affects of `time-stomping` 

**Note: Amcache**: Amcache timestamps derived from Eric Zimmerman's AmcacheParser.exe

**NOTE:UsnJrnl**: UsnJrnl events commonly occur in combinations, such as `DATA_EXTEND+FILE_CREATE` , `CLOSE+FILE_DELETE`, or `CLOSE+RENAME_NEW_NAME`. In such situations, the Source Type can be recorded as `UsnJrnl:CLOSE+RENAME_NEW_NAME` and the full path of the file can be recorded in the Details column (UsnJrnl entries contain the filename of the file in question and the file's parent directory's MFT entry number so the full path can be determined). 

| OS | Artifact Type | Source Type | Description|
| --- | ------------ | ----------- | -----------|
|Windows|\$MFT \$SI|**NTFS:$SI_Modified**|Last Modified|
|Windows|\$MFT \$SI|**NTFS:$SI_Accessed**|Last Accessed|
|Windows|\$MFT \$SI|**NTFS:$SI_EntryModified**|$MFT Entry Modified|
|Windows|\$MFT \$SI|**NTFS:$SI_Created**|Created|
|Windows|\$MFT \$FN|**NTFS:$FN_Modified**|Last Modified|
|Windows|\$MFT \$FN|**NTFS:$FN_Accessed**|Last Accessed|
|Windows|\$MFT \$FN|**NTFS:$FN_EntryModified**|$MFT Entry Modified|
|Windows|\$MFT \$FN|**NTFS:$FN_Created**|Created|
|Windows|Windows Event Logs|**WinEVT**|EVT (legacy) event log entry|
|Windows|Windows Event Logs|**WinEVTX**|EVTX event log entry|
|Windows|Registry|**Registry:LM**|Registry key/value Last Modified|
|Windows|Shim Cache|**AppCompat:LM**|Last Modified timestamp for parsed Shim Cache entry|
|Windows|Amcache*|**Amcache:Created** |Amcache Created|
|Windows|Amcache*|**Amcache:LastModified** |Amcache Last Modified|
|Windows|Amcache*|**Amcache:LastModified2** |Amcache Last Modified2|
|Windows|Amcache*|**Amcache:Compiled** |Amcache Compiled|
|Windows|Amcache*|**Amcache:FileIDLastWriteTimestamp** |Amcache FileIDLastWriteTimestamp|
|Windows|UsnJrnl*|**UsnJrnl:FILE_CREATE** |UsnJrnl FILE_CREATE event|
|Windows|UsnJrnl*|**UsnJrnl:FILE_DELETE** |UsnJrnl FILE_DELETE event|
|Windows|UsnJrnl*|**UsnJrnl:CLOSE** |UsnJrnl CLOSE event|
|Windows|UsnJrnl*|**UsnJrnl:DATA_EXTEND** |UsnJrnl DATA_EXTEND event|
|Windows|UsnJrnl*|**UsnJrnl:RENAME_OLD_NAME** |UsnJrnl RENAME_OLD_NAME event|
|Windows|UsnJrnl*|**UsnJrnl:RENAME_NEW_NAME** |UsnJrnl RENAME_NEW_NAME event|
|Windows|UsnJrnl*|**UsnJrnl:BASIC_INFO_CHANGE** |UsnJrnl BASIC_INFO_CHANGE event|
|Windows|UsnJrnl*|**UsnJrnl:DATA_OVERWRITE**|UsnJrnl DATA_OVERWRITE event|
|Windows|Syscache|**Syscache:ObjectTableIndexes** |Syscache ObjectTable Indexes entry Last Modified|
|Windows|Syscache|**Syscache:ObjectTableID** |Syscache ObjectTable entry Last Modified|
|Windows|Internet Explorer/Edge|_**WebCacheV01.dat:Last Accessed**_|WebCacheV01.dat Last Accessed|
|Windows|Internet Explorer/Edge| _**WebCacheV01.dat:Expiration**_ |WebCacheV01.dat Last Modified|
|Windows|ShellBags|**ShellBag:MRU_Time**|ShellBag MRU Time|
|Windows|ShellBags|**ShellBag:Target_LM**|ShellBag Target Directory Last Modified Time|
|Windows|ShellBags|**ShellBag:Target_Accessed**|ShellBag Target Directory Last Accessed Time|
|Windows|ShellBags|**ShellBag:Target_Created**|ShellBag Target Directory Created Time|
|Windows|LNK File|**LNK:Target_Created**|LNK Target file Created|
|Windows|LNK File|**LNK:Target_LM**|LNK Target file Last Modified|
|Windows|LNK File|**LNK:Target_Accessed**|LNK Target file Last Accessed|
|Windows|Jump Lists|**JumpList:MRU_Time**|Jump List MRU Time|
|Windows|Jump Lists|**JumpList:Target_Created**|Jump List Target Created|
|Windows|Jump Lists|**JumpList:Target_Modified**|Jump List Target Modified|
|Windows|Jump Lists|**JumpList:Target_Accessed**|Jump List Target Accessed|
|Windows|Jump Lists|**JumpList:Destination_Created**|Jump List Destination Created|
|Windows|Jump Lists|**JumpList:Destination_Modified**|Jump List Destination Modified|
|Windows|Jump Lists|**JumpList:Destination_Accessed**|Jump List Destination Accessed|
|All|Generic Internet History|**Browser:First Visit**|First visit to site|
|All|Generic Internet History|**Browser:Last Visit**|Last visit to site|
|All|Generic Internet History|**Browser:Download**|Browser download time|

##### _Linux_
- **Ext3**
	 - **Ext3:Modified** [Modified]
	 - **Ext3:Accessed** [Accessed]
	 - **Ext3:Changed** [metadata Changed]
	 - ~~**Ext3:Created**~~ [Ext3 does not support a Born date]

**Note**:  If there are multiple file system events associated with a single timestamp, they can be included in a single entry, such as `MAC.` , `.A..`, `MA..`, etc.
 
 - **Ext4**
	 - **Ext4:Modified.** [Modified]
	 - **Ext4:Accessed** [Accessed]
	 - **Ext4:Changed** [metadata Changed]
	 - **Ext4:Created** [Born]

 **Note**:  If there are multiple file system events associated with a single timestamp, they can be included in a single entry, such as `MACB` , `.A.B`, `MA..`, etc.

##### _macOS_

 	 
### Source File
The Source File column simply represents the file the event was derived from. 

Common examples of Source Files are:

 - \$MFT
 - \$UsnJrnl:\$J
 - Security.evtx
 - System.evtx
 - SYSTEM
 - SOFTWARE

### Event ID
The Event ID column is used to record the Event ID for entries derived from Windows event logs (WinEVT and WinEVTX Source Types). The only data that should be present in the Event ID column is the integer associated with the event log entry being recorded. 

Common Event IDs include:

 - 4624 
 - 4625
 - 7045 

### Description

The Description column is free-form and almost any human-readable data can be entered within reason and should be the "meat and potatoes" of the timeline entry. 

The most common types of values stored in the Description column are:

 - Full paths for entries derived from $MFT, INDX records, etc. 
	 - For full paths use the forward/backslashes and other notation appropriate for the OS being documented.  
		 - Windows - `C:\Windows\System32\evil.exe`
		 - Linux - `/home/dingdong/Desktop/passwords.txt`
		 - macOS - `/Users/dingdong/Desktop/passwords.txt`
 -	Output from forensic utilities for specific artifacts, such as Mandiant's ShimcacheParser or Zimmerman's AmcacheParser.  
 -	Contents of Windows event log entries
	 - Copy/pasting from EventLog Explorer is preferred due to formatting and readability, but selected entries from log2timeline, etc. is acceptable as well. 
	 - Event log entries can be summarized as well if need be
 - The entire contents or selected lines from files of interest
	 - Attacker output files (ex. Mimikatz output files or stdout from commands like netstat they write to a file)
	 - Keyword search hits in unallocated space w/ associated timestamps


### Notes
The Notes column should contain a TL;DR of why the entry is important if it's not clearly evident. For verbose Description entries, such as Security event log entries, provide a summary of the event. 

Examples of Notes column entries:

 - Type 10 logon to the system from compromised web server "ATLWEBSRV01" by the compromised service account "mcafee"
 - Malicious service installed on the system by the compromised service account "mcafee" that functioned as a metasploit tcp reverse stager with the c2 IP 123.123.123.123
 - Persistence mechanism for QUASARRAT backdoor
 - Attacker-created file containing netstat output
 - Mimikatz output file containing cleartext credentials for 35 accounts in the ACME domain

### User
The username associated with the timeline entry, if available. 

 - If the username is a domain account, use `DOMAIN\username` notation
 - If the username is a local account, use `HOSTNAME\username` notation

### SID
The Security Identifier (SID) associated with the user, if available. Some Windows event log entries, such as Service installs (System.evtx EID 7045) will contain just a SID and the username can normally be derived from the registry key below. 

 - SID to User Name Mapping: `SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList`

### Size
The size of the file in bytes, if available

### MD5
The MD5 hash value of the file, if available

### SHA1
The SHA1 hash value of the file, if available

### Additional Info
If additional information about an event needs to be recorded that doesn't fit or work well in the Notes column, the Additional Info column can be used. 

Examples of entries for the Additional Info column:

 - VirusTotal links
 - JIRA Malware RE ticket numbers or links
 - Links to open-source intel, such as security vendor writeups
 - Additional context for the event
