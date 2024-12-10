
|     | In transit |     |
| --- | ---------- | --- |
| 9   | setup      |     |
|     | Random     |     |
| 10  | Run 2 AN   |     |
|     | Run 2 AN   |     |
| 11  | Run 2 AN   |     |
|     | Hoops      |     |
| 12  | Hoops      |     |
|     | Hoops      |     |
| 1   | Run 2 AN   |     |
|     | Run 2 AN   |     |
| 2   | Get M      |     |
|     | Get M      |     |
| 3   | Dentist    |     |
|     | Run 2 AN   |     |
| 4   | Sindhu     |     |
|     | Run 2 AN   |     |

**W:** 5 
**DW:** 3 
**OT:** 3 
**ex** 

---
# The ONE thing: 
- [ ] Push the AN

---
# To Do

- [x] iSURF Mail
- [x] Call eye doctor
- [x] Ping Kristine on hires
- [x] Reply Eric
- [ ] What to do about the machinist  ? 
- [x] review MAC meeting
- [ ] Update [[Run3 Synthetic Data]]
- [ ] Work [[Run2 HH4b AN]]
- [x] Add CL slides to support note
---

# Log

Up at 6:50 

Rain ride w/SHM 

Work by 9

# Working [[Run2 HH4b AN]]
- Chat AE: he will push today
- Working Appendix with CL results
- Finished the comments
- [ ] Send

# Hoops / Steamroom 
- 4s and 5s
- 10' at Tmax = 124

More [[Run2 HH4b AN]]

# Marlo to Dentist


# Chat Sinhu
- Chat on mHH binning
- Will send slides for annual review tonight...

Pushing changed to [[Run2 HH4b AN]]

# [[Run3 Synthetic Data]]
- Looks like the synthetic datasets finished OK.
- Processing them now...
	`python runner.py -o synthetic_data_Run3_seedXXX.coffea -d synthetic_data data -p analysis/processors/processor_HH4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix -op hists -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag.yml`
- [ ] Fix CI
- Moved the pt cut of the fail_b_pt cut to 30 GeV 
- [ ] Try Run-2 synthetic data with lower pt Cut
- Rerunning Run3 synthetic data with lower pt threshold

