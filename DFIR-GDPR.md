
# GDPR for DFIR Engagements

## Table of Contents
1. [**Introduction**](#Introduction)
2. [**TL;DR**](#TL;DR)
3. [**GDPR Regulations Explained**](#GDPR-Regulations-Explained)
	- [Definitions](#Definitions)
	- [Territorial Rules Defining Whether GDPR is Applicable](#Territorial-Rules-Defining-Whether-GDPR-is-Applicable)
	- [Meeting the Minimum GDPR Requirements](#Meeting-the-Minimum-GDPR-Requirements)
4. [**How IBM Deals with GDPR Compliance**](#How-IBM-Deals-with-GDPR-Compliance)
5. [**XFIR Operations for GDPR Constraint Cases**](#XFIR-Operations-for-GDPR-Constraint-Cases)
	- [Exception for Data Processing Outside EU](#Exception-for-Data-Processing-Outside-EU)
	- [EDR](#EDR)

## Introduction
The purpose of this page is to document address topics related to GDPR for DFIR engagements. This is is a living document. If there is something you want to see documented here or explained with additional detail please contact your geographic Functional IR Lead (listed on the [Homepage](Home.md)).

The intention of this page is to provide sufficient coverage for most of the GDPR concerns which XFIR face during IR engagements. Below information and set of guidelines are presented in a form which can be understood by XFIR consultant and should not be considered a legal document under any circumstances. 

This page describes the GDPR topic with an assumption that XFIR as IBM is a data processor for a Client owned data. Situation where IBM is data owner is beyond the scope of this page.

If Client is asking questions or requesting information beyond what's document on this page, you should involve IBM Legal. To proceed in such a case engage your local IR Functional Lead or Geo Lead.

## TL;DR
The intention of this section is to provide simple and immediate answers to the most common questions and concerns. Any of the topics addressed in the section is explained in more details below on this page.

**Q:** Is it really required to store data physically in EU?
**A:** No, it is not necessary. Implementing additional security controls and additional processes, one can meet minimum GDPR requirements, even when data are stored outside EU. See section [Meeting the Minimum GDPR Requirements](#Meeting-the-Minimum-GDPR-Requirements).

**Q:** Can we use IBM BOX to store data from GDPR constraint Client?
**A:** Yes. XFIR can officially use BOX to store Client's data, even though data is not physically present in EU. See section [How IBM Deals with GDPR Compliance](#How-IBM-Deals-with-GDPR-Compliance).

**Q:** Can XFIR transfer digital evidence and get them processed outside EU?
**A:**  Only if Client express explicit consent for it. See section [Exception for Data Processing Outside EU](#Exception-for-Data-Processing-Outside-EU).

**Q:** Can we use EDR solutions, as they are US based companies?
**A:** Yes, if instance was launched in a Cloud physically located in EU, with some exceptions for Crowdstrike. See section [EDR](#EDR).

## GDPR Regulations Explained
This section contains the most important definitions related to XFIR operations and should not be considered a complete list of GDPR related terms definitions.

### Definitions
1. **data controller** - means the natural or legal person, public authority, agency or any other body which alone or jointly with others determines the purposes and means of the processing of personal data; where the purposes and means of processing are determined by EU or Member State laws, the controller (or the criteria for nominating the controller) may be designated by those laws.
2. **data processor** means a natural or legal person, public authority, agency or other body which processes personal data on behalf of the controller.
3. **personal data** means any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person.
4. **data processing** means any operation or set of operations which is performed on personal data or on sets of personal data, whether or not by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction.

### Territorial Rules Defining Whether GDPR is Applicable
This section discuss territorial rules defining cases to which GDPR is applicable. 
1.  GDPR applies to the processing of personal data in the context of the activities of an establishment of a controller or a processor in the EU, regardless of whether the processing takes place in the EU or not.
2.  GDPR applies to the processing of personal data of data subjects who are in the EU by a controller or processor not established in the EU, where the processing activities are related to:
	- the offering of goods or services, irrespective of whether a payment of the data subject is required, to such data subjects in the EU; or
	- the monitoring of their behaviour as far as their behaviour takes place within the EU.
3. GDPR applies to the processing of personal data by a controller not established in the EU, but in a place where Member State law applies by virtue of public international law.

Following conclusions can be drawn based on the above:
- If Client (as data owner) is bound by GDPR, then XFIR (as data processor) is also bound by GDPR.
- Client can be a company from outside EU, but if stores or processes data of EU citizens, then Client is bound by GDPR.
- Practically, every company becomes easily bound by GDPR, cause it is highly possible that it is processing EU citizen data, eg. maintaining email address book with even single record of EU citizen.

### Meeting the Minimum GDPR Requirements
Most of the people simplify and assume that to meet minimum GDPR requirements, data must reside within the EU. However, this is incorrect. There are two ways data processor can meet the minimum GDPR requirements:
1. Data are stored physically in EU **and** data processor/subprocessor fulfils minimum security and data protection requirements.
2. Determine whether data processor provides the same or adequate security and data protection measures, recognised by GDPR and country specific data protection laws. This is performed using DPIA (Data Protection Impact Assessment).

In the second scenario, data processor performs DPIA which must be approved by its DPO or Legal. Afterwards data owner can review result of DPIA and accept it. This process, when completed successfully, allows data processor to meet the minimum GDPR requirements, even though data are not stored physically in EU. The outcome of DPIA is documented in a document called DPA (Data Processing Agreement or Data Processing Addendum).

## How IBM Deals with GDPR Compliance
IBM, as a global company, was not able to fulfil the GDPR requirement to store all data physically in EU. However, IBM was able to meet the minimum GDPR requirements by performing the DPIA (as discussed in section [Meeting the Minimum GDPR Requirements](#Meeting-the-Minimum-GDPR-Requirements)). The outcome of this process was documented in DPA and subprocessors listing, together with the fact that IBM rely on EU Model Clauses to contractually cover the cross border transfers of EU data.

Client may ask, how we as IBM deal with GDPR Compliance for IBM Clients. In such a case, **always download the latest versions of below documents** and send them to a Client:
1. DPA (Data Processing Agreement or Data Processing Addendum):
	- navigate to: https://www.ibm.com/support/customer/csol/terms/?cat=security-services-dpa-exhibit
	- Search for document with a title containing "Data Processing Addendum" and "Security Consulting"
	- at the moment of writing it was named "Data Processing Addendum Exhibit IBM Security Services – Security Consulting & Systems Integration (C&SI) Services and IBM Managed Security Services (MSS)"
2. Subprocessors list:
	- navigate to: https://www.ibm.com/support/customer/csol/terms/?cat=security-services-dpa-exhibit
	- Search for document with a title containing "subprocessors".
	- In case of a trouble, DPA document contains "Sub-processors" section with a link to a list.

In theory, each GDPR bound contract should have those 2 documents as attachments. 

All IBM external tools (eg. Box) XFIR is using, as well as all IBM Partners (such as Carbon Black, Crowd Strike, etc)  are listed in the Subprocessors list. The fact, that particular subprocessor is on that list, means that it has applied adequate security and data protection measures recognised by GDPR and country specific data protection laws. For this reason, we as IBM employees can use it to handle GDPR bound cases. 

## XFIR Operations for GDPR Constraint Cases

### Exception for Data Processing Outside EU
This section is NOT applicable to data processed (eg. transferred) within EU.

Client can express an **explicit consent** to **process data** outside EU (this includes transfer, storage, etc). Such exception:
- is not given to an individual, but to a **Data Processor** which in our case is a global **IBM X-Force IR**,
- must say for what purpose, where and for what period data will be processed,
- must by approved by **Client's DPO** (Data Processing Officer) or **Client's Legal** representative,
- must be expressed in a written form, but email is sufficient.

To obtain such exception:
1. Use a statement template provided below.
2. Populate marked fields with necessary values, paying special attention to list IBM location for data processing, eg. USA.
3. Provide prepared statement to Client's contact point.
4. Eligible approver from Client side (mentioned above in this section) must send you a mail containing this statement.

`------------ BEGINNING OF A TEMPLATE ------------ `
Please take this email as express consent for IBM X-Force IR to transfer forensic data acquired from the `<Client>` environment to a forensic lab hosted in the `<IBM location, eg. U.S.>` to support a security incident investigation. We understand that the forensic data may contain data subjected to the GDPR and authorize IBM X-Force IR to process the data on our behalf to support the ongoing incident investigation. We consider the processing as occasional and occurring on a small scale to answer specific investigative questions.
`------------ END OF A TEMPLATE ------------ `

IMPORTANT: If you have obtained such exception, it must be immediately attached to the Resilient IR ticket.

### EDR
Both VMWare Carbon Black and Crowdstrike are listed in the Suprocessors list (discussed [here](#How-IBM-Deals-with-GDPR-Compliance), thus allowing XFIR to use them for GDPR bound cases. However, to additionally address Client's concerns, both EDR providers are able to spin up a cloud instance of their products within a Cloud provider physically located in EU. Carbon Black is using AWS located in Frankfurt. 

When requesting new instance, make sure to mention that it needs to be located in EU for every potentially GDPR bound cases. 

**Carbon Black**
Official CB documents addressing GDPR requirements are available in the box folder: https://ibm.ent.box.com/folder/130554256709

**Crowdstrike**
**IMPORTANT**: Even though CS can spin up EU based instance, the FFC (Falcon Forensics Collector) is executed from USA based instance. If there is a need to use FFC, a separate explicit consent is necessary from a client, worded similarly to the template presented in the above section discussing [exception](#Exception-for-Data-Processing-Outside-EU).







