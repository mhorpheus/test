# Project Management for DFIR Engagements

## Table of Contents
1. [**Introduction**](#Introduction)
2. [**Handling Digital Evidence, Client Data and Case Data**](#Handling-Digital-Evidence-Client-Data-and-Case-Data)
	- [Case Folder](#Case-Folder)
	- [Evidence Folder](#Evidence-Folder)

## Introduction
The purpose of this page is to document Project Management approach for DFIR Engagements by XFIR. This is is a living document. If there is something you want to see documented here or explained with further detail please contact your geographic Functional IR Lead (listed on the [Homepage](Home.md)).

This page provides guidelines on how to manage DFIR engagements after initial [Triage](DFIR-Triage-Scoping.md) and [Spin-Up](DFIR-SpinUp.md) have been completed and investigation has been initiated. 

## Handling Digital Evidence, Client Data and Case Data
This section discuss storage of Digital Evidence, other data obtained from Client and Case Data. The intention is to provide a clear separation between data owned by a Client (provided for investigation) and data produced by XFIR as an outcome of investigation. Data owned by a Client should be kept separately, so they can be easily identified and security deleted per XFIR [Data Retention Policy](DFIR-Digital-Evidence.md#Data-Retention-Policy).

Details on how and where are created folder discussed below can be found [here](DFIR-SpinUp.md#Setting-up-Collaboration-Environment).

### Case Folder
It should contain:
- final report and all interim reports,
- status updates,
- all other administrative documents (eg. hours usage summary),
- anything being a product of the analysis performed by XFIR, eg: timelines, graphs, Intel Reports, etc.
- malware samples and related data, as Client is not an owner of the malware
- **do not** store anything listed under the "Evidence folder"

### Evidence Folder
It should contain (in most of the cases it is a Box folder or can be lab storage):
- digital evidence, eg. disk images, memory dumps, and data exported from them
- triage outputs,
- any client generated exports, such as logs, filtered logs, etc.
- raw files pulled via EDR, eg. evtx