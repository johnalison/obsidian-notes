# ACTION: [[DOE progress report 2024]]

|     | setup               |                     |
| --- | ------------------- | ------------------- |
| 9   | Vars                |                     |
|     | ~~Vars~~            | Module Summary      |
| 10  | ~~Module Summary~~  | DOE Progress report |
|     | ~~skims~~           | DOE Progress report |
| 11  | ~~Skims~~           | Chat AE             |
|     | Hoops               |                     |
| 12  | Hoops               |                     |
|     | Hoops               |                     |
| 1   | Hoops               |                     |
|     | DOE Progress Report |                     |
| 2   | Chat Sufie / Rachel |                     |
|     | Chat Sufie / Rachel |                     |
| 3   | skims               |                     |
|     | skims               |                     |
| 4   | skims               |                     |
|     | Party !!!           |                     |

**W:**
**DW:**
**OT:**
**ex** 

---
# The ONE thing: 
- [x] Vars
- [x] DOE Progress Report
- [ ] Skims

---
# To Do

- [x] [[DOE progress report 2024]]
- [x] VAR
- [x] [[Modules Summary December 2024]]
- [ ] Annual Reviews (Wes and Sindhu)
- [ ] Read [[Run2 X->HY->4b]]
- [ ] [[Run-3 4b skims]]
	- [x] Check for missing files
	- [ ] skim 4b ?
- [ ] New  synthetic data presentations
- [ ] Add CL studies to AN

---

# Log

Up at 6:50... some meds

Starting the fast ! 

Fast Day 1

# Did [[CAM Variance December 2024]]

# Sent [[Modules Summary December 2024]]

# Working [[DOE progress report 2024]]

Chat AE re:Gender pay gap
- https://fakenous.substack.com/p/the-gender-pay-gap-empirical-facts

# Hoops 
- Lots of great wins 5s probably 6 games

Helped Leonard print x-mass message
- Gave him a bottle of wine.
# Teaching in: 
- DH 1112 9-9:50 MWF
- SH 238 10-10:50 H


Aishik Ghosh visiting for a stats + data science job
- Feb 3-4, will extend stay for HEP talk 

Chat Sufie re:Crypto and new administration

Chat Rachel re:New grad curriculum

# [[Run-3 4b skims]]
- No missing files reported
- Checking event counts
	- eg: `python skimmer/metadata/check_event_counts.py -y skimmer/metadata/picoaod_datasets_data_2022_preEEB.yml`
	* All counts good! 
* Copied output yml files to ` metadata/archive/skims_Run3_2024_v3/`
- Merging `python metadata/merge_yaml_datasets.py -m metadata/datasets_HH4b_Run3.yml -o metadata/datasets_HH4b_Run3_merged_v3.yml -f metadata/archive/skims_Run3_2024_v3/picoaod_datasets_data_202*`
- Moved `datasets_HH4b_Run3_merged_v3.yml` to `datasets_HH4b_Run3.yml`
- Now to four-b skims...
- Command in `skimmer-fourTag-job.sh `
	- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b_fourTag.yml -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -d data -op skimmer/metadata/ -o picoaod_datasets_fourTag_data_Run3_v3.yml -m metadata/datasets_HH4b_Run3.yml --condor`
- submitted on **cmslpc330**
- now running on **cmslpc341**


Claimed: $2,836.83 from liberty mutual for tree damages

# CMU x-mas party! 

