# ACTION:  Aishik Ghosh visit (Feb 5th)

|     | setup                     |     |
| --- | ------------------------- | --- |
| 9   | Teaching                  |     |
|     | Teaching                  |     |
| 10  | Close on Debug truth v4j  |     |
|     | Close on Debug truth v4j  |     |
| 11  | Gauss works               |     |
|     | Friend Trees for FvT Fits |     |
| 12  | Hoops                     |     |
|     | Hoops                     |     |
| 1   | Hoops                     |     |
|     | Hoops                     |     |
| 2   | CMU CMS                   |     |
|     | CMU CMS                   |     |
| 3   | Aniket                    |     |
|     | Colloq                    |     |
| 4   | Colloq                    |     |
|     | Reception                 |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] Friend Trees for FvT Fits

---
# To Do

- [ ]  Send mails re:Aishik Ghosh visit
- [ ] Write [[Wesley Terrill Letter Spring 25]]
- [ ] Sam proposal
- [ ] Wes's Thesis
- [ ] Buy High Voltage Power Supplies
- [ ]  Synthetic data Plots in SB 
- [ ] Read [[Evolution of Silicon Sensor Technology in Particle Physics]] !!!
- [ ] Call Liberty mutual re:tree down
- [ ]  Apply to fall Osher
- [ ] Closure Test with Run-2 Synthetic data
	- [ ]  Friend Trees for FvT Fits
- [x] Verify Stats chat time
- [x] Close on Debug truth v4j
- [x] Try Gaussian Kernal m4j again
- [ ] Look at more HGC applications
- [x] CL annual review report
- [x] Move on Ornella
---

# Log


# Taught 
- Muons at the surface of the earth
- Doppler effect

Merging cut on status for genParticles.
- Maybe this is why the gaussian kernel failed before... YES! 

# Josh Arrives !!!

# Testing the Gaussian Kernel 
- Edit the processor by hand `self.gaussKernalMean = 600`
- ` python runner.py  -o signal_m600.coffea -d ZZ4b ZH4b ggZH4b GluGluToHHTo4B_cHHH1 -p analysis/processors/processor_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml`
- Gaussian Kernel filtering now makes sense !

# Synthetic Data Closure
- [[Jet DeClustering]]
- `python runner.py -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_classifier_inputs.yml -d synthetic_data -y UL16_preVFP UL16_postVFP UL17 UL18 -op output/ -o classifier_synthetic_data.coffea`
- Had to set `top_reconstruction_override: fast`
- Looks good... rerunning with output to `root://cmseos.fnal.gov//store/user/jda102/XX4b/2024_v1/`
- Need to make inputs for the other data as well

# Hoops
- 5s good runs... Lots of wins

Working Chuyuans Annual Review
- [[Chuyuan Annual Review Spring 2025]]

# Monday Meeting
- AE: Practice Talk for CMS meeting
- 