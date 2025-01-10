
|     | setup                      |                         |
| --- | -------------------------- | ----------------------- |
| 9   | ~~Systems/Goals Review~~   | [[Run3 Synthetic Data]] |
|     | [[Run3 Synthetic Data]]    |                         |
| 10  | [[Run3 Synthetic Data]]    |                         |
|     | [[Run3 Synthetic Data]]    |                         |
| 11  | Add Run3 Synthetic data CI |                         |
|     | Add Run3 Synthetic data CI |                         |
| 12  | Faculty Meeting            | (Systems/Goals Review)  |
|     | Faculty Meeting            | (Systems/Goals Review)  |
| 1   | Faculty Meeting            | (Systems/Goals Review)  |
|     | Faculty Meeting            | (Systems/Goals Review)  |
| 2   | Chat AE                    |                         |
|     | [[Run2 HH4b AN]]           |                         |
| 3   | Chat Sophie                |                         |
|     | [[Modern Essentials]]      |                         |
| 4   | Debug truth v4j            |                         |
|     | Debug truth v4j            |                         |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] [[Run3 Synthetic Data]]

---
# To Do

- [ ] Modern Essentials: prep Lecture 1
- [ ] Systems/Goals Review
- [ ] Iterate on [[Run2 HH4b AN]]
- [ ] Add Run3 Synthetic data CI
- [ ] Wes's Thesis
- [ ] Debug truth v4j
- [ ] Call Liberty mutual re:tree down
- [ ] Read [[Evolution of Silicon Sensor Technology in Particle Physics]] !!!
- [ ] [[Run3 Synthetic Data]]
- [x] Josh applies to the LabTech III position
- [x] Ping re:Lab Coordinator opening

---

# Log

Up at 7 

M to school (T still home recovering)

Pinged Rachel re:Aishik Ghosh

#  [[Run3 Synthetic Data]]
- [x] Validate
- [x] Send to Marina
- Looks like previous analayze job ran out of memory...
- Rerunning  On **cmslpc330**... checking memory
	- `> source .ci-workflows/synthetic-dataset-analyze-all.sh`
- finished **44m8.523s**
- Plots look good.
- Making presentations
	- `python  jet_clustering/compare_datasets.py  hists/synthetic_data_Run3_v4_new_seedXXX.coffea   --out analysis/plots_synthetic_datasets_all_00-08-02-Run3_v4 -m plots/metadata/plotsSyntheticVsData2.yml`
	- `make jetclustering_slides_Run3_all TEXFILENAME=SyntheticDatasets-00-08-02_Run3_v4 NEW_DIR=analysis\\/plots_synthetic_datasets_all_00-08-02-Run3_v4`
- [ ] New splitting PDFs
- testing clustering job...OK
- Submitting on condor ...
	- `python runner.py -o datasets_Run3_v4.coffea -d data -p analysis/processors/processor_cluster_4b.py -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -op output/synthetic_dataset_cluster -m metadata/datasets_HH4b_Run3_fourTag_v3.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor`

# [[Run2 HH4b AN]]
- Docker throwing an error... wont restart ... maybe need a reboot ?
- starting on comments

[[Lab Techs Fall 2024]]


# Faculty Meeting 
- Jeff back, seems good
- 22 pass / 5 pass

# Systems/Goals [[Spring 2025]]
- [[Fall 2024]]
