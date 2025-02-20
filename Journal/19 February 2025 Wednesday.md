
|     | setup                      |     |
| --- | -------------------------- | --- |
| 9   | teaching                   |     |
|     | teaching                   |     |
| 10  | [[Synthetic Data Closure]] |     |
|     | [[Synthetic Data Closure]] |     |
| 11  | [[Synthetic Data Closure]] |     |
|     | [[Synthetic Data Closure]] |     |
| 12  | Hoops                      |     |
|     | Hoops                      |     |
| 1   | Hoops                      |     |
|     | Hoops                      |     |
| 2   | [[Synthetic Data Closure]] |     |
|     | Sindhu                     |     |
| 3   | [[Run2 HH4b AN]]           |     |
|     | [[Run2 HH4b AN]]           |     |
| 4   | bbWW                       |     |
|     |                            |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [x] [[Synthetic Data Closure]]
- [ ] L2 Comments

---
# To Do

- [ ]  Valentina / Matteo Round table
- [ ] [[Synthetic Data Closure]]
- [ ] L2 Comments
- [x]  Cornell Letter for Wes

---

# Log

Up at 7

# [[Synthetic Data Closure]]
- Rerunning On **cmslpc338**
- FvT much better! Looking at lots of plots...
- Still have anomalously  high values, think they are coming from synthetic data out of acceptance
- [x] Remove synthetic data overrides
- Remake friend trees
	- `python runner.py -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_classifier_inputs.yml -d synthetic_data -y UL16_preVFP UL16_postVFP UL17 UL18 -op output/ -o classifier_synthetic_data_v3.coffea`
- Copy output to eos **classifier_synthetic_data_v3**
- Training on rogue01...Done
- Making data hists ... on condor... running blind
	- `python runner.py -o synthetic_data_closure_Run2_seed0_data_v2.coffea -d data -p analysis/processors/processor_HH4b.py -y UL17 UL18 UL16_preVFP UL16_postVFP -op output/synthetic_dataset_closure -c analysis/metadata/HH4b_synthetic_closure.yml -m metadata/datasets_HH4b.yml --condor`
- Ran with the wrong version of the friend tree!
- Rerunning now on condor**cmslpc307**
- Why are there 3b events with pt < 30 ? 
- Rerunning on **cmslpc323** with FvT regions


T to school,  M going to sick hours... 

# Wes got invitation to FNAL Lederman fellow !!!


# Taught
- Applications 


More [[Synthetic Data Closure]]

Submitted Wes' letter

# Hoops 
- 5s: Undefeated: me / chris / mike / alvin / ?? / DJ

Some [[Synthetic Data Closure]]

Chat [[Sindhu Murthy]]
- Lots of DB work
- Will look into m4j structure

Chat Dylan
- Interested in kubernettes project
- Will get back to me re:credit or pay

# Some [[Run2 HH4b AN]] 
- L2 questions

Home


More [[Synthetic Data Closure]]

Why is 3b 