
|     | setup                     |     |
| --- | ------------------------- | --- |
| 9   | Teaching                  |     |
|     | Teaching                  |     |
| 10  | Chance                    |     |
|     | setup                     |     |
| 11  | Got Exams / Chat AE       |     |
|     | Implement Run-3 Selection |     |
| 12  | Hoops                     |     |
|     | Hoops                     |     |
| 1   | Hoops                     |     |
|     | Hoops                     |     |
| 2   | outreach                  |     |
|     | Sindhu                    |     |
| 3   |                           |     |
|     |                           |     |
| 4   | bbWW                      |     |
|     | make up exam              |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] Cutflow for Marina 

---
# To Do

- [ ] Review Wes' slides
- [x] Reinbursemet for [[Ann Arbor Trip 2025]]
- [ ] L2 Comments
- [x] Ping Diane for Photoelectric effect demo
- [x] Get exams
- [ ] Follow up sindhu re:Dylan 
- [ ] Skim data for boosted events (no trigger)
- [ ] CutFlow for Marina Make Run3 CR cut and make a print of event/run numbers
- [ ]  Do  [[DOE Review Li Zepeng]] (**Due Date:** 03/19/2025)
- [ ] Grade Exams
- [ ] Grad Student visit
---

# Log


Up at 7 

M & T To school

Bought fancy erasers 

# Taught 
- Radioactivity 

# Chat [[Chance Lavoie]]
- Might work with Lauren Tompkins over the summer


Reciepts for [[Ann Arbor Trip 2025]]

Chat Able's  re:Ad and CVs from Allison Turner

Looks like the [[Boosted Synthetic Data]] is actually going to be harder than I thought
- Need to reclacluate m_regressed mass
- Need to recalculate PNet scores
- First try it with m-soft drop... Let Chance do it.

# Implementing Run3 selection
- From Marina: 
	- Code: https://gitlab.cern.ch/mkolosov/hh4b_run3/-/blob/run2/python/producers/hh4bTreeProducer.py?ref_type=heads
	- Config: https://gitlab.cern.ch/mkolosov/hh4b_run3/-/blob/run2/run/configs/2021/main/run3_2021_0L_PNet_MinDiag_Jets_4j35_2bj30_dHHjw30.yaml?ref_type=heads
- [ ] Synch Lepton Definition
- [ ] Synch Higgs Candidate Selection


- Loose electrons are defined as:
	- pT > 15 GeV, |eta|<=2.5, el.pfRelIso03_all < 0.15, satisfying el.mvaIso_WP90 and
	- if abs(el.eta) < 1.479:
	- abs(dz) <= 0.1
	- abs(dxy) <= 0.05
- else:

- abs(dz) <= 0.2
- abs(dxy) <= 0.1

Loose muons are defined as:

- pT > 10 GeV, |eta| <= 2.4,  mu.pfRelIso04_all < 0.15, satisfying the mu.looseId and
- if abs(el.eta) < 1.479:

- abs(dz) <= 0.1
- abs(dxy) <= 0.05

- else:

- abs(dz) <= 0.2
- abs(dxy) <= 0.1