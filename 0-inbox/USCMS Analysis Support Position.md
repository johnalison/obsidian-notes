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

- docuumentation/ user support
- grow 
- social model 
- develop culture around thi

# Draft

I am writing to recommend Alejandro Espinosa for the USCMS Analysis Support position.  Alejandro is a postdoc in my group focusing on search for HH->4b and calibrating low pT (down to ~8 GeV) jets and is excited about this opportunity. 

We have a fairly large CMS group at CMU, we have four active faculty members supervising over a dozen students perusing wide range of analyses. We have made a concerted effort to coordinate all analyses the around coffea.  Alejandro is the point person in our group to onboard students and new postdocs to use coffea at CMU.  He has been integral in shaping the big picture software layout and is our boots on the ground in supporting students using the code base. 

Alejandro is active on the coffea, CAT and Reana mattermost channels (user name: algomez) and has developed a number of tutorials that rely on coffea. He recently lead the  CMSDAS/HAT jet tutorials: [https://cms-jet.github.io/JMEDAS]  where he migrated an older c++/python-based tutorial to use coffea. He is currently preparing for CAT about Snakemake/REANA: [https://alefisico.github.io/reana-tutorial/Snakemake.html](https://alefisico.github.io/reana-tutorial/Snakemake.html) to be given in XXXX

Alejandro has migrated and existing c++-based framework (https://github.com/patrickbryant/ZZ4b) (used in HIG-22-011) to a coffea/python - based frame work  https://gitlab.cern.ch/cms-cmu/coffea4bees we are using in the HH->4b analysis.  Veryified reproducibility and significantly improved preformace what used to take an hour (with ~200 condor jobs in c++) now runs locally on a sinlge LPC node in 15min.  He has pushed to Adapted modern programing development practices in the coffeaforbs code CIs / unittests reAna. 
I was recluctant at first, but now cannot image running a combined project anyother way. 
Over 30 checks from unit tests of the baseclass to test of the combined skiming->processing->histogram->cutflow workflow. 

In addition Alejandro is currently serving as the convener (L3) of the Workflow Orchestration and Analysis Preservation group within CAT. This subgroup has the responsibility for the support, management, and development of tools for the orchestration of physics analysis workflows, promoting tools that ease the long-term reproducibility of analyses.


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


## Future:
develop prototype workflow
- "simple" mainly datadriven 
- "complex" MC heavy
- POG calibration work with start JET/MET, profile btag and expand to other groups
- push CI: Snakemake


Understand and standardize practices

Build a community of problem solving: documentaiton via working workflow and user support 

# Notes
 Currently have ten students all preforming separate thesis topics using coffea.    (students: Park / Durgut/ Roberts / Aniket / CL / Erdem / Murthy / Daniel/ Joy /  )

# References 
[1] Tutorials

# Follow-ups


# Links: 



202411071118
