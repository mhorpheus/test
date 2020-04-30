


## Active Voice & Past Tense
IRIS IR and Forensic reports should be written in active voice and past tense. Learning to consistently write in active voice and past tense takes time and effort, but leads to reports that are easier to read, are more accurate, and sound more confident. 

### Active Voice
Active voice should be used in IRIS IR and Forensic documentation whenever possible. 

Using active voice in your writing means that the subject of the sentence comes first and performs the action that the rest of the sentence describes. This is the most straightforward way to present your ideas, because it creates a clear image in the reader's mind of who is doing what. This makes your writing much easier to understand, which is why good writers prefer the active voice.

Sentences written in an active voice flow better and are easier to understand. Using active voice places the emphasis on the subject of the sentence and makes the sentence more straightforward and concise. For example:

-   I really love this dog.
-   Monkeys live in the jungle.
-   She threw the ball to John.
-   The dog ran back to the car.
-   I made a mistake.

Sentences using a passive voice are often harder to understand. Passive voice can make a sentence awkward and vague. The emphasis changes to the object of the sentence, or the thing that is acted upon. For example:

-   This dog is really loved by me.
-   The jungle is where monkeys live.
-   The ball was thrown to John.
-   The car is where the dog ran back to.
-   A mistake was made.

In general, passive sentences tend to have more words than active ones, which is one reason the reader has to work harder to get at the meaning. The sentence structure can also seem unwieldy because it's not immediately obvious who is performing the action. This is sometimes done on purpose, perhaps to avoid assigning blame or in cases where it's not clear who did something.

#### Active Voice Adds Confidence, Accuracy, and Impact
In most cases, using active voice will result in shorter, sharper sentences that are easier for the reader to follow. This makes your writing more clear and aids the reader in visualizing what's happening, especially when you use vivid  [action verbs](http://examples.yourdictionary.com/action-verb-examples.html). For example:

-   The flowers bloomed while I looked for the lost ladybug.
-   The batter stepped to the plate. He tapped the ground once and hit the ball out of the park.

Active voice is useful in fiction to create vivid images and move the plot along, but it's also important in academic writing. When you're trying to explain a complex subject in an essay or persuade a reader of your argument, it pays to keep your sentences short, clear and convincing. Active voice makes you sound in control of your writing, which helps the reader trust what you're saying. For example:

-   The test results prove that the drug works to kill cancer cells.
-   People who run puppy mills care more about profit than pets.
-   The Union army won the Civil War.

While it's true that active voice adds punch to your writing, you may sometimes want to use the passive voice to minimize the impact of your sentence or to add some variety to a longer piece to avoid repetition. Businesses, politicians and other official outlets often use passive voice to soften a negative sentence or to deflect blame. For example:

-   Refunds will not be issued.
-   Mistakes were made.

It's also appropriate to use passive voice when the subject of the sentence - the person who performed the action - is unknown. For example:

-   The bank was robbed yesterday. Police are still looking for the culprits.
#### Active vs Passive

>  **Active:**  The attacker installed a malicious service on the domain controller.  
> **Passive:**  A malicious service was installed on the domain controller by the attacker.
>
>**Active:**  The candidate believes that Congress must place a ceiling on the budget.  
> **Passive:**  It is believed by the candidate that a ceiling must be placed on the budget by Congress.
> 
> **Active:**  Researchers earlier showed that high stress can cause heart attacks.  
> **Passive:**  It was earlier demonstrated that heart attacks can be caused by high stress.
> 
> **Active:**  The dog bit the man.  
> **Passive:**  The man was bitten by the dog.

#### Identifying  Passive Sentences and Converting to Active Voice

If you're ever uncertain about whether your sentence is active or passive, read it aloud to yourself and ask who is performing the action. If the answer isn't already in your sentence, you have likely written in passive voice. If you want the sentence to be active rewrite it so the person performing the action - or making the mistake - is stated clearly at the beginning of the sentence instead.
Here are some tips and strategies for converting sentences from the passive to the active voice:

-  Look for a “by” phrase (e.g., “by the dog” in the last example above). If you find one, the sentence may be in the passive voice. Rewrite the sentence so that the subject buried in the “by” clause is closer to the beginning of the sentence.
	- **Passive**: "A malicious service was installed on the system **by the attacker**"
	- **Active**: " **The attacker installed** a malicious service on the domain controller. "
- Similar to the above tip, look for the word "was" followed by a verb. If you find this, the sentence is likely passive voice. Rewrite the sentence to have the subject  precede the verb (the attacker in the example below) . 
	- **Passive**: "A malicious service **was installed** on the system by the attacker"
	- **Active**: " **The attacker installed** a malicious service on the domain controller. "
-  If the subject of the sentence is somewhat anonymous, see if you can use a general term, such as “researchers,” or “the study,” or “experts in this field.”

### Past Tense
As the writer is usually writing about events which have already happened, the tense of the paper is mainly past tense. However, in some parts of the document, it may be appropriate to use present or future tense. 

For instance, if the author is covering facts that were, are, and forever shall be true, the facts may be referred to in present tense. If the author is writing about actions or activities yet to come, future tense is appropriate

## Dates/Times

All dates/times should be UTC unless the client requests otherwise, or there is a good reason that local time is preferable. 

**Note**: The timezone should follow each timestamp in the body of the report, but can be detailed in the header for tables and figures. 

Dates in the body of a paragraph should be in the format Month DD, YYYY with a leading 0 in the date where appropriate:
```
06 January 2019
06-19 January 2019
06 January, to 19 January 2019
Between 06 January, and 01 February 2019

```
Date/Time in the body of a paragraph should be as below:
```
06 January 2019 at 13:45:12 UTC
06 January 2019 at approximately 13:45 UTC

```

Dates in tables and figures should be modified ISO 8601 e.g.:
```
2019-01-06
2019-01-06 - 2019-01-19
2019-01-06 13:45:12 UTC
2019-01-06 13:45:12 - 14:12:21 UTC
2019-01-06 13:45:12 - 2019-01-19 01:01:01 UTC
```
## References to IBM X-Force IRIS
The team will be referenced once in full within the executive summary of a report and once in full in the body of the report, thereafter it should be referred to as IRIS. On both occasions where referenced in full the IRIS replacement should be introduced. e.g.:

>ACME Co. engaged IBM X-Force Incident Response and Intelligence Services Team ('IRIS')to investigate a suspected network intrusion into the `ACME.NET` domain. During the course of the engagement IRIS did a jolly good job.

>IRIS examined the Windows event logs associated with the compromised host 'ACMEDC001' and identified the following: ...”


## Common Words and Phrases

The following common words or phrases will be used regularly in reports and should be used consistently:

 - 'Threat Actor', 'Malicious Actor', 'Malicious Actors' or 'Malicious Actor(s)', as
   opposed to any alternative term of reference such as 'hacker(s)',
 - Malware as opposed to Virus.
 - Avoid overtly complex wording as a substitute for lack of content:
	 - Overuse of the phrase `aformentioned` when referencing subject matter previously identified within the same context.
 - Email message/messages as opposed to email/email or e-mail etc.
 - Primary user
	 - Where required systems should be referred to as 'System assigned to user X' as opposed to 'X's system' as the latter suggests ownership.
- When mentioning a specific malware, or other technical subject matter for the first time explain the functionality or purpose of the subject for clarification:
	- 'The attackers deployed a variant of the malware "Trickbot"  on the domain controller. Trickbot is a banking trojan that has many capabilities including but not limited to harvesting emails and credentials...'

## Tables and Figures

Tables and figures should be centered in page, and accompanied by a table/figure reference and description e.g. 'Figure 5.5.1 - Screenshot of ransom note'.

When referring to a table/figure in a paragraph immediately preceding or following the table/figure it is acceptable to refer to it as "The table above/below", e.g. The table below details user accounts know to have been compromised. Otherwise they should be referred to by their table/figure reference. e.g. As shown in Figure 5.1.1 the ransom note...

Any tables which will not fit cleanly within a single page, should be dropped out of the body of the report into an Appendix.

## Other Notes
Usernames, hostnames, filenames and similar should be captured in quotations marks within the body of a written paragraph. e.g. User 'harrisonamj' accessed system 'host12' on 19 January 2019...

All malicious URLs should have hyperlinks removed and be prepended by 'hxxp:/hxxps:' and have the stop before the TLD in square brackets e.g. hxxps://www.malicioussite[.]com/sub/more.html

All malicious IP addresses should have the final decimal placed in square brackets e.g. 192.168.1[.]123

## Additional technical writing resources:
 - [Sentence Structure of Technical Writing (MIT)](http://web.mit.edu/me-ugoffice/communication/technical-writing.pdf)
 - [Technical Writing Tutorial (MIT)]([https://ocw.mit.edu/courses/mechanical-engineering/2-000-how-and-why-machines-work-spring-2002/tools/technicalwriting_fixed.pdf](https://ocw.mit.edu/courses/mechanical-engineering/2-000-how-and-why-machines-work-spring-2002/tools/technicalwriting_fixed.pdf))
 - [Technical Writing Guide (Biosystems Engineering)](https://msu.edu/course/be/485/bewritingguideV2.0.pdf)
