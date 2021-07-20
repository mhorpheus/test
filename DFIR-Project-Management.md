# Project Management for DFIR Engagements

## Table of Contents
1. [**Introduction**](#Introduction)
2. [**Handling Digital Evidence, Client Data and Case Data**](#Handling-Digital-Evidence-Client-Data-and-Case-Data)
	- [Case Folder](#Case-Folder)
	- [Evidence Folder](#Evidence-Folder)

## Introduction
The purpose of this page is to document Project Management approach for DFIR Engagements by XFIR. This is is a living document. If there is something you want to see documented here or explained with further detail please contact your geographic Functional IR Lead (listed on the [Homepage](Home.md)).

This page provides guidelines on how to manage DFIR engagements after initial [Triage](DFIR-Triage-Scoping.md) and [Spin-Up](DFIR-SpinUp.md) have been completed and an investigation has been initiated. 

## Handling Digital Evidence, Client Data and Case Data
This section discuss storage of Digital Evidence, other data obtained from the client and case data. The approach here is to provide a **clear separation between data owned by the client** (provided for investigation) **and data produced by XFIR** during our investigation. Data owned by the client should be kept separately for following reasons:
- allows to implement 'need to know' rule for access to a Client data, while, still case data are shared within the team,
- it limits the chances that XFIR internal data are shared with Client or others outside the team,
- build the environment, which is ready to be used with Labs, which is not possible with all information stored within single folder:
	- Case folder is easily accessible from workstations and allows for a collaborative work, eg. editing ETS in the Excel Online by multiple people in parallel.  
	- Evidence folder can be synced or placed directly in the Lab, allowing direct access to evidence for processing.
- after investigation is finished, client data must be deleted in a secure way per XFIR [Data Retention Policy](DFIR-Digital-Evidence.md#Data-Retention-Policy),
  - separation allows to identify what data needs to be destroyed in an easy and reliable way - no need to spend time searching for client owned data as simply whole folder is destroyed; also lowers the chance of 'something' being forgotten,
  - content of Case folder can easily be archives without the risk that some of the Client's data are there. 

Details on how and where to create folders is discussed below and can be found [here](DFIR-SpinUp.md#Setting-up-Collaboration-Environment), together with links to folder structure templates to reuse them.

### Case Folder
It should contain:
- final report and all interim reports,
- status updates,
- all other administrative documents (eg. hours usage summary),
- anything being a product of the analysis performed by XFIR, eg: timelines, graphs, Intel Reports, etc.
- malware samples and related data, the client is not the owner of malware identified,
- **do not** store anything listed under the "Evidence folder".

### Evidence Folder
It should contain (in most of the cases it is a Box folder or can be lab storage):
- digital evidence, eg. disk images, memory dumps, and data exported from these,
- triage outputs,
- any client generated exports, such as logs, filtered logs, etc.
- raw files pulled via EDR, eg. evtx.
- raw and their processing results from company wide hunting.

### Examples of what to store where:
1. EDR agent/sensor installers - `Case Folder/Shared with a Client`
2. Status reports, daily reports and other documents produced by XFIR - `Case Folder/Shared with a Client/`
3. Evidence (disk or memory images, logs, etc). upload - `Evidence Folder/Shared with a Client/`
4. Documentation about client environment - `Evidence Folder/Documents from Client/`
5. Individual system timelines - `Case Folder/ETS/`
6. Additional files pulled from Client's environment as a part of hunting over EDR - `Evidence Folder/Hunting/`
7. Admin stuff, eg. summary of subscription hours used - `Case Folder/Project Management`

