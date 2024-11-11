
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
	`source  .ci-workflows/synthetic-dataset-make-dataset-all.sh `

[[5 November 2024 Tuesday]]
- [x] recluster with new selection.. running see below
- [>>] new input pdfs
- [>>] re:synthetic datasets
- Making hists from new synthetic datasets locally ... **14m47.720s**
- Making processor agnostic of btag algorithm... Pushed
- [x] Fix CI...v1
- [x] Update CERN/box slides and send mail

[[6 November 2024 Wednesday]]
- [x] new input pdfs
- [x] re:synthetic datasets
- [[Cluster Run 3 data]]
	- see daily logs above
- need to add `jet_clustering` to `condor_transfer_input_files`
- making PDFS 00-08-01 recorded in [[Jet DeClustering]]
	` python  jet_clustering/make_jet_splitting_PDFs.py hists/synthetic_datasets_cluster_Run3.coffea --years Run3   --out jet_clustering/jet-splitting-PDFs-00-08-01`
- [x] plot of clustering multiplicity types 
- Remaking synthetic data (on condor) cmslpc325.. outputs to /store/user/jda102/XX4b/2024_v2 .. finished in **45m2.045s**... no errors ! 
- Making hists from new synthetic datasets on condor ... **27m52.183s** ... better local!
- ` time python runner.py  -o synthetic_data_Run3_seedXXX-00-08-01.coffea -d  data synthetic_data -p analysis/processors/processor_HH4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix  -op hists -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag.yml --condor  `
- Made presentations with 00-08-01
- Made plot comparing splitting type multiplicities 


[[7 November 2024 Thursday]]
- Ideas for improvements... Do TTSubtraction add ttbar ps data
- Try to improve selected jet multiplicity
- [>>] Compare mixed to synthetic to threeTag

# Follow-ups


# Links: 



202410310906
