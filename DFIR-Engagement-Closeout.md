# DFIR Engagement Closeout

## Table of Contents
1. [**Introduction**](#Introduction)
2. [**Closeout Procedure**](#Closeout-Procedure)
	- [Immediate Actions](#Immediate-Actions)
	- [Delayed Actions](#Delayed-Actions)
4. [**Tutorials**](#Tutorials)
	- [Creating a Password Protected Final Report](#Creating-a-Password-Protected-Final-Report)

## Introduction
The purpose of this page is to document Closeout procedure for DFIR engagements handled by XFIR. This is is a living document. If there is something you want to see documented here or explained with additional detail please contact your geographic Functional IR Lead (listed on the [Homepage](Home.md)).

## Closeout Procedure
### Immediate Actions
1. Deliver a Final Report:
	1. Generate a password protected PDF with a Final Report:
		- password should be 16 characters long, consisting of mixture of lower and uppercase, numbers and special characters,
		- 	tutorial on how to create password protection PDF from MS Word is [below](#Creating-a-Password-Protected-Final-Report) 
	2. Send a password protected PDF of the Final Report to the Client's representatives.
	3. Send password to the Client's primary point of contact using separate channel, eg. text message to a mobile phone (SMS/text message).
2. Upload attachments to Resilient IR ticket:
	- final report in the source docx file,
	- final report in encrypted PDF file,
	- text file called `pass.txt` containing password for final report in encrypted PDF,
	- final version of ETS.
3. Obtain Client's consent to close the IR engagement:
	- after 2 weeks of report delivery, follow up with the Client asking whether they have any comments to the report or whether the case can be closed,
		- in case of no response from the Client, send up to 2 follow up emails, one week apart of each other,
		- in case of no response to the follow up emails, notify the Client that, due to lack of response you assume that they accept the report and XFIR is closing the case,
	- attach to Resilient:
		- evidence of Client's consent to close a case; or
		- in case of lack of response, evidence of all follow up mails sent to the client, including the last one notifying them that the case will be closed.
4. Notify Client when all digital evidence related to the case would be deleted:
	- Obtain current retention time from XFIR [Data Retention Policy](DFIR-Digital-Evidence.md#Data-Retention-Policy),
	- Send a mail to the Client's representatives using below template, and attach this mail to Resilient.
`------------ BEGINNING OF A TEMPLATE ------------`
**Mail subject:** Data Retention notification for IBM XFIR case IR`<YY-NNNN>`
**Mail body:**  
Dear `<Client Name>`,
IBM X-Force IR would like to notify you that per our Data Retention Policy, all digital evidence related to a case IR`<YY-NNNN>` will be deleted within `<N>` days from `<DD>` `<Month name>` `<YYYY>` when we have closed this case. 
`------------ END OF A TEMPLATE ------------`
5. Close IR ticket in Resilient.
	- you do not need to populate Intel fields (and you should not be doing so)
	- day when ticket gets closed defines the official "**IR engagement clouseout date**"
6. Re-assign "Engagement Intel" sub-ticket for this case to Michelle Alvarez
	- this ticket, in most of the cases, has a next id after IR ticket
	- this ticket also should have Description as "INTEL Ticket for ABCD" where ABCD is the id of IR Ticket in Resilient.
7. Set up reminder to perform [Delayed Actions](#Delayed-Actions) after `N` days from "IR engagement clouseout date", where `N` is a value from a [Data Retention Policy](DFIR-Digital-Evidence.md#Data-Retention-Policy).

### Delayed Actions
**IMPORTANT**: Do not proceed with steps listed in this section for IR cases with **legal hold** on their data.

Below steps need to be performed after `N` days from "IR engagement clouseout date", which is defined in the [Data Retention Policy](DFIR-Digital-Evidence.md#Data-Retention-Policy). An IR Case Lead is responsible to ensure that below actions are performed after necessary time has passed by:
1. Delete "Evidence Folder" stored on IBM Box named "IRYY-NNNN-Evidence".
2. Remove from Aspera folder containing evidence named “IRYY-NNNN-Evidence”.
	- If evidence handling rules described in the Spin-Up have been followed correctly, all data from Aspera folder should have been already moved to Box and deleted from Aspera.
3. Follow up on Slack (to leave a trace) with all XFIR Consultants involved into the case to securely delete all Client's data they may store locally.
4. Remove data from LAB.
5. Archive Slack channel (only after all previous steps have been completed).


## Tutorials

### Creating a Password Protected Final Report
Microsoft Word has a native function allowing to export a password protected PDF. 
1. From "File" menu choose "Export" and then "Create PDF/XPS"
<p align="center" width="100%"><img src="screenshots/Encrypted_PDF_report_export1.png"></p>
2. Use "Options" button at the bottom of a new window asking for a destination of the pdf - check "Encrypt the document with a password option"
<p align="center" width="100%"><img src="screenshots/Encrypted_PDF_report_export2.png"></p>
