
|     | setup                                |     |
| --- | ------------------------------------ | --- |
| 9   | to Campus                            |     |
|     | Wes                                  |     |
| 10  | [[Synthetic Data Closure]]           |     |
|     | [[Synthetic Data Closure]]           |     |
| 11  | [[Synthetic Data Closure]]           |     |
|     | MAC Meeting                          |     |
| 12  | MAC Meeting                          |     |
|     | Chats and [[Synthetic Data Closure]] |     |
| 1   | L2 Comments                          |     |
|     | L2 Comments                          |     |
| 2   | L2 Comments                          |     |
|     |                                      |     |
| 3   |                                      |     |
|     |                                      |     |
| 4   |                                      |     |
|     |                                      |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ]  L2 Comments

---
# To Do

- [ ]  Chat Mans re SOW
- [ ] Call Liberty mutual re:tree down
- [ ] [[Synthetic Data Closure]]
- [ ] Read for [[ARC TOP-24-006 3 top production]]
- [ ]  L2 Comments
- [ ] Sam Letter
- [ ] Think about ttbar mismodelling
- [ ] HGCAL workshop slides 
- [ ] Chat Jeff Ables re:CVs

---

# Log

Up at 7 ... meds

# [[Synthetic Data Closure]]
- testing v2 
- made hists 
	- `source  .ci-workflows/synthetic-dataset-analyze-all.sh `
- making plots
	- `python  jet_clustering/compare_datasets.py  output/synthetic_dataset_analyze_all/synthetic_data_RunII_seedXXX.coffea   --out analysis/plots_synthetic_datasets_all_00-09-00 -m plots/metadata/plotsSyntheticVsData2.yml
* making presentation
	* `make jetclustering_slides_RunII TEXFILENAME=SyntheticDatasets-00-09-09 NEW_DIR=analysis\\/plots_synthetic_datasets_all_00-09-00`
- New masses look much better ! ... Not much esle changed ?
- Remaking FvT inputs
	- `python runner.py -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_classifier_inputs.yml -d synthetic_data -y UL16_preVFP UL16_postVFP UL17 UL18 -op output/ -o classifier_synthetic_data_v2.coffea`
- Copy output to eos
	- `xrdcp python/output/classifier_synthetic_data_v2.json root://cmseos.fnal.gov//store/user/jda102/XX4b/2024_v2/`
	- `xrdcp python/output/classifier_synthetic_data_v2.coffea root://cmseos.fnal.gov//store/user/jda102/XX4b/2024_v2/'
- Fitting JCM
	- ` python analysis/make_weights.py -o testJCM_Coffea_SyntheticData_v2 -c passPreSel -r SB --combine_input_file -i output/histAll.coffea output/synthetic_dataset_analyze_all/synthetic_data_RunII_seedXXX.coffea --data4bName syn_v0 -m plots/metadata/plotsJCMSyntheticData.yml`
- Need to make synthetic data only
	- `time python runner.py -o synthetic_data_only_RunII_seedXXX.coffea -d synthetic_data  -p analysis/processors/processor_HH4b.py -y UL17 UL18 UL16_preVFP UL16_postVFP -op output/synthetic_dataset_analyze_all/ -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_fourTag.yml`
- Refit JCM... looks good
- pushing ... merge failed... will just use local branch on falcon
- Training:
	- `bash classifier/config/workflows/synthetic/run.sh jda102`

To Campus 

# Chat w/ [[Wesley Terrill]]
- Chat re:HGC at CMU
- Working on the HGC paper
- Ave had twins ! 
- Chatted to Cornell prof: 
- Chatted re:Muon fakes looks like a problem at low ΔR

More [[Synthetic Data Closure]]

To get the git hash
`git rev-parse --short HEAD` [>>]  [[git tricks]]


# [[CMU HGC MAC Meeting 18 February 2025]]

Chat Ornella and Josh re: cleaning shipping space

Chat Chris Berman

more [[Synthetic Data Closure]]


# Working L2 comments
- [ ] fig5 plots for the other signal samples.
	- Probably need a way of making 2-8 in new code
- [ ] fig 9 split by year



