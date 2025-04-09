
# Plan
- use `data*_v*` files to map event, run   -> (h1_event, h1_run, h2_event, h2_run )
	- `/store/user/jda102/condor/ZH4b/ULTrig/data2018_v0/picoAOD_3bDvTMix4bDvT_v0_newSBDef.root` 
- Make dictionary ala synthetic datasets of events to SvB 
- Need another dictionary of events to hemi_event pairs
- Assign hemi_event pairs to SvB 
- Fluctuate weights. 
- Compute combined weights

# Logs

## [[2 April 2025 Wednesday]]
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


# Follow-ups


# Links: 
[[Bootstrapping Synthetic Data Stat Uncertainties]]


202504090843
