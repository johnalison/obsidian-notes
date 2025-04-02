
# To Do
- [x] New cluster splitting templates
Feedback from Marina:
- [ ] add the TrigObj collection
- [x] Move pt cut to 35
- [ ] Jets with 3 medium b-jets

v9: 
- like v8 but now with the 00-09-02 pdfs (using the rotated masses for the ak4 jets pdfs)


v8: 
- like v7 but with 00-09-01 pdfs (using new jet calibration) [[Splitting PDF Archive]]

v7: 
- like v6 but only apply the b-reg corrections once

v6: 
- like v5 but now rho correction when declustering.

v5: 
- like v4, but with splitting functions that use the JEC calbiration

v4: 
- like v3 but with new JEC calibration and btag filter at 30 GeV

**v3**
- new skims (btag filter at 40 GeV)

**v1**
- 202*_v1
- Problems:   no TTbar subtraction / wrong btagging / wrong breg Corrections


# Daily Logs

## [[26 March 2025 Wednesday]]
- 16 datasets finished
- Sanity check that the files counts are there
- Running on **cmslpc303**
	- `source scripts/synthetic-dataset-analyze-all.sh `

## [[25 March 2025 Tuesday]]
- running on **cmslpc303**
- Submitted random seeds 4 - 15
- Running... 


## [[24 March 2025 Monday]]
- Starting to make many datasets
- running on **cmslpc303**
- Submitted random seeds 1,2,3

## [[4 March 2025 Tuesday]]
-  Testing v8 
- Making histograms on **cmslpc334**
- plots look good
- Sent to marina

## [[3 March 2025 Monday]]
- Marina points out that we are applying the b-regression twice....
- [x] Fix code
- [x] Verify pts in event Marina sent
- [x] Remake PDFs
- Remake mixed data
- Testing
	- `time python runner.py -t -o synthetic_data_Run3_v6_debug_seedXXX.coffea -d synthetic_data data -p analysis/processors/processor_HH4b.py -y 2022_preEE   -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v6.yml `
 - Fix looks good
 - make v7 synthetic datasets on **cmslpc321**.. done
 - Running on v7 to make plots
 - Looks OK ... not super great
 - Making new pdfs .. on **cmslpc339**
	 - ` python runner.py -o synthetic_datasets_Run3_fixCalib.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix  -op output/synthetic_dataset_cluster  -m metadata/datasets_HH4b_Run3_fourTag_v3.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor`
 - Making 00-09-01 [>>]  [[Splitting PDF Archive]]
	 - `python  jet_clustering/make_jet_splitting_PDFs.py output/synthetic_dataset_cluster/synthetic_datasets_Run3_fixCalib.coffea  --years Run3   --out jet_clustering/jet-splitting-PDFs-00-09-01`
 - Making Run3 v8 synthetic data using 00-09-01


## [[Journal/28 February 2025 Friday|28 February 2025 Friday]]
- making output files for Marina
- [x]  Print out first 100 events in 2022_preEE Data and Synthetic data
- `python analysis/debugRun3SyntheticData.py output/synthetic_dataset_analyze_all/synthetic_data_Run3_v6_debug_seedXXX.coffea`

## [[26 February 2025 Wednesday]]
- Marina's closure now looks good. 
- Seems like she is getting the wrong scale for the synthetic jet pts.

## [[22 February 2025 Saturday]]
-  making v6 on **cmslpc350**... Done
	- `source .ci-workflows/synthetic-dataset-make-dataset-all.sh `
- Now making plots... 
	- `source .ci-workflows/synthetic-dataset-analyze-all.sh`
- Ran with the wrong pt threshold ... rerunning at 30 GeV!... Done... Making plots
- [>>] Set threshold automatically
- Masses look much better !
- Sent to Marina 


## [[15 January 2025 Wednesday]]
- Making datasets file v5
- making histograms..
- v5 looking  good... Making presentations 
- sent to marina


## [[14 January 2025 Tuesday]]
- Making new splitting functions
	- `python  jet_clustering/make_jet_splitting_PDFs.py output/synthetic_dataset_cluster/datasets_2022_EE.coffea  --years 2022_EE   --out jet_clustering/jet-splitting-PDFs-00-08-03`
	- same for other eras
- updated [[Splitting PDF Archive]]
- Making synthetic datasets with new pdfs (v5)
	- `source .ci-workflows/synthetic-dataset-make-dataset-all.sh`
- on **cmslpc320**. ... **real    82m12.738s**

## [[10 January 2025 Friday]]
- [x] Validate
- [x] Send to Marina
- Looks like previous analayze job ran out of memory...
- Rerunning  On **cmslpc330**... checking memory
	- `> source .ci-workflows/synthetic-dataset-analyze-all.sh`
- finished **44m8.523s**
- Plots look good.
- Making presentations
	- `python  jet_clustering/compare_datasets.py  hists/synthetic_data_Run3_v4_new_seedXXX.coffea   --out analysis/plots_synthetic_datasets_all_00-08-02-Run3_v4 -m plots/metadata/plotsSyntheticVsData2.yml`
	- `make jetclustering_slides_Run3_all TEXFILENAME=SyntheticDatasets-00-08-02_Run3_v4 NEW_DIR=analysis\\/plots_synthetic_datasets_all_00-08-02-Run3_v4`
- [>>] New splitting PDFs
- testing clustering job...OK
- Submitting on condor ...
	- `python runner.py -o datasets_Run3_v4.coffea -d data -p analysis/processors/processor_cluster_4b.py -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -op output/synthetic_dataset_cluster -m metadata/datasets_HH4b_Run3_fourTag_v3.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor`
- Failed ... submitting the four years separately...
- Submitting 2022_EE on **cmslpc328**
	- [x] 2022_EE
	- [x] 2022_preEE
	- [x] 2023_preBPix
	- [x] 2023_BPix
- Reduced the chunksize to 5k and works without errors! 


## [[9 January 2025 Thursday]]
- AE pushed fix for JECRs 
- pulled...fixed printout
- resumbitting on **cmslpc331**
- `source .ci-workflows/synthetic-dataset-make-dataset-all.sh`
- Finished ... **real    149m59.119s**
- Making hists... errror when processing synthetic data with new JECRs
- fixed... running

## [[8 January 2025 Wednesday]]
- Merged
- Running on **cmslpc339**
- 30 GeV threshold
- Remaking v4 synthetic data 
	- 30 GeV b-jet filter 
	- new jet corrections
	- `source  .ci-workflows/synthetic-dataset-make-dataset-all.sh
- Errors due to change in `apply_object_selection_4b` interface 
- Running ... not on tmux !!... killed ... re running
- Fails b/c of BPix JEC crash.. Pinged AE

## [[3 January 2025 Friday]]
- Iterated with marina 
- 25% differneces in yields 
- [>>] Cut flow challenge

## [[19 December 2024 Thursday]]
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


## [[18 December 2024 Wednesday]]
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


## [[17 December 2024 Tuesday]]
- on **cmslpc327**
- Making v3 synthetic datasets
- `source  .ci-workflows/synthetic-dataset-make-dataset-all.sh`
	- `time python runner.py -s -p skimmer/processor/make_declustered_data_4b.py -c skimmer/metadata/declustering_noTT_subtraction_seed_${new_seed}.yml -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -d data -op skimmer/metadata/ -o picoaod_datasets_declustered_data_Run3_v3_seed${new_seed}.yml -m metadata/datasets_HH4b_Run3_fourTag_v3.yml`
- condor fails... doing locallly ... taking a looong time... 


## [[11 December 2024 Wednesday]]
- [x] Fix CI
- Debugging CI
- Multijet cutflow OK .... but the histograms are off !?!
- Think the problem is with the tagcode
- If tagCode is buggy, the plots can be wrong, but the cutflow OK


## [[10 December 2024 Tuesday]]
- Running on new synthetic data
 [>>] Fix CI
 ([[Jet DeClustering]]) [<<] Try Run-2 synthetic data with lower pt Cut
 - Normalization in 22 looks OK (pt spectrum still cut in synthetic data)
 - Normalizaiton in 23 off (missing trigger ?)... Not the trigger.
 - Found problem with input files... rerunning
 - Looks pretty good.... sending to Marina


## [[9 December 2024 Monday]]
- Looks like the synthetic datasets finished OK.
- Processing them now...
	`python runner.py -o synthetic_data_Run3_seedXXX.coffea -d synthetic_data data -p analysis/processors/processor_HH4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix -op hists -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag.yml`
 [>>] Fix CI
- Moved the pt cut of the fail_b_pt cut to 30 GeV 
 [>>] Try Run-2 synthetic data with lower pt Cut
- Rerunning Run3 synthetic data with lower pt threshold on **cmslpc320**... finished **8492.214286327362** = 141 min


## [[7 December 2024 Saturday]]
- Streamlining RunII and Run3 selection code
- Updating Run3 selection


## [[3 December 2024 Tuesday]]
- Running on Run3 synthetic data
 [>>] Check cutflow
 [>>] Plots comparing 3-tag 
- Running on Run2 on **cmslpc350**


## [[7 November 2024 Thursday]]
- Ideas for improvements... Do TTSubtraction add ttbar ps data
- Try to improve selected jet multiplicity
 [>>] Compare mixed to synthetic to threeTag



## [[6 November 2024 Wednesday]]
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


## [[5 November 2024 Tuesday]]
- [x] recluster with new selection.. running see below
 [>>] new input pdfs
 [>>] re:synthetic datasets
- Making hists from new synthetic datasets locally ... **14m47.720s**
- Making processor agnostic of btag algorithm... Pushed
- [x] Fix CI...v1
- [x] Update CERN/box slides and send mail


## [[1 November 2024 Friday]]
- [>>] Fix missing bRegCorr variables
- Made plots data vs synthetic in Run3
	`python  jet_clustering/compare_datasets.py  hists/synthetic_data_Run3_seedXXX.coffea   --out analysis/plots_synthetic_datasets_all_00-08-00-Run3 -m analysis/metadata/plotsSyntheticVsData2.yml`
- Make slides with `make` ... very nice setup
- Sent mail to FBC2 group


## [[31 October 2024 Thursday]]
- Clean files from failed jobs
- Turning off jetVetoMaps
- Added synthetic datasets to yaml files
- Making hists
- [>>] Fix missing bRegCorr variables
- Hack to get running.... working !...**31m2.461s**
- First look at Plots ... sensible, but there are obvious problems. 


## [[30 October 2024 Wednesday]]
- Trying with 3 workers ... Jobs failing b/c of memory 
- Try with 4 workers 10_000 chunksize ... looks like this is working... need to try condor
- Trying to run on condor submitting from **cmslpc313**
- Needed to add jet_clustering to transfered files... running... failed...
- Trying with chunk size 5_000, recopied voms-proxy... WORKED !!!... **175m51.908s**

## [[15 October 2024 Tuesday]]
- Fixes for Run3 clustering test jobs
- Starting Run3 [[Jet DeClustering]]
- Failed b/c tag ... also probably ran out of memory
- Fixed tag... Now trying with 1_000 chunksize ... works 
- Running all 





# Follow-ups


# Links: 



202410310906
