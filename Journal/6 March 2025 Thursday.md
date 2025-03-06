
|     | setup |     |
| --- | ----- | --- |
| 9   |       |     |
|     |       |     |
| 10  | FBC2  |     |
|     | FBC2  |     |
| 11  |       |     |
|     |       |     |
| 12  |       |     |
|     |       |     |
| 1   |       |     |
|     |       |     |
| 2   |       |     |
|     |       |     |
| 3   |       |     |
|     |       |     |
| 4   |       |     |
|     |       |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] Setup  [[Boosted Synthetic Data]]

---
# To Do

- [x] Follow up on Institutional review
- [x] Another Look at L2 comments
- [ ] Fermilab Access
- [x] Setup for Chance
	- [x] Get him set up with [[Boosted Synthetic Data]]
- [ ]  Read for [[ARC TOP-24-006 3 top production]]
- [ ] Hemisphere plots 
- [ ] CutFlow for Marina
- [ ] Push AN 
---

# Log

up at 7 

M&T to school

# Setting up [[Boosted Synthetic Data]]
- filter boosted fourvectors
- Setup on rogue
- Nanos failing on rucio... Nano not avilible on LPC, needed to add MIT
	- [[dasgoclient]]
- NanoAOD content https://cms-nanoaod-integration.web.cern.ch/autoDoc/
- Testing with
	- `python runner.py -t  -o signal_HH4b_nano.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_boosted_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- Added function to write boosted output 
- Running on all UL18
	- ` python runner.py  -o signal_BoostedHH4b_nano.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_boosted_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- Example script for reading the output
	- `python analysis/readBoostedSyntheticEvents.py output/analysis_test_job/signal_BoostedHH4b_nano.coffea`
- Sent mail to Chance


# Review [[Run2 HH4b AN]]
- need hemiplots and new data

# Thinking about bootstrapping to get statistical uncertainties on a histogram
- Toy data weights one.
- make histogram 
- fluctuate weights and compare RMS to sqrt(N)
- Toy mixed dataset, 
- histogram
- fluctuate weights compare RMS to sqrt(N)
- Try gpt research
- 


# FBC2
- [ ] Make Run3 CR cut and make a print of event/run numbers


Chat AE re:boosted
https://cms-nanoaod-integration.web.cern.ch/autoDoc/

# Gym/Steamroom
- Core / 3 Supersets
- close-grip bench - Dead lifts / incline dumbbell - rows / lunges - front raises
- 10' at Tmax = 124

More [[Boosted Synthetic Data]]
