
|     | setup                  |     |
| --- | ---------------------- | --- |
| 9   | Teach                  |     |
|     | Teach                  |     |
| 10  | Skim Truth for Soeheun |     |
|     | Skim Truth for Soeheun |     |
| 11  | accX Eff Plots         |     |
|     | accX Eff Plots         |     |
| 12  | Hoops                  |     |
|     | Hoops                  |     |
| 1   | Hoops                  |     |
|     | Hoops                  |     |
| 2   | Nural                  |     |
|     | Nural                  |     |
| 3   | Skim Truth for Soeheun |     |
|     | Skim Truth for Soeheun |     |
| 4   | Skim Truth for Soeheun |     |
|     | Skim Truth for Soeheun |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [x] Finish Truth Skimmer

---
# To Do

- [ ] Schedule FNAL badging appointment
- [ ] Hemisphere plots 
- [ ] Write up bootstraping study
- [ ] Call Liberty mutual re:tree down
- [ ] Review Wes' Fermilab slides
- [ ] Understand Chuyuan's slides
- [ ] Make sum/SB/SR plots presentation
- [x] Skim data for truth events
	- [x]  Remove the GenParts
- [ ] ROC plots for various signal points
- [x] Ping Abels
- [x] Fix AccXEff plots

---

# Log


Up at 7 

M&T to school 

setup

# Taught 
- Atomic models

# Run3 Cutflow debugging
- added pt_raw to debug output 
- remade pkl file for Marina... sent 

# New Acceptance plots
- Remake m4j plots after removing fix for Nones
- `python runner.py   -o signal_HH4b_nano_fixed.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_HH4b.py -y UL18 UL17 UL16_preVFP UL16_postVFP   -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- `python plots/makeAccxEff.py output/analysis_test_job/signal_HH4b_nano_fixed.coffea hist_HH.coffea --output testAccNew`
- Only half (46%) the events have four matching genJets
	- ΔR to 0.4 => 68%
	- ΔR to 10 => 99%
- 


# Hoops 
- 5s good runs

# Chat with Nural and Manfred
- Directors 
- [ ] Read steves mail
- [[HGC MAC BoEs]]

More Acceptance plots.  .. see above


# Truth Skimmer
- `python runner.py   -s -p skimmer/processor/skimmer_truth.py -c skimmer/metadata/HH4b_truth.yml -y UL18 -d ZZ4b ZH4b -op output/TruthSkims -o picoaod_datasets_GluGluToHHTo4B_cHHH0_UL18.yml -m metadata/datasets_HH4b.yml --condor`
- Submitted on **cmslpc315**
- Saw an error with the nanny port... resubmitting... now see jobs in condor_q
- ...Finished.
	- `root://cmseos.fnal.gov//store/user/jda102/XX4b/2024_v3/Z?4b_UL18/`

Home with M&T

Some [[Fly By Night Physics]]
Some [[For a new Liberty]]