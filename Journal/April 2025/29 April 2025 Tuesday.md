
|     | to campus             |     |
| --- | --------------------- | --- |
| 9   | Cutflow               |     |
|     | Cutflow               |     |
| 10  | Cutflow               |     |
|     | Cutflow               |     |
| 11  | Cutflow               |     |
|     | MAC Meeting           |     |
| 12  | MAC Meeting           |     |
|     | Ornella / seth        |     |
| 1   | cutflow               |     |
|     | Cutflow / Turn around |     |
| 2   | Office Hours          |     |
|     | Office Hours          |     |
| 3   | Mans                  |     |
|     | Mans                  |     |
| 4   | Org mode              |     |
|     | org-roam              |     |

**W:** 8 
**DW:** 6
**OT:** 3
**No ex**

---
# The ONE thing: 
- [ ] CutFlow

---
# To Do

- [x] Fill turn around report
- [x] Rienbursements 
- [x] Cutflow Marina
- [XX] ~~Staff award for Jessica ( MCS staff award nominations that are due April 30)~~
- [x] emacs ORG mode? ROAM


---

# Log

Up at 8 

setup. 

To campus


# [[Run3 HH4b Cutflow Challenge]]
- on **cmslpc335**
- Remaking B from nano
	- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b.yml -y 2022_preEE -d data -e B  -op skimmer/metadata/ -o picoaod_datasets_data_2022_preEEB_debug_v2.yml -m metadata/datasets_HH4b_Run3.yml --condor
	- `python3 metadata/merge_yaml_datasets.py  -m metadata/datasets_HH4b_Run3.yml  -o metadata/datasets_HH4b_Run3_merged_debug_v2.yml  -f skimmer/metadata/picoaod_datasets_data_2022_preEEB_debug_v2.yml`
	- `python runner.py  -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b_fourTag.yml -y 2022_preEE  -d data -op skimmer/metadata/ -o picoaod_datasets_fourTag_data_Run3_vDebug_v2.yml -m metadata/datasets_HH4b_Run3_merged_debug_v2.yml --condor`
- Events not in four b skimmmer... problem was eta requirement in lowPt skimming
- Fixed.
- Now re-running skims on C and D over all 
- Re-doing the four-tag skim
- Agreement now: 
	- `Total number of missing events: 317 (1.3% of total events)`
	- `Total number of extra events: 5986 (19.87% of total events)`
- Going to reskim all Run3
	- Submitted 2022_EE : `source  skim2022_EE.sh`



Hung t-mans poster / cleaned up the office


# [[CMU HGC MAC Meeting 29 April 2025]]


# Chat Ornella
- Has another job offer.
- [x] How long do we need her to stick around
- [x] Ping Erics guys


# Chat Seth / Jamie Re:avoiding overhead
- Will declare it as "fabricated equipment"


# [[HGC Management Meeting]]
- Turn around report
- [[CAM Turnaround Report]]
- Do we start 142 ?
- Complete 152
- Move along: 155 50 -> 75%
- Move along 156: 80->90%
- **What is l157 ?**
- move along 182: 37->44 
- Move along 183 37 -> 44
- Move along 184 20->30 %
- Move along 205 -> 5->7%


# Looking into ORG-Roam
- https://systemcrafters.net/build-a-second-brain-in-emacs/getting-started-with-org-roam/
- Lots of good stuff here. 
- Installed emacs 
- I think for now its best to stick with obsidian
- Main problem I see is a good viewer... Now Solved with "getting started with emacs video"

# [[Letter for Jessica 2025]]
- [[Letter for Jonas]]
- ~~Decided I have too much going on at the moment~~
- "Your people are what really matter"


Condor down... Cannot skim.

Checking out org-roam... see above

Home.

Picked up H ... traffic.. lot of rain. 

More playing around with org-roam

Wrote up [[Just Six Numbers]]

Some [[Hamlet]]
