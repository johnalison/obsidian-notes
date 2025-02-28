
|     | setup             |     |
| --- | ----------------- | --- |
| 9   | Teach             |     |
|     | Teach             |     |
| 10  | Events for Marina |     |
|     | Events for Marina |     |
| 11  | Chat Aiken        |     |
|     |                   |     |
| 12  |                   |     |
|     |                   |     |
| 1   | Go Home           |     |
|     | Go To ECS         |     |
| 2   | Career Day        |     |
|     | Career Day        |     |
| 3   | Back to campus    |     |
|     |                   |     |
| 4   |                   |     |
|     | Social            |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] Example Events for Marina

---
# To Do

- [x] 4b virtual updates
- [x] Pay steph
- [x] Dylan Email
	- [x] Dylan work with Sindhu ?
- [x] Example Events for Marina
- [x] Do [[ProgressReport 28 February 2025]]
- [ ]  Understand event selection in FvT Training
- [ ]  Read for [[ARC TOP-24-006 3 top production]]
- [ ] Do  [[DOE Review Li Zepeng]]
- [ ] Close on AccXEff plots with [[Add Cutflow Histograms]]
- [ ] Review Feb
- [ ] Setup March
- [ ] Do [[Institutional Review HL-LHC Projections HIG-25-002]]
- [ ] Buy Pool pass
- [ ]  Fill [[CAM Turnaround Report]] by March 6th
---

# Log

Up at 7 

M & T to school 

# Teaching
- Exam 2 
- 13 students

# [[ProgressReport 28 February 2025]]


# [[Run3 Synthetic Data]]
- making output files for Marina
- [x]  Print out first 100 events in 2022_preEE Data and Synthetic data
- `python analysis/debugRun3SyntheticData.py output/synthetic_dataset_analyze_all/synthetic_data_Run3_v6_debug_seedXXX.coffea`

# [[Run2 HH4b AN]]
- [ ] truth HH plots before and after genWeight cleaning
- Now have 2018 AccXEff plot looking good!
- [x] Run nano on other  years
	- `python runner.py   -o signal_HH4b_nano.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_HH4b.py -y UL18 UL17 UL16_preVFP UL16_postVFP   -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- UL17 crashes.. fix for puID large eta jets... now runs
- running on all HH picos (to get trig weights)
	- `python runner.py -o hist_HH.coffea -d GluGluToHHTo4B_cHHH1 -p analysis/processors/processor_HH4b.py -y UL18 UL17 UL16_preVFP UL16_postVFP  -op output/analysis_testAll_job -m metadata/datasets_HH4b_v1p1.yml -c analysis/metadata/HH4b_noFvT.yml
`

# Chat Aiken 
 - Gave tour... Will get back to me


Home ... To ECS

# ECS Career Day
- Went well

Home .. Back to campus

Got draft of [[ProgressReport 28 February 2025]]
