
**v1**
- 202*_v1
- Problems:   no TTbar subtraction / wrong btagging / wrong breg Corrections

# Daily Logs

[[30 October 2024 Wednesday]]
- Trying with 3 workers ... Jobs failing b/c of memory 
- Try with 4 workers 10_000 chunksize ... looks like this is working... need to try condor
- Trying to run on condor submitting from **cmslpc313**
- Needed to add jet_clustering to transfered files... running... failed...
- Trying with chunk size 5_000, recopied voms-proxy... WORKED !!!... **175m51.908s**

[[31 October 2024 Thursday]]
- Clean files from failed jobs
- Turning off jetVetoMaps
- Added synthetic datasets to yaml files
- Making hists
- [>>] Fix missing bRegCorr variables
- Hack to get running.... working !...**31m2.461s**
- First look at Plots ... sensible, but there are obvious problems. 

[[1 November 2024 Friday]]
- [>>] Fix missing bRegCorr variables
- Made plots data vs synthetic in Run3
	`python  jet_clustering/compare_datasets.py  hists/synthetic_data_Run3_seedXXX.coffea   --out analysis/plots_synthetic_datasets_all_00-08-00-Run3 -m analysis/metadata/plotsSyntheticVsData2.yml`
- Make slides with `make` ... very nice setup
- Sent mail to FBC2 group


[[4 November 2024 Monday]]
- [x] Fix missing bRegCorr variables
- [x] Fix missing btagging
- Compared Run2 and Run3 plots... lots of differences... fixing
- [x] Selected Jets energy scale different
- [x]  update Run3 btagging to PNet
- [>>] Fix bReg corrections
- [<<] Re-skim
- Testing the Run3 synthetic dataset `python runner.py -s -p skimmer/processor/make_declustered_data_4b.py -c skimmer/metadata/declustering_for_test_noTTSubtraction.yml -y 2022_EE  -d data  -op output/synthetic_dataset_make_dataset -o picoaod_datasets_declustered_test_2022_EE.yml -m metadata/datasets_HH4b_Run3_fourTag.yml`
- Made clustering code agnostic of btagging algorithm
- Remaking Synthetic datasets on **cmslpc322**.. locally...**215m32.777s**

# Follow-ups


# Links: 



202410310906
