
|     |                            |     |
| --- | -------------------------- | --- |
| 9   | Teaching                   |     |
|     | Teaching                   |     |
| 10  | Chat Chance                |     |
|     | [[Synthetic Data Closure]] |     |
| 11  | [[Synthetic Data Closure]] |     |
|     | [[Synthetic Data Closure]] |     |
| 12  | Hoops                      |     |
|     | Hoops                      |     |
| 1   | Hoops                      |     |
|     | Quarterly Systems          |     |
| 2   | 4b Chat                    |     |
|     | [[Run2 HH4b AN]]           |     |
| 3   | CMU CMS                    |     |
|     | [[Synthetic Data Closure]] |     |
| 4   | Chat AE                    |     |
|     | Teddy Birthday Celebration |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] [[Synthetic Data Closure]]

---
# To Do

- [ ]  HGCAL workshop slides 
- [ ] Read for [[ARC TOP-24-006 3 top production]]
- [x] Bitch re:falcon
- [ ] Update [[Run3 Synthetic Data]], merge 
	- [ ]  Make PDFs for Run3 
- [ ] Do  [[DOE Review Li Zepeng]]
- [x] Setup [[CMU 4b Chats]]
- [ ] Do  [[Synthetic Data Closure]]
- [ ] Sam Letter
- [ ] L2 Comments
- [ ] Setup [[Stats Chat Data-Driven SR]]
- [ ] Letter for Byron
- [ ] Setup for Chance
- [x] Modules Summary for Harry 

---

# Log

Up at 7

M & T to school 


# Taught
- Homework problems

# Chat Chance
- [ ] Get him set up with Boosted synthetic data

# [[Synthetic Data Closure]]
- Falcon back... AE killed it before
- Running fitting with v4 ... explicitly remove threeTag events from the synthetic dataset
- Fit... running the data .. on condor
	- `python runner.py -o synthetic_data_closure_Run2_seed0_data_v4.coffea -d data -p analysis/processors/processor_HH4b.py -y UL17 UL18 UL16_preVFP UL16_postVFP -op output/synthetic_dataset_closure -c analysis/metadata/HH4b_synthetic_closure.yml -m metadata/datasets_HH4b.yml --condor`


# [[Jet DeClustering]]
- [ ] Run3 pdfs with rho corrections
- [ ] Correct for pt dependence (through rho) when making the initial pdfs
- Running on **cmslpc347**
- Making Run3 pdfs... finished in 11068.29407286644s = 3hours
	- `python runner.py -o synthetic_datasets_Run3.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix  -op output/synthetic_dataset_cluster  -m metadata/datasets_HH4b_Run3_fourTag_v3.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor`

# Hoops
- 5s 2 games... tough losses 

# Reviewed [[Spring 2025]]

Waiting for condor jobs to finish...

# Some [[Run2 HH4b AN]]
- Make comparison of 1d projections of masses, added to Twiki
- [x] Need to update **makePlotsMixedVsDataVs3b.py** 
- Updated figures 69 and 70 with region names.

# [[CMU 4b Chats]]
- JA: working synthetic data and L2 plots
- AE: rebinning to get the signal flat / will look into redoing 2D plots
- CL: making plots from classifier friend trees


More [[Run2 HH4b AN]]

# CMU CMS
- New cmu/cms webpage: https://cms-cmu.docs.cern.ch/

[[Modules Summary February 2025]]


Chat AE re:Milei 

Home 

More [[Run2 HH4b AN]]

