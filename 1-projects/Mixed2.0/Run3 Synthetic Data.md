
# To Do
Feedback from Marina:
- [ ] add the TrigObj collection
- [x] Move pt cut to 35
- [ ] Jets with 3 medium b-jets

**v1**
- 202*_v1
- Problems:   no TTbar subtraction / wrong btagging / wrong breg Corrections


# Daily Logs

[[15 October 2024 Tuesday]]
- Fixes for Run3 clustering test jobs
- Starting Run3 [[Jet DeClustering]]
- Failed b/c tag ... also probably ran out of memory
- Fixed tag... Now trying with 1_000 chunksize ... works 
- Running all 

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
 [>>] Fix bReg corrections
 [<<] Re-skim
- Testing the Run3 synthetic dataset `python runner.py -s -p skimmer/processor/make_declustered_data_4b.py -c skimmer/metadata/declustering_for_test_noTTSubtraction.yml -y 2022_EE  -d data  -op output/synthetic_dataset_make_dataset -o picoaod_datasets_declustered_test_2022_EE.yml -m metadata/datasets_HH4b_Run3_fourTag.yml`
- Made clustering code agnostic of btagging algorithm
- Remaking Synthetic datasets on **cmslpc322**.. locally...**215m32.777s**
	`source  .ci-workflows/synthetic-dataset-make-dataset-all.sh `

[[5 November 2024 Tuesday]]
- [x] recluster with new selection.. running see below
 [>>] new input pdfs
 [>>] re:synthetic datasets
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
 [>>] Compare mixed to synthetic to threeTag


[[7 December 2024 Saturday]]
- Streamlining RunII and Run3 selection code
- Updating Run3 selection

[[9 December 2024 Monday]]
- Looks like the synthetic datasets finished OK.
- Processing them now...
	`python runner.py -o synthetic_data_Run3_seedXXX.coffea -d synthetic_data data -p analysis/processors/processor_HH4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix -op hists -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag.yml`
 [>>] Fix CI
- Moved the pt cut of the fail_b_pt cut to 30 GeV 
 [>>] Try Run-2 synthetic data with lower pt Cut
- Rerunning Run3 synthetic data with lower pt threshold on **cmslpc320**... finished **8492.214286327362** = 141 min

[[10 December 2024 Tuesday]]
- Running on new synthetic data
 [>>] Fix CI
 ([[Jet DeClustering]]) [<<] Try Run-2 synthetic data with lower pt Cut
 - Normalization in 22 looks OK (pt spectrum still cut in synthetic data)
 - Normalizaiton in 23 off (missing trigger ?)... Not the trigger.
 - Found problem with input files... rerunning
 - Looks pretty good.... sending to Marina

[[11 December 2024 Wednesday]]
- [x] Fix CI
- Debugging CI
- Multijet cutflow OK .... but the histograms are off !?!
- Think the problem is with the tagcode
- If tagCode is buggy, the plots can be wrong, but the cutflow OK

[[17 December 2024 Tuesday]]
- on **cmslpc327**
- Making v3 synthetic datasets
- `source  .ci-workflows/synthetic-dataset-make-dataset-all.sh`
	- `time python runner.py -s -p skimmer/processor/make_declustered_data_4b.py -c skimmer/metadata/declustering_noTT_subtraction_seed_${new_seed}.yml -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -d data -op skimmer/metadata/ -o picoaod_datasets_declustered_data_Run3_v3_seed${new_seed}.yml -m metadata/datasets_HH4b_Run3_fourTag_v3.yml`
- condor fails... doing locallly ... taking a looong time... 

[[18 December 2024 Wednesday]]
- Local job finished in **30945.83396744728** = 515m = 8 hrs !
- Adding synthethic dataset files to `datasets_HH4b_Run3_fourTag_v3`
- Processing new synthetic data
	- `time python runner.py -o synthetic_data_Run3_v3_seedXXX.coffea -d synthetic_data data -p analysis/processors/processor_HH4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix  -op hists -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v3.yml
- Finished in ... **21m54.294s**`
- Normalization better ! 
- Sent to marina. 
- `python  jet_clustering/compare_datasets.py  hists/synthetic_data_Run3_v3_seedXXX.coffea   --out analysis/plots_synthetic_datasets_all_00-08-00-Run3_v3 -m analysis/metadata/plotsSyntheticVsData2.yml'
- Making slides
	- `make jetclustering_slides_Run3 TEXFILENAME=SyntheticDatasets-00-08-02_Run3_v3 NEW_DIR=analysis\\/plots_synthetic_datasets_all_00-08-02-Run3_v3`
- [>>] new clustering templates

[[19 December 2024 Thursday]]
- changed the b-fail flat to 30 GeV
- Still have condor errors
	- update to master
	- rerun bootstrap
	- Test job fails
	- works with `--dask` !
- Redoing the synthetic data sets v4 with 30 GeV b-jet filter
- `--dask` sets up a local dask cluster and only has access to interactive node cpus
-  from AE:  
	- known problem: [https://github.com/CoffeaTeam/lpcjobqueue/issues/38](https://github.com/CoffeaTeam/lpcjobqueue/issues/38)
	- fix `pip install htcondor==24.2.1`
	- Need to do this each time you `source set_shell.sh`
- Now running with `--condor` ! 
- Failed ... retrying... same error.... removed output directory and trying again
- Now works ! Runs in **4586.94751906395s** = 76min
- Analyzing "v4"... running on **cmslpc345**


# Follow-ups


# Links: 



202410310906
