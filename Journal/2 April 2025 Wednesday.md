
|     | setup                            |     |
| --- | -------------------------------- | --- |
| 9   | Taught                           |     |
|     | Taught                           |     |
| 10  | setup / Hbb                      |     |
|     | Bootstrapping Study              |     |
| 11  | Eldon                            |     |
|     | Sam                              |     |
| 12  | Hoops                            |     |
|     | Hoops                            |     |
| 1   | Hoops                            |     |
|     | Hoops                            |     |
| 2   | Update ETC docs                  |     |
|     | Sindhu                           |     |
| 3   | Titus                            |     |
|     | UCSB ETC docs                    |     |
| 4   | Pick up / Grade Exam             |     |
|     | Physics 3 endgame / Alcohol quiz |     |

**W:** 7 
**DW:** 2 
**OT:** 1
**ex** 

---
# The ONE thing: 
- [ ] Update ETC docs

---
# To Do

- [>>]  Schedule FNAL badging appointment
- [x] Write up bootstrap study
- [>>] Update ETC docs
	- [x] Source Spreadsheet for UCSB 
	- [>>] ETC for Module Factories
- [>>] Cut flow wrt Marina
- [x] Review March
- [x] Grade Elise Exam

---

# Log

Up at 7 

M&T to school

[[CMU CMS Webpage]]

# Taught
- Schrodinger Eq
- Start stationary states

*"Great ideas often look wrong at first; that's why the independent-minded discover them."*
- Shane Parish [[Quotes]]

[[Bootstrapping Synthetic Data Stat Uncertainties]]

# Chat Elden 
- Told him about QM+Spacetime

# Chat Sam
- making progress

Finished writing up bootstrapping study

# Hoops
- Good runs... Won more than lost
- Played decent

Sent mail to Lei in the masters program 

# [[HGC Estimate to complete Spring 2025]]
- [[HGC MAC BoEs]]
- Update UCSB bottom-up labor estimate : 
	- https://docs.google.com/spreadsheets/d/1V91SoHVxcbnE7U5_f1YQ-0o4fRP4you8/edit?gid=1210363411#gid=1210363411
- Update doc file. 
- Posted to docDB

Called Jim.  Happy with offer... Next step official letter.

# SoS shown today at Moriond !!

Sent mail re:Physics 3 endgame

Picked up and graded Elises Physics-3 exam

Did Alcohol renewal quiz

# Thinking about [[Bootstrapping mixed data]]
- use `data*_v*` files to map event, run   -> (h1_event, h1_run, h2_event, h2_run )
	- `/store/user/jda102/condor/ZH4b/ULTrig/data2018_v0/picoAOD_3bDvTMix4bDvT_v0_newSBDef.root` 
- Make dictionary ala synthetic datasets of events to SvB 
- Need another dictionary of events to hemi_event pairs
- Assign hemi_event pairs to SvB 
- Fluctuate weights. 
- Compute combined weights


Home with M& T

S order Schullies !

# Start [[Bootstrapping mixed data]]
- **cmslpc304**
- `sed -e "s|run_dilep_ttbar_crosscheck: true|run_dilep_ttbar_crosscheck: false|" analysis/metadata/HH4b.yml > output/analysis_test_mixed_job/HH4b.yml`
- `python runner.py  -o mixedData_wSvB.coffea -d    mixeddata  -p analysis/processors/processor_HH4b.py -y 2016 2017 2018 -op output/analysis_test_mixed_job  -m metadata/datasets_HH4b.yml -c output/analysis_test_mixed_job/HH4b.yml --condor`
- Setting up to run on the mixed data
	- add datasets to the input yml file
	- modify the runner to run on datamixed
	- adding h1 and h2 event, run to output files
- Testing
	- `python runner.py -t  -o testDataMixed_wSvB.coffea -d    datamixed  -p analysis/processors/processor_HH4b.py -y 2016  -op output/analysis_test_mixed_job  -m metadata/datasets_HH4b_datamixed.yml -c output/analysis_test_mixed_job/HH4b.yml --condor`
- running on condor
	- `python runner.py   -o dataMixed_hNumbers.coffea -d    datamixed  -p analysis/processors/processor_HH4b.py -y 2016 2017 2018  -op output/analysis_test_mixed_job  -m metadata/datasets_HH4b_datamixed.yml -c output/analysis_test_mixed_job/HH4b.yml --condor`
- Script to prepare dataset
	- `python jet_clustering/mixing_correlation_prep_data.py output/analysis_test_mixed_job/mixedData_wSvB.coffea  output/analysis_test_mixed_job/dataMixed_hNumbers.coffea `
- Made merged dataset
- [>>] Bootstrap with hemisphere weights

# Chat Olivito