## Client Data Retention & Handling Guidelines
In most cases, some client data transfer, storage and analysis are required during an incident response engagement. Securing our client's data during and after an engagement is vital to everyone involved. The following section includes high-level guiding principles for handling data in the various phases of an incident response engagement. 

### Engagement Spin-Up
When an IR engagement is created, a client data transfer folder should be created in Box or Aspera. For Box, the folder should be created outside of the **0-Active-Engagements** Box folder. The **0-Active-Engagements** Box folder is for the internal engagement Box folder working documents and data only, and should never host sub-folders that are shared with clients. 

Only the individuals who have a need to access client data for the engagement should be invited to share this client data transfer Box/Aspera folder. This could include the appropriate client contacts, the engagement lead, and individual engagement members depending on the situation. Name the client facing Box and/or Aspera transfer folder(s) with the following naming convention for tracking:

`IRYY-NNNN_<ClientName>_Transfer`

`Example: IR21-5150_ACME-CO_Transfer`

For clients with multiple concurrent engagements, this will help in identifying the correct data transfer folder to dispose of at the completion of the engagement. For more on data disposition **go here**.

At the beginning of the engagement, the client should be informed that XFIR will dispose of their data within 30 days of the engagement closure. There could be situations where the client's internal or external counsel requires XFIR to hold their data pending the outcome of litigation or for other legal considerations. Typically the client's counsel will be the entity directing this data hold. However, it falls on the engagement lead to determine this requirement with the client and their counsel. If there is no requirement for data retention, the 30 day best practice rule applies.

### Engagement Close-Out

Upon the completion of an incident response Engagement there are several steps the engagement lead and engagement members need to complete in order to properly catalogue and dispose of engagement related data. Engagement Box folders containing our engagement tracking sheet, timelines, status reports, and deliverables should be moved from the **0-Active-Engagements** folder in Box to the **1-Archived-Engagements** Folder. Any client data that was moved into the "Data provided by client" folder in this internal engagement specific Box folder should be removed prior to this archiving step.

The client data transfer Box/Aspera folder(s) created for the purpose of information sharing between XFIR and the client should be removed within 30 days of closing the engagement as should have been communicated to the client during the engagement spin-up process. If there are any questions if data should be deleted or not, ask the engagement lead. If needed, you can revisit the conversation with the client for clarification as well.

Any client data that exists in the following locations should also be disposed of in a secure manner:

 - Client data in the Lab (Images, Logs, DetectIR Bulk Collections)
 - Client data resident on IBM information systems (Administrative Laptops, Forensic VMs, etc)
 - Client data on IBM owned transfer medium (Transfer drives, removable media used for imaging, etc)

If there are questions about how to handle data in general ask your geographic lead, lab manager, and/or engagement lead for the engagement in question. It is everyone's responsibility to handle the client data we work with in a responsible manner. Make this a habit when finishing up your engagements and help identify potentially abandoned data that exists outside of this 30 day window, and hold each other accountable to these standards.
