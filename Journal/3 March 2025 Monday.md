
|     |                                                        |     |
| --- | ------------------------------------------------------ | --- |
| 9   | setup                                                  |     |
|     | [[Run2 HH4b AN]]                                       |     |
| 10  | [[Run2 HH4b AN]]                                       |     |
|     | [[Institutional Review HL-LHC Projections HIG-25-002]] |     |
| 11  | [[Institutional Review HL-LHC Projections HIG-25-002]] |     |
|     | [[Institutional Review HL-LHC Projections HIG-25-002]] |     |
| 12  | Hoops                                                  |     |
|     | Hoops                                                  |     |
| 1   | Hoops                                                  |     |
|     | Hoops                                                  |     |
| 2   | [[Run3 Synthetic Data]]                                |     |
|     | [[Run3 Synthetic Data]]                                |     |
| 3   | [[Run3 Synthetic Data]]                                |     |
|     | [[ARC TOP-24-006 3 top production]]                    |     |
| 4   |                                                        |     |
|     |                                                        |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] [[Run2 HH4b AN]]

---
# To Do

- [ ] Setup for Chance
	- [ ] Get him set up with [[Boosted Synthetic Data]]
- [ ] Give make up lecture
- [x] Work L2 Comments
- [x] Do [[Institutional Review HL-LHC Projections HIG-25-002]]
- [ ]  Read for [[ARC TOP-24-006 3 top production]]
- [ ] Do  [[DOE Review Li Zepeng]]
- [ ] Fill [[CAM Turnaround Report]] by March 6th
- [x] FNAL training
---

# Log

Up at 7 ... slow morning

M & T to school 

Work by 9


# [[Run2 HH4b AN]]
- [x] Check with AE re:template uncertainties 
- AE sees limits get worse with flat binning.... debugging
- Just hemisphere plots lefts to do

Look over black body radiation. 

Read [[Institutional Review HL-LHC Projections HIG-25-002]]
- [ ] Write up comments

# Hoops / Steamroom
- 3s and 4s 
- 10' in Tmax = 120

# [[Run3 Synthetic Data]]
- Marina points out that we are applying the b-regression twice....
- [x] Fix code
- [x] Verify pts in event Marina sent
- [x] Remake PDFs
- Remake mixed cccccbctiudrnvkjrldfclhvrlnghhvrvdtftbhrfncd
- data
- Testing
	- `time python runner.py -t -o synthetic_data_Run3_v6_debug_seedXXX.coffea -d synthetic_data data -p analysis/processors/processor_HH4b.py -y 2022_preEE   -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v6.yml `
 - Fix looks good
 - make v7 synthetic datasets on **cmslpc321**.. done
 - Running on v7 to make plots
 - Looks OK ... not super great
 - Making new pdfs
	 - ` python runner.py -o synthetic_datasets_Run3_fixCalib.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix  -op output/synthetic_dataset_cluster  -m metadata/datasets_HH4b_Run3_fourTag_v3.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor`
 - Making 00-09-01 [>>]  [[Splitting PDF Archive]]
	 - `python  jet_clustering/make_jet_splitting_PDFs.py output/synthetic_dataset_cluster/synthetic_datasets_Run3_fixCalib.coffea  --years Run3   --out jet_clustering/jet-splitting-PDFs-00-09-01`
 - Making Run3 v8 synthetic data using 00-09-01


Did FNAL training

Reviewing: [[ARC TOP-24-006 3 top production]]
- Started paper draft v0... clearly not ready
- Looking at AN v5

Pick up M & T.

# Noodle Head

More [[Run3 Synthetic Data]]

Some [[For a new Liberty]]