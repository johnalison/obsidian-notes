
|     |           |     |
| --- | --------- | --- |
| 9   | setup     |     |
|     | Caht AE   |     |
| 10  |           |     |
|     |           |     |
| 11  |           |     |
|     |           |     |
| 12  | Hoops     |     |
|     | Hoops     |     |
| 1   | Hoops     |     |
|     | Hoops     |     |
| 2   | Pick up H |     |
|     | Pick up H |     |
| 3   | Drs Apt   |     |
|     | Drs Appt  |     |
| 4   |           |     |
|     |           |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] Cutflow Debugging

---
# To Do

- [x] Ping Jasques
- [ ] Reinbursement
- [ ] Iterate on HGC Slides  20th Final talks 27th. Review June 3-5
- [ ] Cutflow Marina
- [x]  Fill out form for Jeremey
- [ ] Staff award for Jessica ( MCS staff award nominations that are due April 30)
- [ ]  Make klX work interactively in iPlot
- [ ]  Use ~/.ssh/config to simplify remote access.
- [ ] Call Tax man
- [x] [[Message for Jonas]]
- [ ] emacs ORG mode?

---

# Log

Up at 7:30 

Driving the kids to school

setup

Chat AE: 
- [[Low Pt HH4b]]

# [[Run3 HH4b Cutflow Challenge]]
- I think the cutflow problem could be due to the four tag skimmer.
- merging: 
	- `python3 metadata/merge_yaml_datasets.py  -m metadata/datasets_HH4b_Run3.yml  -o metadata/datasets_HH4b_Run3_merged_debug.yml  -f skimmer/metadata/picoaod_datasets_data_2022_preEE*_debug.yml`
- Running with out 4b skim
	-  `python runner.py -o data_Run3_vDebug_new.coffea -d data -p analysis/processors/processor_HH4b.py -y 2022_preEE -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_merged_debug.yml --condor`
- taking too long.... Will do 4b skim
- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b_fourTag.yml -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -d data -op skimmer/metadata/ -o picoaod_datasets_fourTag_data_Run3_v3.yml -m metadata/datasets_HH4b_Run3.yml --condor`
- Merging
	- `python metadata/merge_yaml_datasets.py -m metadata/datasets_HH4b_Run3.yml -o metadata/datasets_HH4b_Run3_fourTag_vDebug.yml -f skimmer/metadata/picoaod_datasets_fourTag_data_Run3_vDebug.yml`
- Running
- `python runner.py -o data_Run3_vDebug_new.coffea -d data -p analysis/processors/processor_HH4b.py -y 2022_preEE -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_vDebug.yml `
- See way too few events in debug... needed to update the debug mask... Rerunning
- Agreement now
	- **Total number of extra events: 0 (0.0% of total events)**