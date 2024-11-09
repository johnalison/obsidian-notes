Requirements: 

We encourage U.S. CMS PIs who have suitable candidates in their group to please submit a letter of interest (2 pages maximum) with a description of qualifications of the candidate and an outline of a plan that addresses the task requirements.



Plan: 
- data driven analyis (hh4b) complex MC (bbWW)
- work with JET MET.. then other object groups to profiles code 
- push CI: Snakemake

Analysis Support:

The U.S. CMS strategy for end-user analysis in the HL-LHC era depends heavily on new processing tools like RDataFrame and Coffea. These tools achieve processing rates that make it clear we can achieve near-interactive turn around for end-user analysis in the HL-LHC era, and so are critical to the success of the CMS experiment for the next decade. These tools bring with them a significant increase in user interface complexity, especially with respect to achieving best-possible performance, and often the patterns for doing so are not yet known in general. 

The task for this support role is to document and aid in developing effective analysis patterns, as well as to disseminate this information to the user bases of these tools. This should be done in close collaboration with the communities using these tools, to collect usage data and find patterns to synthesize, as well as the developer communities to understand long-term goals, design, and to match that with user needs. 

Emphasis should be placed upon developing effective design patterns and usage strategies but also identify areas of improvement for the tools, and not to only determine “workarounds” that solve immediate problems without considering long term plans and needs.



**Requirements:**  
  

- Understanding of the physics analysis development process in modern particle physics experiment
- Competency in the scientific python or RDataFrame analysis software stacks, and a willingness to learn both to in order to support users and find patterns
- Ability to develop tools that aid users will simultaneously considering long term support requirements
- Willingness to learn regression testing practices and to help maintain stably performing software releases
- Desirable but not required: basic knowledge of the computing trends and facilities roadmaps, to understand what analysis strategies will be supportable over many years

**Expected time on task:** 0.5 FTE total for one year, renewable


Address how and to fullfill the requirements
hightlihgt helping people in the group adpoted by umber of people
L3 / 

- documentation/ user support
- grow 
- social model 
- develop culture around thi

# Final Draft:
https://docs.google.com/document/d/1cVXUWrh8gHO5zrLXeNNF0yi7A_qM8VJ8_HrtaYYvRaA/edit?tab=t.0

Dear Colleagues, 


I am writing to recommend Alejandro Espinosa for the USCMS Analysis Support position. Alejandro is a postdoc in my group, focusing on HH→4b and on extending the jet calibration to low pT (8 GeV). He has been an invaluable asset in our group and is excited about this opportunity. Alejandro is well qualified for this role: he has experience migrating pipelines to coffea, holds a leadership position in a closely-related CMS Common Analysis Tools (CAT) subgroup, and has substantial experience growing and supporting a group of coffea users.

  

At CMU, we have a large CMS group with four active faculty members supervising over a dozen students engaged in a wide range of analyses. Our group has made a concerted effort to coordinate all analyses around the use of coffea. Alejandro serves our point person for onboarding students and new postdocs. He has been integral in both shaping the overall software structure and providing ongoing support to our code base’s users.

  

Alejandro is active on the coffea, CAT, and reAna Mattermost channels (username: algomez) and has developed several tutorials centered on coffea. Recently, he led the CMSDAS/HATS jet tutorials [1] where he migrated an older C++/python-based tutorial to use coffea. He is currently developing a Snakemake/REANA tutorial [2] for an upcoming CAT hackathon.

  

In the HH→4b analysis, Alejandro migrated an existing C++-based framework [3]—used in HIG-22-011—to a coffea/python-based framework [4], now our standard for this analysis. This migration required the development of reproducibility tools and led to significant performance gains; what used to take an hour with ~200 Condor jobs in c++ now runs locally on a single LPC node in just 15 minutes. Alejandro has also driven the adoption of modern programming practices, including continuous integration (CI), extensive use of unit tests, and regular result replication with reAna. Initially, I was reluctant to invest in this infrastructure, but now I can't imagine running a collaborative software project any other way; our code now runs over 30 CI checks for each merge request, covering everything from unit tests of base class functions to end-to-end tests of the skimming→processing→histogram→cutflow pipeline. Alejandro's efforts have made the codebase more robust, the entire team more productive, and has given students valuable experience transferable beyond HEP.

  

Alejandro currently serves as the convener (L3) of the Workflow Orchestration and Analysis Preservation group within CAT, a subgroup focused on orchestrating analysis workflows and promoting long-term reproducibility of analyses. This role aligns well with Analysis Support responsibilities, particularly in maintaining performance stability as software evolves.


Plan for Analysis Support Role

In the Analysis Support role, Alejandro's primary goal would be to grow the coffea user base and support community across USCMS. Building on his experience with CMU’s group, he would survey existing options, evaluate performance, and document best practices for coffea adoption, creating a foundation to engage a wider community.

Alejandro’s initial focus would be to prototype three types of workflows: (1) a POG calibration pipeline, (2) a “simple” mostly data-driven analysis, and (3) a “complex” MC-heavy analysis involving a combined fit to multiple control regions. His jet calibration and HH→4b code bases will serve as starting points for the first two prototypes. The third will be based on the HH→bbWW analysis with support from one of my PhD students who is performing this analysis for his thesis.

Building community “from the POG up”: After establishing these prototypes, Alejandro would focus on integrating best practices within CMS POGs, starting with JetMET, where he has relevant experience. With the L2 JetMET convener (Cremonesi) at CMU, we anticipate strong support at the iCMS level. The next steps would involve Flavour Tagging (already a partial coffea user) and would continue to the object POGs. Building up from the POG level will enable him to create a foundation of students proficient in these tools, developing a community of users and experts who would then go on to re-use the infrastructure for their thesis work. This strategy will also naturally develop POG-supported tools to serve as further examples. 

  

One potential gap is that Alejandro (and my group) has limited experience with RDataFrame. To address this, he would leverage connections within CAT to gain the necessary expertise.

  

In summary, I believe Alejadro would be an excellent fit for this position. He brings the required experience and enthusiasm, and his current work aligns well with the position’s goals. As PI, I would fully support Alejandro in this role with my group's resources and graduate students. This opportunity aligns well with my group’s priorities, and I am confident that Alejandro’s contributions will make a substantial impact.

  

Sincerely, 

  
  
  

John Alison

Associate Professor 

  

References

[1] [https://cms-jet.github.io/JMEDAS](https://cms-jet.github.io/JMEDAS)

[2] [https://alefisico.github.io/reana-tutorial/Snakemake.html](https://alefisico.github.io/reana-tutorial/Snakemake.html)]

[3] [https://github.com/patrickbryant/ZZ4b](https://github.com/patrickbryant/ZZ4b)

[4] [https://gitlab.cern.ch/cms-cmu/coffea4bees](https://gitlab.cern.ch/cms-cmu/coffea4bees)

**


# Notes

Currently 
- c++ -> coffea framework https://gitlab.cern.ch/cms-cmu/coffea4bees
	- CIs 
	- reAna

- L3 CAT position: - Workflow Orchestration and Analysis Preservation ([WFLOWS](https://cms-analysis.docs.cern.ch/wflows/))
	https://cms-analysis.docs.cern.ch/wflows/
	This subgroup has the responsibility for the support, management, and development of tools for the orchestration of physics analysis workflows, promoting tools that ease the long-term reproducibility of analyses.

- history of JET MET work L3 developed code (in coffea) to compute JEC corrections 

- hightlihgt helping people in the group adpoted by umber of people
	- Active in the mattermost
	- Tutorial 

ZZ4b c++ -> coffeaa
helped many peolp in the group adopt coffea
Postdoc at CMU 

 Currently have ten students all preforming separate thesis topics using coffea.    (students: Park / Durgut/ Roberts / Aniket / CL / Erdem / Murthy / Daniel/ Joy /  )

## Future:
develop prototype workflow
- "simple" mainly datadriven 
- "complex" MC heavy
- POG calibration work with start JET/MET, profile btag and expand to other groups
- push CI: Snakemake

# References 
[1] Tutorials

# Follow-ups


# Links: 
[[CMS]]



202411071118
