# IBM CSIRT

## Table of Contents
1. [**Introduction**](#Introduction)


## Introduction
The purpose of this page is to document cooperation between XFIR and IBM CSIRT. This is is a living document. If there is something you want to see documented here or explained with additional detail please contact your geographic Functional IR Lead (listed on the [Homepage](Home.md)).

 Despite having similar focus on DFIR, XFIR and IBM CSIRT have different goals, which define how they operate:
 - XFIR 

####################################
New process
Current State/Issues:
Informal engagement channels (slacks, etc)
CISO going direct to staff for requests
CISO going direct to staff to reassign IRIS resources on from case to case in flight

Solution: 
CISO call hotline for ticket to be raised for all requests  **If this process is not followed, MSS/IRIS can not commit to providing reporting**
IRIS uses Resilient as tracking system to record hours
IRIS provides monthly hours/case report to MSS PE/FA (few IRIS hours uplift to produce)
MSS incorporates report into monthly Executive Financial report and forecast
Solution Impact:
Reduces flexibility (no direct to staff requests, etc)
Reduces availability to work on emergency basis
Reduces CSIRT's ability to reallocate IRIS resources ad hoc

Thank you all.  

######
CSIRT to engage Intel - like IR -> call hotline, triage with Intel, etc.

#################################

From Kurt

# Who/what is CSIRT?

The IBM Cybersecurity Incident Response Team (CSIRT) is IBM's internal incident response team. They are one of the functions of the Office of the Chief Information Security Officer (CISO) for IBM and they exist to minimize risk to IBM. This means responding to all IBM incidents globally, regardless of which IBM business unit is associated with the incident. If you, as an IBM employee, opened a malicious phishing e-mail on your IBM laptop, your system may be the subject of a CSIRT investigation.

However, CSIRT is *NOT* client-facing. Their mission does not extend to providing incident response services to clients. The objective of most of their investigations is to not only understand how an incident occurred and how to contain/remediate it, but also to determine if the incident presents a significant risk to IBM. This could include the risk presented by a disgruntled IBM employee, the risk presented by confidential IBM documentation being left in a public venue or the risk that IBM may have been responsible for a cybersecurity incident within an IBM customer's environment.

It is this last example that will be the subject of this page as it is the most common one where there may be confusion as to whether X-Force IR should respond to the incident or IBM CSIRT.

# CSIRT and GTS

IBM Global Technology Services (GTS) is a major business unit within IBM that provides infrastructure outsourcing services. As of 2021, GTS is spinning off into its own company, a subsidiary of IBM temporarily named "NewCo." For the purpose of this page, we will continue to use the term "GTS." GTS customers can contract with IBM to provide managed infrastructure services. This service line is often referred to as Strategic Outsourcing or "SO". The most common type of SO services involve IBM management of customer *SERVER* infrastructure. Workstation/client infrastructure is also possible but less common for most GTS clients. 

SO contracts vary in scope. The variance includes not only the number and variety of systems to be managed but also the scope of management of those systems. In some cases, SO may only be responsible for management of the hardware the client's systems run on. Or they be responsible for the hardware and operating systems. Or they may be responsible for the hardware, operating systems and middleware. Finally, "full scope" SO services would mean GTS is responsible for managing the hardware, operating systems, middleware and applications that run on these systems.

When it comes to security for SO contracts, the level of IBM responsibility depends on the scope of the contract. GTS may partner with IBM Security Services (our business unit) to also provide managed services to the client, in which case the client is paying IBM to not only manage the SO environment but also to provide security monitoring and other services for some portion of the client network. This may be only the SO scope or could also extend beyond SO scope to encompass the entire client network. In this scenario, the client obviously expects that IBM Security Services will prevent (to the greatest extent possible), detect and respond to security incidents in their environment.

However, if the client does not subscribe to security services, IBM still has some liability when it comes to management of the customer environment. In many cases, GTS employees are connecting to the client environment from IBM-managed systems. This presents the possibility that a compromise could transmit from the IBM network to the customer network, through no fault of the customer. For many of the larger GTS contracts (anything larger than $2M USD), an X-Force IR retainer is required to be included in the GTS contract with the customer to mitigate the risk of this or other types of incidents.

The important thing to remember, however, is that the client did not necessarily ask for IBM to include this in the contract. IBM includes it to mitigate risk. The service description that details how X-Force responds to incidents is not included in the final document the customer signs. Therefore, GTS dictates how X-Force IR interacts with the client. Another important detail to remember when dealing with GTS is that some individuals that support the client on the GTS side are compensated based on the profitability of the overall SO contract. And since the client did not ask for these services to be included, they will often say that X-Force IR will have little to no interaction with that customer, except at their discretion, because any services X-Force IR delivers for that client are costs placed on the SO contract that reduce the overall profitability of the contract.

# How do I triage an incident involving a GTS client?

If a SO client calls the X-Force IR hotline or a representative from the GTS team engages X-Force IR to respond to an incident at their client, X-Force IR consultants must work with the corresponding GTS contact, typically a Delivery Partner Executive (DPE) or Project Executive (PE), to determine the appropriate level of involvement from X-Force IR and CSIRT. 

**In very simplistic terms, if the SO client is aware of X-Force IR services and either engaged us directly or instructed a GTS contact to engage us, then X-Force IR is obligated to respond, regardless of any other factors.**

The single biggest factor that drives CSIRT involvement is whether or not the system or systems in question are managed by GTS. In some cases, GTS may engage X-Force to respond to incidents involving systems that are not managed by GTS but are managed by themselves, in which case there is typically no responsibility for the X-Force IR consultant to advise GTS on engaging CSIRT.

If the system(s) in question are managed by GTS, X-Force IR should advise the GTS contact to also create a ticket with CSIRT. The X-Force IR consultant should not contact CSIRT, themselves; it must be reported by GTS. However, the consultant can point the GTS contact to [this page](https://w3.ibm.com/cybersecurity/report.html) which details the process for notifying CSIRT of an incident. X-Force IR can still engage with the client if CSIRT is also engaged but X-Force IR will work on behalf of the client, taking direction from them and supporting their interests or objectives. CSIRT will not necessarily take direction from the client. They will perform the investigation as they see fit in order to determine IBM's liability or risk exposure.

# What happens if CSIRT is engaged?

If the GTS account team notifies CSIRT of an incident involving an IBM-managed system, CSIRT will work through their intake process. One of the steps of this process is to determine the scope of the GTS contract with the customer and understand which layers of the computing stack IBM is responsible for. If the incident involves a layer of the stack that IBM does not manage, CSIRT may choose not to initiate an investigation, as IBM has no responsibility to manage that layer.

This model is similar to the "shared responsibility model" used by many cloud service providers like IBM, AWS, Azure or Google Cloud. The scope of the customer's services (e.g. IaaS, PaaS, SaaS) determines who is responsible for security: the client or the provider (see image below). For instance, if the scope of the GTS contract dictates that IBM is *NOT* responsible for the applications on the systems managed by IBM, then an incident at the application level would likely not require a CSIRT investigation. If the incident is at the operating system level and IBM only manages the hardware, again, CSIRT would likely not be engaged.

[[https://github.ibm.com/XFIR/DFIR-wiki/blob/master/DFIR/CSP-SharedResponsibilityModel.png]]

If it is not immediately clear which layer of the stack the incident is related to, CSIRT would likely initiate an investigation in order to determine if IBM is at risk or not.

If CSIRT does undertake an investigation, it does not replace or supercede the X-Force IR investigation. Both can be done in parallel. In this scenario, a "Chinese Firewall" must be created between X-Force IR and CSIRT, at least initially. X-Force IR cannot share findings with CSIRT and vice versa. However, the customer may approve the sharing of information for the purposes of not duplicating effort. It is important that this approval be granted in writing in order for X-Force IR to proceed with sharing findings/data with CSIRT. Usually a simple e-mail from the client to that effect is sufficient but consult with IBM Legal if you are not sure.

If both CSIRT and X-Force IR are investigating, X-Force IR should continue to take direction from the client but may coordinate some activities through GTS (e.g. evidence acquisition). In some cases, GTS may insist that X-Force IR remain "behind the scenes" and not interface with the client. We should push back strongly against this type of approach because it usually does not result in the most desirable operating cadence for either the client, GTS or X-Force. It's best to discuss with the GTS account team and engage X-Force IR leadership if assistance is required. It may not be resolvable but often times if we can clearly communicate how putting X-Force IR in front of the client will result in the best outcome for GTS, they will allow it.

# Can CSIRT leverage X-Force IR/X-Force Threat Intelligence?

Yes, in some cases, CSIRT may leverage X-Force resources to support ongoing investigations. Engagement of X-Force resources on CSIRT cases should be approved by the respective X-Force geo lead. If approval is granted, a Resilient ticket should be created per the normal process and should be attached to the "IBM CSIRT" client entry available [here](https://xforce-iris.resilientsystems.com/#incidents/3285?orgId=201&tab=28dfcf24-ba43-03ea-df86-eb6b2fd55074). Note that only certain individuals within CSIRT are authorized to engage X-Force resources. Those individuals are listed in the Resilient ticket. Also note that client engagements always take priority over IBM CSIRT engagements. X-Force can support CSIRT when resources are available to do so. Time claimed against the CSIRT work ID counts towards team utilization (cost recovery).

# Where do I find more info?

Ask your manager or geo lead if you have any more questions on CSIRT or how to work client engagements when CSIRT is involved.

["X-Force IRIS vs CSIRT"](https://yourlearning.ibm.com/activity/ILB-EKREQENEWREV6RA5)



####################################################################
very Old

CSIRT
THIS SECTION CONTAINS CONTENT MOVED FROM OLD DOCUMENT - TO BE REVIEWED

IBM CSIRT notification
When the X-Force IR team is actively working or is notified of an incident involving IBM-owned or managed systems, it is required that notification be given to the IBM CSIRT team. This direction has been given by the IBM CIO’s office and is required when X-Force IR becomes involved in an incident that may cause significant impact to IBM business in either operational, financial, client relationship, or reputation form.

A cybersecurity incident that is within scope of IBM CSIRT response and involvement is:

An incident where an IBM managed asset and/or IBM managed client data and/or an IBM employee/contractor/vendor is involved or at the heart of a cybersecurity allegation or cybersecurity incident. A cybersecurity incident or cybersecurity allegation could involve an IBM Commercial Client (Target, Sony, American Express, BNSF, etc.) or an IBM Internal client (Sametime, w3, Lotus Notes, etc.)

Other types of incidents where IBM CSIRT should be notified:

Loss or compromise of IBM intellectual property
Loss or compromise of IBM employee personal information (PI)
Loss or compromise of client information
Loss or compromise of IBM Confidential information that is technical or scientific in nature
Loss or compromise of personal productivity device (laptop, smartphone, etc.) or other media type (hard drive, USB, flash memory, tape) and contains data about IBM business and/or employees or information relating to IBM's clients
Suspected or confirmed penetration of an IBM system
Compromised IBM system
IBM Web application defacement is in progress or has occurred
Unauthorized access to an IBM system
Suspicious IT activity on an IBM system
Examples of incidents requiring notification to CSIRT include:

GTS Strategic Outsourcing (SO) team supporting client Y has a system found to contain unknown malware and the system is owned by the client but managed by IBM.
A client calls X-Force IR to report an incident involving an IBM-owned and managed system containing client data which has been found to have unknown account creations and other suspicious activity.
If any of the conditions is true, such incident should be handed over to IBM CSIRT. Handover process is defined in Section “CSIRT Engagement”.

IBM CSIRT Notification Process
When it has been determined that an active X-Force IR incident, or notification of an incident, meets the requirements listed in the previous section, X-Force IR will notify the IBM CSIRT team (numbers below). NOTE: If an incident involves an IBM SO account, notify the SO DPE/PE first that you will be making contact with the ICC to eliminate confusion about the role of CSIRT.

X-Force IR will make notification to the Incident Contact Center (ICC).

Incident Contact Center: 1-877-842-8642
International Toll Number: 1-506-646-4222
VRU option to Call Center for North America: 1-888-426-4357
Tie-Line: 696-4222
X-Force IR will ensure the appropriate case details are shared with IBM CSIRT, at the time of notification, and discuss whether IBM CSIRT involvement is required.

NOTE: In the case of an incident involving other IBM entities such as SO, MSS or others, X-Force IR should notify them, in the absence of the client, of the need to involve the IBM CSIRT team and why.

IBM CSIRT Involvment
If IBM CSIRT involvement in an incident is required, the X-Force IR Engagement Lead and IBM CSIRT lead should discuss the best way to proceed with the investigation. For example, in the case of an SO incident, this should involve a call with the account DPE, X-Force IR engagement lead, and IBM CSIRT lead to discuss the best way to work the case with the client and ensure continued progress towards resolution.

When the IBM CSIRT team is involved, incidents can be worked in one of three ways depending on what is best for the client and IBM’s interests.

IBM CSIRT may transition to leading the investigation and continuing the forensics and other tasks with the IBM internal team. In this case, IBM CSIRT will excuse IBM X-Force IR from the investigation, take over communications and status, and provide necessary resources to complete the investigation.
X-Force IR will continue to lead and work the investigation as normal, however, they will provide regular communication to the IBM CSIRT team on investigation progress and findings to ensure appropriate legal involvement and protection of IBM’s interests as required.
X-Force IR and IBM CSIRT will work jointly with resources conducting investigative tasks and regular status flowing through a designated focal point to the IBM team and client. This focal point will be an engagement lead from X-Force IR or IBM CSIRT as determined appropriate for the security incident.
Authority
When CSIRT is involved, X-Force IR still represents the interests of the X-Force IR subscription / ad-hoc client. While X-Force IR and CSIRT will likely collaborate on the response, any and all incident response work should be approved by the X-Force IR client. Should the incident response work not be approved by the client and has been requested by CSIRT, CSIRT will be responsible for absorbing the cost of the analysis (Note: have written approval from CSIRT prior to performing any analysis where CSIRT will incur charges).