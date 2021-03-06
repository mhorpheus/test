## Table of Contents
1. [**Introduction**](#Introduction)
2. [**Evidence Collection**](#Evidence-Collection)
	- [One Pagers for Client to Collect Evidence Themselves](#One-Pagers-for-Client-to-Collect-Evidence-Themselves)
		- [Direct Download Link](https://github.ibm.com/XFIR/DFIR-wiki/blob/master/documents/evidence%20collection%20one%20pagers)
	- [Customised Velociraptor Evidence Collectors](#Customised-Velociraptor-Evidence-Collectors)
	- [Active Directory Export](#Active-Directory-Export)
4. [**Chain of Custody**](#Chain-of-Custody)
	- [XFIR CoC Templates](#XFIR-CoC-Templates)
	- [CoC Usage Example](#CoC-Usage-Example)
	- [Regional CoC Information](#Regional-CoC-Information)
5. [**Evidence Naming Policy**](#Evidence-Naming-Policy)
6. [**Data Retention Policy**](#Data-Retention-Policy)

## Introduction
The purpose of this page is to document how XFIR handles Digital Evidence. This is is a living document. If there is something you want to see documented here or explained with additional detail please contact your geographic Functional IR Lead (listed on the [Homepage](Home)).

## Evidence Collection
This section address topics related to digital evidence collection. It should not be considered a comprehensive approach to this topic, but addressing for now most common topics. 

### One Pagers for Client to Collect Evidence Themselves
Digital Evidence collection can be performed on-site and remotely. Especially for remote IR engagements, digital evidence collection is not performed by XFIR consultants, but by personnel who may have very little, if not zero, experience in this area. For this reason, a set of so called "Evidence collection one-pager instructions" have been prepared. These instructions can be shared with anyone performing forensic collections and guides such person in simple steps through the whole process. The instructions address all necessary topics such as data confidentiality, remote delivery challenges, etc. 

XFIR one-pagers deal with most common topics related to evidence collection, such as:
- Dead box imaging,
- Windows:
	- RAM capture,
	- Live imaging,
- Linux:
	- RAM capture,
	- Live imaging,
- VMs imagining/exporting/RAM capture
	- VMware
	- Hyper-V
- Triage data collection
	- Live Response Collection by BriMor Labs,
	- Velociraptor (custom build)
		- MAKE SURE to read instructions [below](#Customised-Velociraptor-Evidence-Collectors) before sending instruction to a client
- Data disposition,
- HDD encryption detection.

Always share only the PDF version of the one-pager with a Client. All one pager manuals are available for a download [**here**](https://github.ibm.com/XFIR/DFIR-wiki/blob/master/documents/evidence%20collection%20one%20pagers).

There are several options to deliver digital evidence over the Internet to XFIR consultants. They are discussed on a [SpinUp](SpinUp#Environment-for-Data-Sharing-with-a-Client) process page.

### Customised Velociraptor Evidence Collectors
Because there are several customised Velociraptor collectors, used differently between geos, current version of one pager for Velociraptor Triage Collector does not have a direct box link. This was changed, to avoid confusion when reviewing triage results from different collector executed by a Client, versus what XFIR consultant planned. Consequently, Client is not able to obtain collector on his own and it must be provided by XFIR consultant. 

A set of precompiled collectors are maintained on a dedicated github repository: https://github.ibm.com/XFIR/VelociraptorReleases. Download collector of yours choice and share it with a Client using preferred method, most common would be using "Shared with a Client" directory within case folder on Box@IBM. 

Some hints on which collector to choose:
- "Raw" version is mainly used by EMEA
- "FastIR" and "LiveResponse" are mainly used by NA

### Active Directory Export
XFIR maintains a dedicated AD Export script, which is used with following goals:
1. create a dump at the beginning of the IR engagement, so the preserved information are as close the the incident timeline as possible
2. immediately provide key information from AD to the analysts performing investigation, who, without having a AD dump would require going back to a Client and asking questions about those specific information (many times for different findings).
3. be able to perform AD based analysis, eg. AD timeline.

The collected zip file contains the following:  
- Computers and users with complete attributes  
- Group membership  
- DNS records  
- Password policies  
- Security descriptors (ACLs)  
- GPOs  
- Timeline

Because script is very easy to use, there is no dedicated one pager instruction. Just download script from github repository provided below, and ask Client to run is as Domain Administrator on a Domain Controller:
- script repository with documentation: [https://github.ibm.com/XFIR/Active-Directory](https://github.ibm.com/XFIR/Active-Directory)
- recent release: [https://github.ibm.com/XFIR/Active-Directory/releases](https://github.ibm.com/XFIR/Active-Directory/releases)

## Chain of Custody
Chain of custody (CoC), in legal contexts, is the chronological documentation or [paper trail](https://en.wiktionary.org/wiki/paper_trail "wiktionary:paper trail") that records the sequence of custody, control, transfer, analysis, and disposition of physical or electronic [evidence](https://en.wikipedia.org/wiki/Evidence "Evidence"). The CoC requires that from the moment the exhibit is collected, every transfer of an exhibit from person to person be documented **and** that it be defensible that nobody else could have accessed that evidence. It is best to keep the number of transfers as low and minimal as possible. In the courtroom, if the defendant questions the CoC, the documentation completed to date will prove that whatever evidence is being used, was the evidence collected during the incident. It is utterly vital that *any* chain of custody paperwork be completed diligently, and then checked by a second XFIR Analyst. If the chain of custody is broken, the Accused and their Legal Counsel will ask the court to exclude the exhibit as there is plausible deniability and the evidence may have been tampered with.

### XFIR CoC Templates
XFIR maintains Chain of Custody document templates for:
* [Single Item](documents/IBM%20X-Force%20IR%20Chain%20of%20Custody%20-%20Single%20Item.docx)
* [Multiple Items](documents/IBM%20X-Force%20IR%20Chain%20of%20Custody%20-%20Mulitple%20Items.docx)


### CoC Usage Example
An example of  Chain of Custody  would be the recovery of an exhibit during the course of XFIR responding to an incident:
1.  An XFIR Analyst would collect the exhibit, or capture information during an incident. The exhibit would then be either catalogued, transferred to another Analyst, or both.
2.  The analyst would then log the exhibit into the evidence management system, and store the exhibit securely. The XFIR Analyst would then render the exhibit to an Exhibit Clerk.
3.  The Exhibit Clerk would store the exhibit until it is needed, documenting everyone who has accessed the original copy and/or exhibit. 

### Regional CoC Information
CoC regulations and information specific to different countries.
#### United States
Incident responders in the United States should adhere to section 3.3.2 of the NIST 800-61R2 guidelines for collecting digital evidence, in particular:
[NIST Evidence Guidelines](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)
#### Canada
Incident responders in the United States should adhere to section 3.3.2 of the NIST 800-61R2 guidelines for collecting digital evidence, in particular:
[NIST Evidence Guidelines](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)


## Evidence Naming Policy
Following Evidence Naming Policy applies to both physical and logical assets, eg. disk image in EWF format placed on physical USB drive should both have asset ID assigned. 

#### Host
Evidence naming converion as relationship to the host where it comes from.
- `[CASE-ID]_[HOSTNAME]`
	- e.g. `IR19-1234_DESKTOP-M8UJ6E6`
- `[CASE-ID]_[Last 5 digits of host SN]` - however, hostname based naming is preferred
	- e.g. `IR19-1234_W6N84`

#### External media
- `[CASE-ID]_[Last 5 of media SN]`
	- e.g. `IR19-1234_W6N84`
- `[CASE-ID]_[Descriptor][3 Digits]`
	- e.g. `IR19-1234_USB001`
- Suggested descriptors:
	- `USB` - USB Device (without SN)
	- `HDD` - Hard Disk Drive (without SN)
	- `SSD` - Solid State Drive (without SN)
	- `SDC` - SD Card (without SN)
	- `CDR` - Compact Disk
	- `DVD` - DVD
	- [`XXX`] - Others can be specified on a case by case basis.
- In the event that descriptors are used the Case Lead will manage allocation of media IDs to ensure there is no clash.
	- 3 digits represent sequential number assigned by Case Lead

#### Mobile devices naming convention
- `[CASE-ID]_[Last 5 of device SN]`
	- e.g. `IR19-1234_W6N84`
- `[CASE-ID]_[Last 5 of device IMEI]`
	- e.g. `IR19-1234_USWS10231`

#### IBM destination media naming convention
Media containing digital evidence (eg. RAM dump or disk image)
- `[CASE-ID]_[Analyist Initials]_[Last 5 of SN]`
	- eg, `IR19-1234_AMJH_S9H1Z`

#### Image naming convention
This section deals with naming of the images and contains part identifying source of image following convention presented in previous points.
- RAM:
	- add`_RAM` after a host based identifier,
	- e.g. `IR19-1234_DESKTOP-M8UJ6E6_RAM`
- Physical Disks (based on media id):
	- For a single disk follow guidance from [External media](#External-media) section above
		- eg. `IR19-1234_W6N84`
	- For multiple disks constituting single media (eg. RAID) add `_D[N]`, where `N` denotes sequential number of a drive:
		- e.g. `IR19-1234_W6N84_D1`, `IR19-1234_W6N84_D2`
- Logical Volumes
	- add `_L[N]` for Logical and `N` denoting number of logical volume (partition)
	- e.g. `IR19-1234_W6N84_L1`, `IR19-1234_W6N84_L2`
- Where recollection occurs (same evidence on different dates) or backup restoration (eg. VM disk image restored from backup) the image name should be additionally marked with ISO Date (YYYYMMDD):
	- e.g. `IR19-1234_W6N84_RAM_20190830`

## Data Retention Policy
Current XFIR Data Retention Policy for digital evidence obtained from Clients is defined as **60 days**. However, a complete retention policy is not yet complete, therefore some exceptions may appear, such as:
- for APAC always consult APAC Geo Lead.

Unless there is a specific request from a Client, all digital evidence for a case should be securely deleted after this time. 