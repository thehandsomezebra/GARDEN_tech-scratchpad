---
date: 2024-01-10
---

... Back to [[2024 CodeMash]] ...


[[Thinking Architecturally]]

#### Thinking Architecturally
https://codemash.org/session-details/?id=535616

##### **Presented by:** [Nathaniel Schutta](https://codemash.org/speaker-details?id=1f3fa71c-0021-4d6e-af47-0013ecbaeb33)

Time: Wednesday, Jan. 10, 1:00 PM - 5:00 PM

Rich Hickey once said programmers know the benefits of everything and the trade offs of nothing...an approach that can lead a project down a path of frustrated developers and unhappy customers. As architects though, we must consider the trade offs of every new library, language, pattern or approach and quickly make decisions often with incomplete information. How should we think about the inevitable technology choices we have to make on a project? How do we balance competing agendas? How do we keep our team happy and excited without chasing every new thing that someone finds on the inner webs?  
  
As architects it is our responsibility to effectively guide our teams on the technology journey. In this talk I will outline the importance of trade offs, how we can analyze new technologies and how we can effectively capture the inevitable architectural decisions we will make. I will also explore the value of fitness functions as a way of ensuring the decisions we make are actually reflected in the code base.

Room: Nile**Tags:** Career Development, Soft Skills, ArchitectureLevel: Intermediate

---



I attended this as a 4 hr workshop session, the following are my notes from this session, from my perspective.


---


Recording of his talk from different conference in shorter-from:
https://www.youtube.com/watch?v=HaBKwa4E-Ro

His written abstract:
https://ntschutta.io/abstracts/thinking/

---


[[MY_NOTES from Thinking Architecturally]]



MY SUMMARY:


As DevOps engineers, we are often at the forefront of designing and maintaining complex software systems. Our decisions have a profound impact on the system's performance, reliability, and maintainability. To ensure we make well-informed decisions, we must adopt a structured approach that emphasizes documentation and continuous evaluation.  There's a lot that we can learn from an architectural viewpoint, so here's some of my biggest takeaways:

**The Power of Architectural Decision Records (ADRs)**

ADRs provide a systematic way to capture the rationale behind our architectural choices. They serve as a valuable communication tool, enabling team members to understand the "why" behind our decisions, not just the "what." With ADRs, we can:

- Facilitate effective knowledge transfer, ensuring that new team members can quickly grasp the architectural landscape.
- Establish consistency in our decision-making process, promoting a shared understanding of the system's evolution.
- Create a historical record of architectural decisions, enabling us to revisit and learn from past experiences.

An example ADR could look like this:
```
- It does not need to be complicated
- ADR: Lightweight atchitecurtew decision records
- title/ID (immutable)
- sequential order. 3-ish digit number should be suficient
- This can be helpful to eliminate tribal knowledge and establish context rapidly.
- Status - proposed, accepted, deprecated, superceded
- What is the problem - do not skimp on this! Give couple paragraphs or even pages!
- Give assumptions and constraints
- What are the options - 
- list pros and cons
- Which did you choose?
- Explain why?
	- Also explain why not --- we eliminated this other reason because xyz.
- Consequences of the decision (both positive and negative)

```

Some other information about using ADRs:
- If you do not fill this out, someone else will come up with a story and it could be drama.. Show your work!
- Also, you gain credibility if you go thru this process.
- This is also being done for people who are coming after you....(CYA)
	- Please remember that you will be the person who comes after you at some point.. You will always wonder "which idiot wrote this?!" but eventually it will dawn on you that YOU were that idiot.
- Consider a "time capsule" of what did you do and why. Even a short and sweet screencast can be good.
- Prevent Monday-morning-quarterbacking for "Why did we do this?" ... *"I'm sure we had a good reason, does anyone remember what that was?" "That's not what I would have done"* <--- you will now have reasons if you fill out all of the above.
- Do periodic reviews (especially with teams that have new members) because it can bring valued info to the table.
- Store in version control! Old versions WILL stick around.  Make sure that things are documented and stored and updated.  This is not the place for wiki or jira tickets! No one looks back at those things as regularly as they should... keeping it in version control with the repo will allow ease of use, access and maintainability.
	- Also don't overcomplicate it! Does not need to be it's own app...It does not need to be a website. It does not need to be a wiki. This should be short and sweet, always able to be updated when someone commits their code.  Simply use a bunch of files with a sequential order in your repo for best results.


https://adr.github.io/



By embracing ADRs, we foster a culture of transparency and accountability, encouraging thoughtful decision-making and continuous improvement.  If you don't do them right now, you can always start today. You don't need to start with a new project to do something right.


**Leveraging Fitness Functions for Architectural Health**

Quality attributes are essential characteristics that measure the non-functional aspects of a software system, complementing the functional requirements. These attributes, often referred to as "-ilities", encompass a wide range of aspects, including (but certainly not limited to) scalability, reliability, security, usability, and maintainability. By focusing on quality attributes, software architects and engineers can create systems that are not only functional but also resilient, adaptable, and user-friendly. Defining and prioritizing quality attributes early in the software development process helps ensure that the resulting system meets the needs of end-users and stakeholders.

Fitness functions are ways to achieve these quality attributes. They are essential tools for assessing the effectiveness of our architectural decisions. They provide quantifiable metrics that measure how well the system meets its intended quality attributes, such as performance, scalability, reliability, and maintainability. By continuously monitoring fitness functions, we can:

- Identify areas where the architecture may be falling short, allowing us to take proactive steps to address potential issues.
- Track the system's progress over time, ensuring that it continues to meet our evolving requirements.
- Make data-driven decisions about architectural changes, optimizing the system's overall health and performance.

Fitness functions empower us to make informed decisions, ensuring that our architectural choices align with the system's desired outcomes and user expectations.

Together, ADRs and fitness functions form a powerful combination that enables us to create and maintain software systems that are resilient, adaptable, and responsive to changing needs. By embracing these practices, we can elevate our engineering capabilities and deliver exceptional solutions that can stand the test of time.


---

### My scrambled notes:




Architectural katas
	fundamentalsofsoftwarearchitecture.com/katas/list.html


"quality attributes" is a better way to call it "non-functional requirements"
	also "cross functional requirements"

- maintainability
- scalability
- reliability
- security
- deployability
- simplicity *important, often overlooked*
		- "It takes a lot of intellectual horsepower to understand this codebase"
- wiki page with system quality attributes


"It depends" <-- it's a very subjective space. There's no "best" in this space... we're trying to do the "least worst" lol


Security & usability for the instance -- seems to be on differing ends of the spectrum

The art of what we're trying to do: It's a balance.



How to get buy in for things that are simple & maintainable?
We need to influence them to believe it's their idea, lol
- outline the benefits. This is what YOU get out of this.
- Find common ground - we all agree this should suck less.
- Avoid aggression, don't argue up the org chart
- Listen.  Often times people just need to be heard
	- "Is this something you want me to fix? Or is this something you want me to listen to?"
- It does need to be a conversation - no matter how hard it is.
- It is hard to convince people to do something
- Find the influencers.. influence the influencer. Bounce ideas across to them first. Get them to be the champions of things you want to persuade for
- Approach as an equal..  Rely on the strength of your ideas and your reputation
	- Your reputation speaks for you when you are not in the room
		- If you don't know what your reputation is, ASK
		- You may not like the answer, but it gives you the opprotunity to change it.
- Find common ground.
- Reciprocity rules. I'll help you, you help me.
- Be respectful
- Research your ideas - use trusted sources.
	- If it resonates in your org, use it
- Recruit allies, nothing wrong with bringing help
- Speak their language... technobabble might be too much for them.
- What resonates?
	- Cost? speed? etc?
- Shape your statement accordingly.





When you are looking at requirements/specs lists, look for words that stand out to you.
	- "demand is extremely high"
	- "millions of cars"
	- "available 24x7"
	- "owner to check the stats" <-- who is owner?
	- "must be secure" <-- what is secure?
	- "owner to summon the car" <-- location data.
	- "generates a lot of information that can be mined" <-- how much? What kind of data
	- "only authorized users" <-- who? How can you tell?
	- "audit access" <--
- Find words that equate to risk!!
- Auditability! Availability! Security! Usability!
- How would you rank them?
	- Rank quality attribute from high/low to importance.
	- This ranking might be different as compared to other groups (security team vs customer vs maintainer)
- The value of this is the DISCUSSION that happens... Getting feedback -- agree/disagree, etc








---
#### Group project:
Conference organizer needs a management system for the conferences he runs for both speakers and attendees

- Users: hundreds of speakers, dozens of event staff, thousands of attendees
- Requirements:

- attendees can access speaking schedule online, including room assignments
- speakers can manage talks (enter, edit, modify)
- attendees 'vote up/down' talks
- organizer can notify attendees of schedule changes up-to-the-minute (if attendees opt in)
- each conference (being a different subject) can be branded independently
- speaker slides are accessible online only to attendees
- evaluation system via web page, email, SMS, or phone

- Additional Context:

- Conference runs across the US.
- Very small support staff.
- 'Bursty' traffic: extremely busy when conference is occurring.
- Conference organizer wants to easily 'skin' the site for different technology offerings.


Speakers
- reliability
- usability
- simplicity
- maintainability

Staff
- scalability
- reliability
- security
- maintainability


Attendees
- Usability
- Simplicity
- Availability
- Accessibility


---



- You cannot be in all places at all times. Establish principles.
- Lol no one ever says "all the architects are sipping espresso and drawing on the walls"
- You cannot be involved with every decision.
- You do need to establish guide rails and north stars.
- Create an environment within which our projects can survive.


- How do you know if projects are following the principals we laid out?
	- Shortening the feedback loops.
	- Fitness functions!!
		- We're familiar with the second law of thermodynamics
		- The universe WANTS to be disordered.
		- Software is not immune to this..lol
	- You go thru all the work to make this work, but how do you maintain it?
	- You can't be there every minute.
	- Decisions we thought we got right the first time -- or, we wish we did.
	- We could change our assumptions...We could design architeture knowing things could be changed
		- BOOK: Building Evolutionary ...? Architecutre? oreiley book
	- Use toggles for releases.
	- Use hypothesis driven development
	- Test this stuff.
- Fitness functions: 
	  A to do list for developers from architects
			- Lightweight, low ceremony, governance
	- This will shorten the feedback loop.
	- Seemingly better than CAB meetings/approvals where pepople in the RACI chart don't reall yknow whats going on
- This comes from mutational computing.. it's about balancing tradeoffs to capture and preserve architectual success.
- Service Level Indicators. (This can be measurable, it must be useful)
	- BUT Just because you can measure it doesn't mean that it matters!
- Once you have metrics, you have goals *SLO - Service Level Objectives*
	- Not the same as SLA -- A = aggrement, which is a contract.
- Anyhow, back to Fitness Fucntions..
	- Are we closer to or further from goal? 
	- Can this test be automated? <-- ideal, put it in the pipeline if possible.
		- Every service call  must respond within 100ms
		- Cyclomatic complexity shall not exceed X
		- No cyclical depenancies
		- Directional depenancies
		- Consumer driven contracts
			- (Spring Cloud Contracts as an example)
		- Average & maximum response time
		- Scalabilty - average response times
		- Number of timeouts 
		- documentation exists
		- runbooks
		- on call list
		- Nearing the next price tier with cloud provider
			- You should have a price ceiling on things, lol
		- Alert when things go out of band
		- Chaos engineering is important!
		- What is the ceiling for this service (during testing && during regular hrs)
		- How many clicks should the user have for normal use actions
		- Heat maps during UAT (eyes or clicks)
- The beauty of low-fidelity prototypes (paper/pencil) is that people will give you feedback that they normally would not.  If it looks too close to real, people will just expect it to work a certain way & ship it right away... You can also give them a good idea for user's mental model too.
- 

https://www.thoughtworks.com/en-us/insights/articles/fitness-function-driven-development

- Get a good understanding of what is normal, a warning light, or shitstorm alert.
- 
Fitness functions help us know what is important to our architecute.  It also helps us come to compromises too.

- holistic vs atomic
- We can't test every possible combination.
- We need to be selective
- Triggered or continual
	- What is the frequency of testing.. happening all the time or just during code checkin
- Anything we base on a metric can be pass fail
- range of things that acceptable outcomes.
- Automated vs manual
	- Automated is good.. We cannot rely on the rubegolberg machines of the past
	- Ideally most of our fitness functions should be in our pipelines.
	- Existing projects may not be able to get to this.
	- Temporal fitness functions
		- A reminder that can be put into code
			- On march 1st, fail, and check versions
			- Break upon upgrade tests
	- Identify as many of these as early as possible.
		- Helps to prioritize features.
	- Thing will evolve, we will learn better ways to do things.
	- Classify fitness functions.
		- Key: Critical to decisions
		- Relevant: Considered but unlikely to influence the archicture
		- Not relevant: Will not impact our decisions
			- These short circuit discussions.
	- Keep fitness functions visible.
		- Put on a web page.
		- Review periodicaly
		- Check if new things to track
		- New way to measure//test for these things
		- Update annually at minimum


- Document your architecutral decisions!
	- It does not need to be complicated
	- ADR: Lightweight atchitecurtew decision records
		- title/ID (immutable)
		- sequential order. 3-ish digit number should be suficient
		- This can be helpful to eliminate tribal knowledge and establish context rapidly.
		- Status - proposed, accepted, deprecated, superceded
		- What is the problem - do not skimp on this! Give couple paragraphs or even pages!
		- Give assumptions and constraints
		- What are the options - 
		- list pros and cons
		- Which did you choose?
		- Explain why?
			- Also explain why not --- we eliminated this other reason because xyz.
		- Consequences of the decision (both positive and negative)
	- If you do not fill this out, someone else will come up with a story and it could be drama.. Show your work!
	- Also, you gain credibility if you go thru this process and 
	- This is also being done for people who are coming after you.
		- You will be the person who comes after you at some point. lol. You will always wonder "which idiot wrote this?!" but it dawns on you that YOU were that idiot
	- Consider a "time capsule" of what did you do and why. Even a screencast can be good.
	- Prevent monday morning quarterbacking for "Why did we do this?"  "We had a good reason, does anyone remember what that was?" "That's not what I would have done" <--- you will now have reasons if you fill out all of the above.
	- Store in version control! Old versions WILL stick around.  Make sure that things are documented and stored and updated
	- Periodic reviews (especially with teams that have new members) can bring valued info to the table
	- Do not put ADRs in Jira -- put this in version control.  But also don't overcomplicate it! Does not need to be it's own app... a bunch of files with a sequential order can be helpful for it.
- https://adr.github.io/
You can start getting better on Monday when you go back to work. You don't need to start with a new project.

Just because you didn't start with good decisions does not mean you need to give up on the project.
You could potentially do a retrospective ADR to pull out that info... You may miss some points, but it can help to bring someone up to speed. BUT you can use the fuller method with any new steps that you take in the process.



