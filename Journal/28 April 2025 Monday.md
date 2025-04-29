
|           |           |     |
| --------- | --------- | --- |
| 9         | setup     |     |
|           | Caht AE   |     |
| 10        | Cutflow   |     |
|           | Cutflow   |     |
| 11        | Cutflow   |     |
|           | Cutflow   |     |
| 12        | Hoops     |     |
|           | Hoops     |     |
| 1         | Hoops     |     |
|           | Hoops     |     |
| 2         | Pick up H |     |
|           | Pick up H |     |
| 3         | Drs Apt   |     |
|           | Drs Appt  |     |
| 4         | Cutflow   |     |
|           | Cutflow   |     |
| Latenight | Cutflow   |     |

**W:** 6 
**DW:** 3
**OT:** 3
**ex**

---
# The ONE thing: 
- [ ] Cutflow Debugging

---
# To Do

- [x] Ping Jasques
- [>>] Reinbursement
- [ ] Iterate on HGC Slides:  20th Final talks 27th. Review June 3-5
- [>>] Cutflow Marina
- [x]  Fill out form for Jeremey
- [>>] Staff award for Jessica ( MCS staff award nominations that are due April 30)
- [ ]  Make klX work interactively in iPlot
- [ ]  Use ~/.ssh/config to simplify remote access.
- [ ] Call Tax man
- [x] [[Message for Jonas]]
- [ ] emacs ORG mode? ROAM

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
- Running with out 4b skim on **cmslpc331**
	-  `python runner.py -o data_Run3_vDebug_new.coffea -d data -p analysis/processors/processor_HH4b.py -y 2022_preEE -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_merged_debug.yml --condor`
- taking too long.... Will do 4b skim
	-  `python runner.py  -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b_fourTag.yml -y 2022_preEE  -d data -op skimmer/metadata/ -o picoaod_datasets_fourTag_data_Run3_vDebug.yml -m metadata/datasets_HH4b_Run3_merged_debug.yml --condor`
- Merging
	- `python metadata/merge_yaml_datasets.py -m metadata/datasets_HH4b_Run3.yml -o metadata/datasets_HH4b_Run3_fourTag_vDebug.yml -f skimmer/metadata/picoaod_datasets_fourTag_data_Run3_vDebug.yml`
- Running
	- `python runner.py -o data_Run3_vDebug_new.coffea -d data -p analysis/processors/processor_HH4b.py -y 2022_preEE -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_vDebug.yml `
- See way too few events in debug... needed to update the debug mask... Rerunning
- Agreement now
	- `Total number of missing events: 1119 (4.58% of total events)`
	- `Total number of extra events: 5778 (19.84% of total events)`
- Most events dont make the skim...
- Reskimming  on (**cmslpc324**) with debug info for correct numbers:
	- `python runner.py  -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b_fourTag.yml -y 2022_preEE  -d data -op skimmer/metadata/ -o picoaod_datasets_fourTag_data_Run3_vDebug.yml -m metadata/datasets_HH4b_Run3_merged_debug.yml --condor`
- Jet eta cut is different!  2.4 (US) vs 2.5 (Marina)
- Reskimming with 2.5 cut
	- `Total number of missing events: 580 (2.37% of total events)`
- Added abs(delta_dhh)
- Remaking the skims with the new eta cut
	- Ran B, C and D
	- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b.yml -y 2022_preEE -d data -e B  -op skimmer/metadata/ -o picoaod_datasets_data_2022_preEE_debug.yml -m metadata/datasets_HH4b_Run3.yml --condor`
- Merged .. Remade 4b... (Not clear where the events are going...they appear as fourTag in the first skim)
- Hmmm back to 5% ... 

# Hoops 
- Good runs/good wins

Leave to get H... Picked up H ... To Hospital 

More Cutflow debugging see above

Move Office hours to Tuesday

# Home 

More cutflow see above

# Emacs GUI install
- brew uninstall emacs
- brew install --cask emacs

