
|     | MAC Meeting / setup        |     |
| --- | -------------------------- | --- |
| 9   | FB2C                       |     |
|     | FB2C                       |     |
| 10  | Teaching                   |     |
|     | Teaching                   |     |
| 11  | Stats Chat                 |     |
|     | Stats Chat                 |     |
| 12  | Gym                        |     |
|     | Gym                        |     |
| 1   | Gym                        |     |
|     | Chat [[Tony Boyle]]        |     |
| 2   | [[Synthetic Data Closure]] |     |
|     | Office Hours               |     |
| 3   | Office Hours               |     |
|     | [[Synthetic Data Closure]] |     |
| 4   | HEP Chat                   |     |
|     | HEP Chat                   |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] [[Synthetic Data Closure]]

---
# To Do

- [ ] Make PDFs for Run3 
- [ ] Do  [[Synthetic Data Closure]]
- [ ] Sam Letter
- [ ] L2 Comments

---

# Log

Up at 7... Meds

M & T to school 

# Modules Meeting at HGCal Week
- https://indico.cern.ch/event/1512127/
- [ ] Write up slides


# FB2C
- Not much 

# Taught 
- Examples: Compton scattering and discovery of new particles


# Stats Chat
- gamma/gamma-tilde lood good
- Get other signal samples

# Gym / Steam room 
- core / Supers sets! 
- close-grip bench - barbell rows / clings - dips / dumbbell incline bench - dead lifts
- 10' at Tmax = 124

# Chat [[Tony Boyle]]
- Has 4-vector math working...
- Will look into events where the lead or subl di-jet mass are low.

# [[Synthetic Data Closure]]
- Looking at plots... not clear why we have these bizzare weights...
- [ ] Check why canJet pt < 40 ! .. bRegCor?
- Think synthetic events are making the three tag selection when b-jet out of acceptance. 
- Removing by hand
- Remaking inputs
	- `python runner.py -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_classifier_inputs.yml -d synthetic_data -y UL16_preVFP UL16_postVFP UL17 UL18 -op output/ -o classifier_synthetic_data_v4.coffea`
- Can write out directly to eos!!
	- `python runner.py -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_classifier_inputs.yml -d synthetic_data -y UL16_preVFP UL16_postVFP UL17 UL18 -op root://cmseos.fnal.gov//store/user/jda102/XX4b/2024_v4/  -o classifier_synthetic_data_v4.coffea`

# Office Hours
- Some customers 

More [[Synthetic Data Closure]]

# Hep Chat
- Useless

Home 