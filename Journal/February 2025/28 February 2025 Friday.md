
|     | setup                               |     |
| --- | ----------------------------------- | --- |
| 9   | Teach                               |     |
|     | Teach                               |     |
| 10  | Events for Marina                   |     |
|     | Events for Marina                   |     |
| 11  | Chat Aiken                          |     |
|     | Close on AccXEff plots              |     |
| 12  | Close on AccXEff plots              |     |
|     | Close on AccXEff plots              |     |
| 1   | Go Home                             |     |
|     | Go To ECS                           |     |
| 2   | Career Day                          |     |
|     | Career Day                          |     |
| 3   | Back to campus                      |     |
|     | Close on AccXEff plots              |     |
| 4   | [[ProgressReport 28 February 2025]] |     |
|     | Social                              |     |

**W:** 6 
**DW:** 4
**OT:** 3
 **No ex**

---
# The ONE thing: 
- [x] Example Events for Marina
- [ ] Close on AccXEff plots 

---
# To Do

- [x] 4b virtual updates
- [x] Pay steph
- [x] Dylan Email
	- [x] Dylan work with Sindhu ?
- [x] Example Events for Marina
- [x] Do [[ProgressReport 28 February 2025]]
- [>>]  Understand event selection in FvT Training
- [>>]  Read for [[ARC TOP-24-006 3 top production]]
- [>>] Do  [[DOE Review Li Zepeng]]
- [>>] Close on AccXEff plots with [[Add Cutflow Histograms]]
- [>>] Review Feb
- [x] Setup March
- [>>] Do [[Institutional Review HL-LHC Projections HIG-25-002]]
- [x] Buy Pool pass
- [>>]  Fill [[CAM Turnaround Report]] by March 6th
- [x] Write up 4b chats
---

# Log

Up at 7 

M & T to school 

# Teaching
- Exam 2 
- 13 students

# [[ProgressReport 28 February 2025]]


# [[Run3 Synthetic Data]]
- See Daily's

# [[Run2 HH4b AN]]
- [ ] truth HH plots before and after genWeight cleaning
- Now have 2018 AccXEff plot looking good!
- [x] Run nano on other  years
	- `python runner.py   -o signal_HH4b_nano.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_HH4b.py -y UL18 UL17 UL16_preVFP UL16_postVFP   -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- UL17 crashes.. fix for puID large eta jets... now runs
- running on all HH picos (to get trig weights)
	- `python runner.py -o hist_HH.coffea -d GluGluToHHTo4B_cHHH1 -p analysis/processors/processor_HH4b.py -y UL18 UL17 UL16_preVFP UL16_postVFP  -op output/analysis_testAll_job -m metadata/datasets_HH4b_v1p1.yml -c analysis/metadata/HH4b_noFvT.yml
- Adding all years, plot labels and legends.

# Chat Aiken 
 - Gave tour... Will get back to me


Home ... To ECS

# ECS Career Day
- Went well

# [[CMU 4b Chats]] 
- Virtual
- JA: working on the closure test with the Run2 synthetic dataset, making the Run 3 synthetic dataset, and answering the L2 comments.
	 - The Run2 synthetic closure looks pretty good now, Im still seeing some large FvT weights. Not clear where they are coming from. Chuyan, can you point to me where the event selection is done for the FvT training code ?
	 - The Run3 synthetic data looks good on our side, but Marina still sees big data vs syn-data differences. Im going to debug this with her.
	 - The L2 comments are mostly done. We still need the 2D plots (ΔR vs mass / and nViews vs Mass) -- which I think AE is working on -- and the Acc X Eff pltos which I am working on. Seems like the trigger weights are not being applied in the cut flow currently, 
- AE: Finally, fixed the binning on SvB., I now have to rerun everything (including the boosted combination), but the CERN REANA cluster has been very busy lately. I am figuring it out where to run the jobs and once they are done I need to update all the plots in the AN.
	- I need to do a new processor for the 2D plots, and the validation plots with the dileptonic ttbar selection. I am currently working on it.  
	- On the CMU REANA side, I deployed REANA in our rogue02 and I have been testing it with the test workflows. Everything seems in place, but now I have to figure it out how to include CVFMS, users, accounts, storage area for processing jobs, etc. If I figure it out on time, I might try to run our analysis workflow there. Fingers crossed.
- CL:  I am mainly improving the friend tree code to make it easier to use with new coffea and adding a dask-style configuration for the new processor and base classes.
- SM:  reran the analysis with different jet pairings to see if it has an effect on the double peak. I'm rerunning that with just the hh region and its complement in the passDijetMass space. Also ran it with m4j cuts. Apart from that, I've been polishing up some of my slides and creating a writeup in prep for B2G.


Home .. Back to campus

Got draft of [[ProgressReport 28 February 2025]]

Pinged Ables re:Ad

Sent [[Ad for Lab tech]] to MPL profs

# Grad Social
- Brought M & T

Home

Setup March

Some [[Fly By Night Physics]]
Some [[For a new Liberty]]

Pick up H from Owens

Late night Close on AccXEff plots with [[Add Cutflow Histograms]]
- See above