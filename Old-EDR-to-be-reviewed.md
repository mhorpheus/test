# Old content, to be reviewed

The following documentation is a guideline for XFIR consultants for the XFIR Incident Response Technology Deployment process and is a living document. If there is something you want to see documented here or explained with further detail please contact your geography Functional IR Lead (listed on the [Homepage](https://github.ibm.com/XFIR/DFIR-wiki/blob/master/Home.md)).

## EDR Technology @ IBM
IBM will always attempt to provide an environment that is "Vendor Agnostic". Having said that XFIR will likely always have to rely, to some degree, on external vendors for various technology solutions. Our partnership agreements with these EDR vendors allow us to use the technology free of charge for up to 60 days.

It is imperative that you set the expectations surrounding this timeframe with the client at the beginning of an engagement where this technology will be incorporated. The client will not have access to this technology after that 60 day time period has expired unless an agreement to use the technology through follow-on services or licensing of the technology itself has been established.

Additionally, whenever EDR technology is deployed in support of an ATA or IR engagement, that engagement should be considered an opportunity for conversion to Managed Detection and Response (MDR) services. It is best practice to get Joe Pisula, or Kurt Rohrbacher involved early in the conversation as the process for pricing these services to the client can take time. We do not want to lose out on those opportunities because we waited too long to involve the right stakeholders in that conversation.

NOTE: *MDR currently supports Carbon Black and Crowdstrike and is onboarding support for Fidelis CyberSecurity and Microsoft Defender ATP in 2020.*

## EDR Technology Platforms

 EDR Platforms are not created equally and the choice to deploy one platform over another should be thoughtfully considered. The goals of the engagement which are closely aligned with the client's expectations should drive your decision making process here. 

Some things to consider when choosing a platform:

 - Do we need network coverage via network sensor?
 - Does the client or the engagement require an on-prem solution?
 - Is one of the main goals to identify root cause?
 - Is there an active attacker in the environment?
 - Will meeting the goals of the engagement require collection of forensic artifacts at scale?
 - How many endpoints are in the scope of the engagement?
 - What capability does the client have to deploy the endpoint agents?
 - Will we need advanced preventative measures such as NGAV or behavioral containment?

The following table lists some of the capabilities and how they compare between the different EDR solutions. *NOTE: This is not a full list of features or differences between these platforms.*

| Capability | Fidelis Cyber Security |  Carbon Black Response | CrowdStrike Falcon |
|--|--|--|--|
| Real-Time Alerting | ✓ | ✓ | ✓ |
| Bulk Data Collection | ✓ | ✓* | ✓* |
| Support for MacOS & Linux | ✓ | ✓ | ✓ |
| Support for Custom Alerts | ✓ | ✓ | ✓ |
| Support for RegEx Queries | ✓ | ✖ | ✓ |
| Native Forensic Data Collection | ✓ | ✖ | ✖ |
| Live Response Capability | ✓ | ✓ | ✓ |
| Capture Memdump | ✓ | ✓ | ✓ |
| NGAV/Preventative Features | ✓* | ✓* | ✓ |
| On-Prem Solution Available | ✓ | ✓ | ✖ |

*\* Limited by one or more factors, see individual EDR documentation details for more information.*

## Requesting EDR Technology

Once a decision has been made on the EDR/Technology solution, you will need to put in an official request to our vendor partner for a new EDR/Technology instance. This process is pretty straight forward but is slightly different depending on the vendor. Also please review the overall technology request documentation [here](https://github.ibm.com/XFIR/DFIR-wiki-ci-stager/blob/master/Requesting-Tech.md).



## Deployment Checklist

Once you have requested the EDR solution it can take upwards of a day or more for our vendor(s) to spin up that instance. After you have access to the console you will also have access to the agent installers for the supported operating systems. 

Reference the following checklist for pre-deployment procedures:

 1. Work with the client to identify what software distribution tools they normally use for deployment of installer packages. In some cases unique solutions might need to be implemented to help the client install the agents. For example SCCM infrastructure affected by a ransomware attack or has been rendered inoperable due to containment measures.
 2. Work with the client to identify other security related software and infrastructure within the environment and provide the application paths for your chosen EDR platform that will need to be excluded for AV/NGAV tools and filesystem scanners.
 3. Work with the client to identify network whitelisting that may be required for the endpoint agents to communicate with the cloud instance. (Most EDR solutions require SSL/TLS over port 443 to be whitelisted for communication. An additional step may be required to whitelist certain implementations of traffic proxying if the client is inspecting SSL traffic.)
 4. Ask the client for a list of operating systems in their environment paying special attention to versions of Linux/Unix as the endpoint agents for these operating systems are often specific to the version and distribution flavor of those systems.
 5. Setup a box folder with the agent installers, user guides and whitelisting documentation for the EDR tool in questions and share that folder with the client.

Check the ATA Documentation folder on the wiki [here](https://github.ibm.com/XFIR/ATA/tree/master/ATA%20Documentation) for individual EDR user guides and whitelisting documentation details.