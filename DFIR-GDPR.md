# GDPR for DFIR Engagements
​
## Table of Contents
1. [**Introduction**](#Introduction)
2. [**TL,DR**](#TL,DR)
3. [**GDPR Regulations Explained**](#GDPR-Regulations-Explained)
	- [Definitions](#Definitions)
	- [Territorial Rules Defining Whether GDPR is Applicable](#Territorial-Rules-Defining-Whether-GDPR-is-Applicable)
	- [Meeting the Minimum GDPR Requirements](#Meeting-the-Minimum-GDPR-Requirements)
4. [**How IBM Deals with GDPR Compliance**](#How-IBM-Deals-with-GDPR-Compliance)
5. [**XFIR Operations for GDPR Constraint Cases**](#XFIR-Operations-for-GDPR-Constraint-Cases)
	- [Exception for Data Processing Outside EU](#Exception-for-Data-Processing-Outside-EU)
	- [EDR](#EDR)
​
## Introduction
The purpose of this page is to document and address topics related to General Data Protection Regulation (GDPR) for DFIR engagements. This is a living document. If there is something you want to see documented here or explained with additional detail to be included, please contact your geographic Functional IR Lead (listed on the [Homepage](Home.md)).
​
The intention of this page is to provide sufficient coverage for most of the GDPR concerns that XFIR face during IR engagements. The information and guidelines below are presented in a form which can be understood by XFIR consultants and should not be considered legal advice under any circumstances (please reach out to IBM Legal for support as further describe below). 
​
This page describes the GDPR topic with an assumption that XFIR as IBM is a data processor for client owned data (Data Controller). Situation where IBM is Data Controller is beyond the scope of this page.
​
If the client is asking questions or requesting information beyond what is documented on this page, you should involve IBM Legal. To proceed in such a case, engage your local IR Functional Lead or Geo Lead.

This page has been reviewed and approved by IBM Legal, however it is only for **internal** XFIR usage.
​
## TL,DR
The intention of this section is to provide simple and immediate answers to the most common questions and concerns. Any of the topics addressed in this section are explained in more detail further down this page.
​1. **Q:** Is it really required under GDPR to store data physically in EU?
	- **A:** No, it is not an absolute requirement. Implementing additional security and data privacy controls, contractual clauses and additional processes, one can meet minimum GDPR requirements, even when data is stored outside EU. See section [Meeting the Minimum GDPR Requirements](#Meeting-the-Minimum-GDPR-Requirements).
2. **Q:** Can we use IBM BOX to store client's personal data that is subject to GDPR?
	- **A:** Yes. XFIR can officially use BOX to store client data, even though data is not physically present in EU. See section [How IBM Deals with GDPR Compliance](#How-IBM-Deals-with-GDPR-Compliance).
3. **Q:** Can XFIR transfer digital evidence and get that processed outside EU?<br />
	- **A:**  Yes, it's contractually covered within DPA and subprocessors list, which should be part of each contract.  However processing by XFIR NA requires explicit consent from the client. See section [Exception for Data Processing Outside EU](#Exception-for-Data-Processing-Outside-EU).
4. **Q:** Can we use EDR solutions, as they are US based companies?<br />
	- **A:** Yes, if an instance was launched in a Cloud platform physically located in EU, with some exceptions for Crowdstrike. See section [EDR](#EDR).
​
## GDPR Regulations Explained
This section contains the most important definitions related to XFIR operations and should not be considered a complete list of GDPR related terms or definitions.
​
### Definitions
1. **data controller** - means the natural or legal person, public authority, agency or any other body which alone or jointly with others determines the purposes and means of the processing of personal data; where the purposes and means of processing are determined by EU or Member State laws, the data controller (or the criteria for nominating the controller) may be designated by those laws.
2. **data processor** means a natural or legal person, public authority, agency or other body which processes personal data on behalf of the data controller.
3. **personal data** means any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person.
4. **data processing** means any operation or set of operations which is performed on personal data or on sets of personal data, whether or not by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction.
​
### Territorial Rules Defining Whether GDPR is Applicable
This section discusses territorial rules defining cases to which GDPR is applicable. 
1.  GDPR applies to the processing of personal data in the context of the activities of an establishment of a controller or a processor in the EU, regardless of whether the processing takes place in the EU or not.
2.  GDPR applies to the processing of personal data of data subjects who are in the EU by a controller or processor not established in the EU, where the processing activities are related to:
	- the offering of goods or services, irrespective of whether a payment of the data subject is required, to such data subjects in the EU; or
	- the monitoring of their behaviour as far as their behaviour takes place within the EU.
3. GDPR applies to the processing of personal data by a controller not established in the EU, but in a place where Member State law applies by virtue of public international law.
​
Following conclusions can be drawn based on the above:
- If the client (as data controller) is subject to GDPR, then XFIR (as data processor) is also subject to GDPR.
- The client can be a company from outside EU, but if they process (store) data of EU citizens, then the client is subject to GDPR.
- Practically, every company becomes easily subject to GDPR, because it is highly possible that it is processing EU citizen data, eg. maintaining an email address book with even a single record for a EU citizen, commerce website selling to EU citizens, etc.
​
### Meeting the Minimum GDPR Requirements
Most of the people simplify and assume that to meet minimum GDPR requirements, data must reside within the EU. However, this is incorrect. There are two ways that a data processor can comply with the minimum GDPR requirements:
1. Data **is stored** physically in EU/EEA/adequate country **and** data processor/subprocessor fulfils minimum security and data protection requirements implemented using a DPA (Data Processing Agreement or Data Processing Addendum) document, incl. DPA Exhibit, which should be part of the contract.
2. Data is **not** stored physically in EU/EEA/adequate country **and** contract between data controller and data processor contains additional clauses to mitigate the geographical criteria. It is implemented using DPA (Data Processing Agreement or Data Processing Addendum) document, including DPA Exhibit, which should be part of the contract.
​
Every IBM standard DPA describes what operations on (personal) data are allowed, but the primary operation being "review" is by default included in the list of processing activities. 
​
## How IBM Deals with GDPR Compliance
IBM, as a global company, was not always able to fulfil the GDPR requirement to store all data physically in EU. However, IBM was always able to meet the minimum GDPR requirements (as discussed in section [Meeting the Minimum GDPR Requirements](#Meeting-the-Minimum-GDPR-Requirements)). All details are provided within DPA document, mainly:
- addressing trans-border data processing with EU Standard Contractual Clauses and Privacy Shield,
- providing a list all subprocessors,
- providing a list of technical and operational measures used by IBM to address data security (a security policy in practice).
​
The client may ask how we, as IBM, deal with GDPR Compliance for IBM clients. In such a case, **always download the latest standard versions of below documents** and send them to the client:
1. DPA (Data Processing Agreement or Data Processing Addendum):
	- navigate to: https://www.ibm.com/support/customer/csol/terms/?cat=security-services-dpa-exhibit,
	- search for document with a title containing "Data Processing Addendum" and "Security Consulting",
	- at the moment of writing it was named "Data Processing Addendum Exhibit IBM Security Services – Security Consulting & Systems Integration (C&SI) Services and IBM Managed Security Services (MSS)".
2. Subprocessors list:
	- navigate to: https://www.ibm.com/support/customer/csol/terms/?cat=security-services-dpa-exhibit
	- search for document with a title containing "subprocessors".
	- in case of a trouble, DPA document contains "Sub-processors" section with a link to a list.
​
In theory, each contract under which IBM processes personal data on behalf of client, should have those two documents as attachments. Also in theory, all IBM contracts have been reviewed back in 2018 and wherever necessary DPA's and DPA Exhibits have been signed with clients.
​
All IBM entities (including NA based companies), external tools (eg. Box) that XFIR is using, as well as all IBM Partners (such as Carbon Black, Crowd Strike, etc) are listed in the Subprocessors list. The fact that a particular subprocessor is on that list, means that it has applied adequate security and data protection measures recognised by GDPR and country specific data protection laws. For this reason, we as IBM employees can use that subprocessor to process client personal data subject to GDPR. It also means, that any person from IBM should be covered by this list, thus is compliant to process data from GDPR constraint case. **However**, XFIR NA explicitly requires an additional exception (see [below](#Exception-for-Data-Processing-Outside-EU)).
​
## XFIR Operations for GDPR Constraint Cases
​
### Exception for Data Processing Outside EU
This section is NOT applicable to data processed (eg. transferred) within the EU. 
​
**In practice**, this exception is only required to process data by XFIR Americas team.
​
The client can express an **explicit consent** to **process data** outside the EU (this includes transfer, storage, etc). Such exception:
- is not given to an individual, but to a **Data Processor**, which in our case is a global **IBM X-Force IR**,
- must say for what purpose, where and for what period data will be processed,
- must by approved by the **client's DPO** (Data Processing Officer) or the **client's Legal** representative or the **client’s authorized point of contact**,
- must be expressed in a written form, but an email message is sufficient.
​
To obtain such exception:
1. Use the statement template provided below.
2. Populate marked fields with necessary values, paying special attention to the list of IBM location for data processing, eg. USA.
3. Provide the prepared statement to the client's point of contact.
4. Eligible approver from the client side (mentioned above in this section) must send you an email message containing this statement.
​
`------------ BEGINNING OF TEMPLATE ------------ `
Please take this email message as express consent for IBM X-Force IR to transfer forensic data acquired from the `<client>` environment to a forensic lab hosted in the `<IBM location, eg. U.S.>` to support a security incident investigation. We understand that the forensic data may contain data subjected to the GDPR and authorize IBM X-Force IR to process the data on our behalf to support the ongoing incident investigation. We consider the processing as occasional and occurring on a small scale to answer specific investigative questions.
`------------ END OF TEMPLATE ------------ `
​
IMPORTANT: If you have obtained such exception, it must be immediately attached to the Resilient IR ticket.
​
### EDR
Both VMWare Carbon Black and Crowdstrike are listed in the Suprocessors list (discussed [here](#How-IBM-Deals-with-GDPR-Compliance), thus allowing XFIR to use them for cases subject to GDPR. However, to additionally address client concerns, both EDR providers are able to spin up a cloud instance of their products within a Cloud provider physically located in EU. Carbon Black is using AWS located in Frankfurt. 
​
When requesting new instances, make sure to mention that it needs to be located in EU for every potentially case subject to GDPR. 
​
**Carbon Black**
Official CB documents addressing GDPR requirements are available in the Box folder: https://ibm.ent.box.com/folder/130554256709.
​
**Crowdstrike**
**IMPORTANT**: Even though CS can spin up EU based instance, the FFC (Falcon Forensics Collector) is executed from a USA based instance, unless CS has since managed to deploy this from an EU instance. However this still needs to be confirmed. If there is a need to use FFC, a separate explicit consent is necessary from the client, worded similarly to the template presented in the above section discussing [exception](#Exception-for-Data-Processing-Outside-EU).
