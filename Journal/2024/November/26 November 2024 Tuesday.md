
|     | setup                 |     |
| --- | --------------------- | --- |
| 9   | ARC meeting           |     |
|     | ARC meeting           |     |
| 10  | histograms to cutflow |     |
|     | histograms to cutflow |     |
| 11  | histograms to cutflow |     |
|     | histograms to cutflow |     |
| 12  | histograms to cutflow |     |
|     | histograms to cutflow |     |
| 1   | T to bed              |     |
|     | T to bed              |     |
| 2   | Lumafield             |     |
|     | T to bed              |     |
| 3   | Mans Meeting          |     |
|     | Mans Meeting          |     |
| 4   | Mans Meeting          |     |
|     | Andre Swain           |     |

**W:** 7 
**DW:** 3
**OT:** 3
**No ex**

---
# The ONE thing: 
- [ ] Histograms to cutflow

---
# To Do

- [x] Histograms to cutflow
 [>>] Matplotlib ".py"
 [>>]  Work [[Run2 HH4b AN]]
 [>>]  [[Letter for Jonas]] ... Due Dec 15th
 [>> ] Read [[Run2 X->HY->4b]]
 [>>] BCR
 [>>]   [[Snakemake tutorial]] 
 ([[Run2 HH4b AN]]) [<<] Re do FvT fits with new code
- [x] Ping CMU about hiring more people

---

# Log

Up at 6:30 ... meditation

w/kids

# ARC Meeting
- Phil wants to use this for his tenure talk

# Update [[Wesley Terrill]]
- See daily's above

[[Update from Wes 26 November 2024]]

# Histograms to cutflow
- move truth function to `helpers/truth_tools`
- `python runner.py -t -o test.coffea -d ZH4b ZZ4b GluGluToHHTo4B_cHHH1 -p analysis/processors/processor_HH4b.py -y UL18  -op $OUTPUT_DIR -m $DATASETS
- added truth_v4b to event... adding histogram
- added a first pass of histograms
- pushed first version
 [>>] Code to make plots 

Pinged Michelle waters re:three more positions 

[[Inquiry for Module CT Scans Lumafield]]


# Lumafield Chat
- 4-6 hours to process a modules
- 75k / year use as much as you want
- Modules are probably too big to get the magnification to see ~100µm

[[HGCManagementMeeting 26 November 2024]]

# Andre Chat
- offered 32/hr
- Start date Feb 1
- will get back to me on Monday

# Start work on Matplotlib ".py"
- key is  https://hsf-training.github.io/hsf-training-matplotlib/05-mplhep/index.html
- hist commands from: https://github.com/scikit-hep/hist/blob/main/src/hist/plot.py
- will make list of `(values, variances, edges, config)` for hists same for ratios

Made chicken in wine cream sauce

Some [[Progressive Myths]]