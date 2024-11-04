

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

# Follow-ups


# Links: 



202410310906
