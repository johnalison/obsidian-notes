
|     | setup                      |     |
| --- | -------------------------- | --- |
| 9   | Teaching                   |     |
|     | Teaching                   |     |
| 10  | [[Synthetic Data Closure]] |     |
|     | [[Synthetic Data Closure]] |     |
| 11  | [[Synthetic Data Closure]] |     |
|     | Get exams                  |     |
| 12  | Hoops                      |     |
|     | Hoops                      |     |
| 1   | Hoops                      |     |
|     | Hoops                      |     |
| 2   | Home                       |     |
|     |                            |     |
| 3   |                            |     |
|     |                            |     |
| 4   |                            |     |
|     |                            |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ]  [[Synthetic Data Closure]]

---
# To Do

- [ ] Pick up exams
- [ ] Grade exams
- [ ] FBI Followup
- [ ] L2 Comments 
- [ ]  Do  [[Synthetic Data Closure]]
- [ ] Call eye doctor re: $500.

---

# Log


Up at 6:50... T will stay home

M to school


# [[Synthetic Data Closure]]
- [ ] Fit JCM to synthetic data
- Making synthetic data histograms:
- `time python runner.py -o synthetic_data_RunII_seedXXX.coffea -d synthetic_data  -p analysis/processors/processor_HH4b.py -y UL17 UL18 UL16_preVFP UL16_postVFP -op ${OUTPUT_DIR} -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_fourTag.yml`
- Fitting JCM
- `python analysis/make_weights.py -o testJCM_Coffea_SyntheticData -c passPreSel -r SB --combine_input_file -i output/histAll.coffea output/synthetic_dataset_analyze_all/synthetic_data_RunII_seedXXX.coffea --data4bName syn_v0 -m plots/metadata/plotsJCMSyntheticData.yml`

# Taught 
- Relativistic Momentum 


Working [[Synthetic Data Closure]]