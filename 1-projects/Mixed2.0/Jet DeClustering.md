Getting the new mixing going
[[Jet DeClustering Algorithm|Jet DeClustering Algorithm]]

# Documentation: 
[1st presentation in H→bb](https://indico.cern.ch/event/1429006/contributions/6030942/attachments/2889527/5065145/SyntheticDataSetsFromJetSplitting.pdf)
- Presents the overall idea and the 4b + 0j in 2018 data
[2nd presentation in H→bb](https://indico.cern.ch/event/1451193/#b-579849-higgs-to-bb)
- Extension to full Run2 dataset


# To Do
- [ ] Quantify variation among synthetic datasets
- [ ] Implement jet mass corrections for final jet pt 
- [x] Try Run-2 synthetic data with lower pt Cut
- [ ] Compare mixed to synthetic to threeTag
- [ ] Run-3
	- [x] Clustering Test job Running 
	- [x] Templates by year
	- [x] Synthetirc data Test job running
	- [x] Plots
- [ ] Boosted
- [ ] Check re-clustering
	- [ ] Check bj-bj to make sure they can be recovered
	- [ ] pdfs by pt
	- [ ] Compare combined mass
- [ ] Read [[Do graph neural networks learn traditional jet substructure?]]
- [ ] [[ResamplingBug]]
- [ ] Propagate selJet flag.. then check to make sure pt>40 ect.
- [ ] Check to make sure that the lepton veto wont kill synthetic jets
- [ ] cutflow for UL16 nominal vs making synthetic data (eg: all events pass jetMult in synthetic data...)
- [ ] Make datasets with different seeds. 1/15


# Ideas: 
* [[decluster3b]]
* [[MLForSplittingFunctions]]
* Run on boosted ? [Sub-jet code](https://github.com/rkansal47/HHbbVV/blob/main/src/HHbbVV/processors/TaggerInference.py#L63-L66)
* (Not the way to go... [[Recursive Splitting Types]]) 
* [[Group Splittings Based on Multiplicity]]
* [[Mass of jets is not invariant]]



# Work:
[[script to compare the splittings]]
[[Script to check reclustered splittings]]
[[Script to compare synthetic and nominal datasets]]


# Performance

## decluster and cluster
- **32m30.007s**. 25 July 2024 
- **33m20.966s** 30 July 2024
- **56m22.760s** 2 Aug 4b+2j


## Just clustering:
- 4b+2j: **28m46.523s**
- 4b+ Xj (all splittings / trimmed histograms) **37m0.066s**. 
	    2018 using all non b-jets  **46m30.667s**
- 4b+Xj all years: **83m53.974s**
             **101m24.461s** 8 Aug 2024
             **108m52.381s** 16 Aug with correct jet def
- Signal 1 worker: **196m47.039s**


## Synthetic Datasets
- Inclusive in jet multiplicity (rerunning SvB) **38m1.994s**
- inclusive in jet multiplicity and all years **88m46.643s**
- inclusive in jet multiplicty all years, correct jet def: **114m0.018s**
- with 00-07-01 PDFs **116m39.358s**
- with 00-07-02 PDFs and dR fix...**117m16.100s**
- with 00-07-02 PDFs and retry at 8 ... **121m1.577s**
- Above after changes for CI **117m19.837s**

# Making Datasets
- with 00-07-02 PDFs and retry at 8 ... **86m56.847s**
- Above using ttbar subtraction: **79m44.445s**
- **125m7.120s**
- HH Signal 2 workers **real    82m51.408s**

# Processing Synthetic Datasets
- with TTbar subtraction: **2m23.418s**

# Splittings PDFs:
[[Splitting PDF Archive]]


# Daily Logs

[[16 February 2025 Sunday]]
- [>>] Implement the rho corrections and try again.
- Making the pdfs on **cmslpc345**... **6664.398930549622**s = 2 hours
- ` python runner.py  -o synthetic_datasets_Run2.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y UL17 UL18 UL16_preVFP UL16_postVFP  -op output/synthetic_dataset_cluster -m metadata/datasets_HH4b.yml -c analysis/metadata/cluster_4b.yml`


[[12 February 2025 Wednesday]]
Thinking about the rho corrections
- Need rho pdfs 
- Can update the mass in `def decluster_combined_jets` in `declustering.py`
- [>>] Need to make pdfs


[[2 January 2025 Thursday]]
- Plots for RunII 30 GeV 
	`py jet_clustering/compare_datasets.py hists/synthetic_data_RunII_30GeV_noOverride_seedXXX.coffea --out analysis/plots_synthetic_datasets_all_00-08-02-RunII_30GeV_noOverride -m analysis/metadata/plotsSyntheticVsData2.yml`
- Make slides
	`make jetclustering_slides_RunII TEXFILENAME=SyntheticDatasets-00-08-02_RunII_30GeV_noOverride NEW_DIR=analysis\\/plots_synthetic_datasets_all_00-08-02-RunII_30GeV_noOverride /Library/Developer/CommandLineTools/usr/bin/make jetclustering_slides_year YEAR=RunII`

[[3 October 2024 Thursday]]
- Running on the 2 mixed samples
- v1 looks much better than v0... rerunning v0.
- v0 looks the same as before... making a v2
- v2 looks like v1.  Deleted v0 and remaking... updated seed as 53x(seed+13).. on **cmslpc321**
- Seeing that the mixed histograms counts dont match the cutflows !
	- Data is OK
	- **fixed the issue!**  Cannot repeat filenames in the datasets.. All the PS data was being counted in v0 (fixed by making copies of the PS data with different file name)

[[2 October 2024 Wednesday]]
- make hists w/PS and hT RW.. not clear the RW does much
- update topReconstruction... merging
- Making another dataset (seed1)
- I think I finished this for now...


[[1 October 2024 Tuesday]]
- Rerunning the jet clustering
- reweight hT by year ? 
	- do this without PSdata and subtracting ttbar...DONE
	- Need option for skipping PS data...Just commented out files
	- Need to make ratios... DONE
	- Adding code to apply weights... DONE

[[30 September 2024 Monday]]
- Added selJets_no_bRegCorr for btag SFs
- Fixing CI
- [>>] Split compare_datasets by year
- Debugging cut flow. errors from jit... added Exception handling
- Weird cut flow problems...MEGA debug
- Turns out a problem with overwriting bRegCor factors.
- More CI debugging... MERGED ! Subtle copying bug.


[[27 September 2024 Friday]]
- Running on synthetic datasets 00-08-00
- Running Reclusterings on **cmslpc304**
 [>] Split compare_datasets by year
- [x] why is the selJet pt biased ?
	- bRegCorr not applied to tagged or selJets (only cands)
	- Updated code ... synthetic data now looks closer

[[26 September 2024 Thursday]]
- Getting the check reclustering script going.
- Update plots.py to handle 2d histograms with multiple input files
- Making slides of data vs reclustered for all the pdfs
- Make pdfs of the splittings separately by year 00-07-03 
- Make clustering hists (noTT) on **cmslpc304** with JEC/JER  00-08-00
	- Remaking synthetic datasets with 00-08-00 on **cmslpc304**


[[25 September 2024 Wednesday]]
-  Testing declustering time with fourTag data on **cmslpc340**.... had to turn off ttbar subtraction... with 10x lower chunksize
- clustering data (noTT subtraction) on 340... 112 m
- clustering with fourTag data ... crashed.
- clustering synthetic data... ran out of memory... running w/2 workers on **cmslpc342**... too long... trying 4 workers chunksize 10_000... looks like its working...works **107m59.205s**
- Cleaning up options for processors (factorized into helper function)... DONE


[[24 September 2024 Tuesday]]
- Fine tuned histogram ranges
- Adding four tag skimmer
- Getting fourtag skimmer running
	- Need to update pico output name...DONE
- running 4b skims on **cmslpc316**... done
- Trying to run on the skims...**3m31.086s**. ! (doing SvB and top reco)
- With 3b data this is .... infinite! Fails to run!
- Update plots and slides comparing synthetic vs data
- Testing declustering time with fourTag data on **cmslpc340**.... had to turn off ttbar subtraction... crashed b/c memory


[[23 September 2024 Monday]]
- [x] Add year list option to plotting
	[>] Remake plottting to be more flexible re:hist structure ? 
	[<] PDF by year. Probably want an option of grouping them by year...
- [x] Benchmark current status of synthetic data
	- Updated script to process new syn_vX running: 
		[[Script to compare synthetic and nominal datasets]]
	- Adding ttbar plots to the nominal background samples... running out of memory with "fast" reco... trying "slow".
		- (use histAll ? ... No doesnt have top_cands..) Maybe not worth it...
- Starting to fine tune hist ranges... 
[>] Worth skimming four tag data ?


[[19 September 2024 Thursday]]
- Made nominal data (w/o TT) on **cmslpc343**
- Made nominal data wTT on **cmslpc343**
- [ ] ~~Script to make synthetic dataset yml (add PSDAta)~~
	- Will follow whats done with the mixed data instead
- [x] Script to make synthetirc datasets with different seeds
 [<] Make datasets with different seeds. 1/15
- Making Synthetic data set seed0 on **cmslpc343**
- Writing synthetic data output to EOS
- Adding SvB with out FvT weights for plotting.

[[18 September 2024 Wednesday]]
 Pushed sub-sampling working
- Remaking subsample... output on EOS... Done
- Testing all synthetic data + TT PSdata
- debugging running PS with isSynthetic flag...working
- Adding PS data to synthetic dataset via metadata file.
- Made synthetic datasets with and without PSData TT
- Making nominal data (w/o TT) on **cmslpc343**.... works 

[[17 September 2024 Tuesday]]
- [[Debugging PSdata]] code have three tag events in `-e UL16_postVFP  -p ps_data_TTToHadronic`
  --> Solved. B/c of the MC jet calibration
 - Should replace jet four vector with calibrated fourvector in psdata
	 - Done
 - [x] Need to push

[[16 September 2024 Monday]]
- Add option to script to make `ps_data` prefix to data
[<] Why are there tag events in the TT PSData ? 
- Validated the PSdata
[<] Compare synthetic + PS data data to data 

[[14 September 2024 Saturday]]
- Fixing the flags. 
- Looks like the cluster code was running the jet calibration ! (should be off)
- Fixing the CI

[[13 September 2024 Friday]]
- Testing flags for 
	- [x] Synthetic data
	- [x] PSData
	- [x] Mixed data
	- [x] TTForMixed
	- [x] 3bForMixed
	- [x] Data
	- [x] MC
- Committed first version with weights going.

[[12 September 2024 Thursday]]
- Analyzing seed 0... looks good. not sure If im seeing as much variation as I would expect. 
	- Q: how to test?
- Getting the PSData running
- Will move isMixed / isDataForMixed / ect to more granular flags and config via yaml files
- Step one: Granular flags ... Synthetic data OK / PS Data OK / 

[[11 September 2024 Wednesday]]
- Local merge
- Push/merge
- Rerunning all synthetic datasets on **cmslpc343**... **117m19.837s**
- Finish draft of MC subsampler
- Move order of MC corrections for declustering (should only affect signal cutflow)
- Got subsampler working
- Full dataset (TTbar all year) ... **11m38.034s**
- More clean up to DeCluster code 
- Remaking synthetic datasets with seed0 ...

[[10 September 2024 Tuesday]]
- Debugging cutflow.  Input events are the same.  Some of the declustered Jet Pts are different.
- wrote helper function to output debug info
- All of the input pt are the same!!
- All of the clustered pts are the same!!
- Maybe the splittings are not ordered ??? 
- The declustered jet pt are Different!... problem was with rounding 
- Fixed with rounding the eta, phi and pt values!
- Checking cutflow

[[9 September 2024 Monday]]
- Make data presentation with outputs from new code
- Remaking data inputs on **cmslpc348**
- Start code for ttbar PSdata
- [x] Add cut flow CI test for analyze test
	- Problem with seeds in candidate jet selection

[[8 September 2024 Sunday]]
- Trying to propagate sumw when skimming picos correctly
- Testing on 304... works !!!
- pushing 
- Will clean up old declustering code

[[7 September 2024 Saturday]]
- MC weights seem off.... debugging
- Found problem when apply_FvT flag set to false
- Weights now within factor of 2
- Debugging cutflows... rerunning without ttbar veto 
 [<] Why is the cutflow for UL16 off (eg: all events pass jetMult in synthetic data...)
- UL17 off b/c of problem propogating the sumw weights

[[6 September 2024 Friday]]
- cleaning code, pushed
- [x] Verify new declustering on signal
	- On Sunday
- Automated the overwriting of auxiliary jet branches ... Needed for MC/data differences
- How to remove branches from skims? 
	- A: skip_branches in config
	- Can this be done dynamically ?  think so....yes DONE
- Running the HH declustering ... failed b/c memory ? 
- Testing in tmux 335..out of memory... Retrying **cmslpc304** with 2 workers ... works **real    82m51.408s**
- save sumw2 from input metadata 
	- Done...is actually now being added when subjobs, need to just write it at end
- What about trig weights? 
	- Added trig weights to output file
- Need to propagate the btagging weights... Done
- Added CI for analyzing the synthetic datasets... Need to fix....Done
- Making signal synthetic datasets on  **cmslpc304**... ran in **82m15.656s**

[[5 September 2024 Thursday]]
- Try dictionary the do floats.. fails.
- Might be able to do arrays ?  ... Nope
- Going to strings
- Implemented the propogation of btagging scores via strings
- Testing on **346**... ran**120m3.708s**
- Running analyzer
- TTbar subtraction for nominal
- bTag weights now look good... but dont make much of a difference.

[[4 September 2024 Wednesday]]
- cleaning up code 
- Clean dumpTestVectors functions
- Now propagating the btagging scores !! (need to validate)
- Testing on **cmslpc307** ... crashes with  **RuntimeError: FIXME: handle UnionArray with more than** **127** **contents**
	- Might have to use strings instead of tuples...
- Have test script that reproduces the problem...sent mail to CL/AE

[[3 September 2024 Tuesday]]
 - remaking inputs with ttbar subtraction on **cmslpc338** 


[[30 August 2024 Friday]]
- Testing running on synthetic datasets
- Running on 304
- Finding errors during skimming:
```yaml
  data_UL16_postVFPG:
     count: 877903.0
     cutFlowFourTag:
       all: 487725.0
```
- Test if error from picosize = 10 x chunksize (running with both **100000**) **87m59.704s**
	.. See the same issue
- Now running without max_chunks = 5... Seems to fix the problem!
- Running all years without max_chunks
- Explains why I wasn't seeing all the expected 93 subjobs !
- All good now!  
- Cleaning up! .. Need to update systematics cutflow test and analysis-cutflow-job

[[29 August 2024 Thursday]]
- Trying to process picos
 [< ] Randseed via command line
- [x] Update file name based on rand seed
- Remaking input data (left off some 2016 files) ... **79m44.445s**
- Yaml errors from 
	- - !!python/tuple
      - 0
      - 103893
    - !!python/tuple
      - 103893
      - 207786
    - !!python/tuple
      - 207786
      - 311677
 [<] Script to create synthetric datasets yaml
	- Need to merge with existing dataset script to get (at least the data info)
- Testing running 
	- Running work! 
	- Need to validate wrt to previous
		- Flags for synthetic data 
		- Keep process "data" for now... Update after debugged
- Start with cutflow!!
- Adding passTTBar to cutFlow
- Running on 304
- Was using the wrong jet calibration on the data.  Rerunning the JetDeclustering (no ttbar subtraction)


[[28 August 2024 Wednesday]]
- Added ttbar subtraction to **Declusterer**
- Added hook for input random number seed
- Added random number seed to output file name 
- Added [[Reproducible Random Numbers]] for the ttbar subtraction
- Remaking picos on Running **cmslpc346**... **72m35.376s**
- Now on to processing them!

[[27 August 2024 Tuesday]]
- Debugging making of synthetic datasets
	- Testing on **cmslpc306**
- Got draft working (problem was jet_flavor as string)
	- Trying with unsigned 8-bit encoding... also fails
- Pushing first draft of make dataset script
- To Do
	[>] Add random number seed input
	[>] Add random number seed to output file name
- Now running on **cmslpc337**. data2018 took **30m9.774s**
- Running not with full Run-2
- Pushed first version: 

[[26 August 2024 Monday]]
- Starting to look into making synthetic datasets
- Skimmer test job **source .ci-workflows/skimmer-test-job.sh**  failing locally.
- Trying without --dask... works without dask!
- Questions:
	- How to turn off chunking ? Crank up picoSize ? ... fails if picoSize 10x
	- Now 10x pico size works ! only one output file... GOOD
- To Do
	- [x] Turn off unneeded branches (eg: ZHSR, SB...)
- Got first dummy draft working... now fails when declustering
- Testing on **cmslpc306**

[[24 August 2024 Saturday]]
- Fix for random numbers.
- Trying on **cmslpc337**

[[23 August 2024 Friday]]
- Checked dR results.  Working !  Looks like random numbers are not
- Trying again with old random number set up
- dR looks good now!  
- Need to fix random numbers (probably add more than just pt)
- Send slides around
- Trying with max retries set to 8...**121m1.577s**

[[22 August 2024 Thursday]]
- Back to trying to fix ΔR...
- Found a way to mask and write the jets
- Starting to impement consistent random numbers
	- Looking into code
- think I finally got the global dR working !!!!!
- Fixed a bug in the eta check of one of the bs
- Deculstering on **cmslpc305**...failed.. now on **cmslpc340**... **117m16.100s**

[[20 August 2024 Tuesday]]
- Adding ttbar subtraction ... troubles adding a cut to selev
	- Figured it out, a la binding in processor_HH4b
	- Need to read in old SvB... do ttbar veto... DONE
	- Then calculate new SvB ... DONE
	- Need to test
- Added ttbar subtraction to clustering processor 
- running clustering on **cmslpc328**  will make pdfs 00-07-02
- running the declustering on 328 ... **109m46.045s**
- Made plots with ttbar subtraction... not 

[[19 August 2024 Monday]]
update presentations with hT and top reco
- Adding a fix (?) for jet selection (int to bools) for the hT calculation 
	- Did indeed fix the hT Calculation
- Running on **cmslpc333**
- randomize assignment of deepJet scores to fix (?) top reconstruction.
	- Did indeed fix the top reconstruction!  Next to tt_vs_mj! 

[[18 August 2024 Sunday]]
- declustering all years w/slow top Can reconstruction: **123m41.618s** with 4 workers
- Added hT hists and compute properly in declustered jets
- setup top reconstruction to used declustered jets
- running again ... 

[[17 August 2024 Saturday]]
- Adding tt_vs_mj
- Turning on top reco ("fast") for declustering 
- running on **cmslpc306** ... cannot connect ... looks like ran out of memory
- re running on **cmslpc337** ... ran out of memory... Try with 2 workers on 337

[[16 August 2024 Friday]]
- Add hist to count the number of clustered jets 
- Add more PDF ranges
- Running clustering on **cmslpc306**....**108m52.381s**
- Fine tuning pdfs
- Made pdf set 00-07-01 with the ranges tuned
- Running the declustering... done **116m39.358s**
- clustered data looks great!
- Declustering signal on **cmslpc306**... **196m47.039s**

[[14 August 2024 Wednesday]]
 Declustering signal on **cmslpc308** w/ 2 workers failed... 1 worked failed :( 
- running now with 1 on **cmslpc333**.. Ran
- Adding plots to slides
- Sent first draft of slides to CMU group

[[13 August 2024 Tuesday]]
- Declustering all on **cmslpc308** finished in **109m23.402s**
- Iterating on Slides 
- Idea for [[Recursive Splitting Types]]
- Implemented new splitting scheme... 
	- only 55 splitting types before groupings
	- after groupings got it down to 21
* Rerunning clustering with new splitting scheme
* Making new PDFs 00-07-00
* Running Declustering with new PDFs
	* Looks good
* Declustering signal on **cmslpc308** ... trying 2 workers

[[12 August 2024 Monday]]
- Update declustering to use new groupings
- Declustering  2018 on...**cmslpc313** ...crashed ? ... now on **cmslpc308**
- Now running all years...**114m0.018s**
- Declustering the signal on **cmslpc308**... failed.. running with 1 worker!
- Data and Signal declustering look good!

[[10 August 2024 Saturday]]
- Making PDFs with all year, new jet multiplicity 

[[9 August 2024 Friday]]
- Fixed the extra jet treatment for clustering.
- Re:clustering Run2 on **cmslpc328** ... fails
	- Rerunning 18 only ... works **46m30.667s**
- Fixed the extra jet treatment for declustering
- making PDFs 18 with new jet def ... 00-06-00
	- **155** splittings! 
- Scheme to combine splittings.
	- 1st version of code to do groupings 155 -> 49
- Start implementing jet splitting names in the clustering.
- Running clustering with splitting categories all years on **cmslpc310** ... failed out of memory
	- Trying just 18 again...works...**47m44.662s**
	- PDFs with new grouping... 00-06-01
- Took out jet ISR cleaning ... might need to put it back!
	- PDFs with new groupings
- Added back the ISR cleaning 
- Trying all years again **cmslpc310**.. works **110m3.378s**

[[8 August 2024 Thursday]]
- Debugging `(bj)((jj)b)` splittings
	- ERROR in combine particle logic ... FIXED.
- Speed up tests by loading the ymal in init
- Making plot of clustering multiplicities
- Remaking the clustering inputs on **cmslpc314**....**101m24.461s**
- remade the PDFs 89->79 different splitting types
- Made function (and test) to calculate splitting summaries

[[7 August 2024 Wednesday]]
 Following up on signal crash when running all years (out of memory) during the synthetic datasets... 
- 2018 signal runs on OK ...  **cmslpc331** in **26m19.781s**
- Testing 2017 signal works ..  **26m53.926s**
- Testing 2016 see ERROR on **UL16_preVFP** ... debugging
	- -> problem with too small "XXXXXX" string
- Now all UL16 runs in  18m36.627s
- Running all signal samples together runs out of memory... trying with 3 workers...fails
	- Trying with 2 workers.. works !  **72m27.918s**
- Making the nominal signal for all years.. 
- data and signal all years looks good!
- Added CI to make the clustering histograms and the PDFs
- Found the slow down of the testing was do to all the pdf in 00-05-00 vs 00-03-00 !

[[6 August 2024 Tuesday]]
- Signal all years crashes b/c splitting not in the data
- Hack for missing input splittings (use the last one)
- Re-running HH4b declustering for all years ... fails
	- Seeing splitting `((bj)`  /  `(((jj)j)j)((bj)` / `40`
	- Found Errors, was overflow in "XXXX" replacement (need better fix longterm)
- Re-running HH4b declustering for all years ...  now memory leak somewhere! ?
	- ===> No, turns out much slower with 00-05-00
- Updating slides with new declustering

[[5 August 2024 Monday]]
- Cant run jobs... can do test jobs!
- Try to optimize with [[Numba]]... Not much improvement 
- Added a profiler to the test job... not clear where we can gain
- EOS back!
- Made PDFs for inclusive jet multiplicities: **jet-splitting-PDFs-00-04-00**
- Running all clustering to check detailed plots
- inclusive Declustering test job works !  with old 00-03-00 pdf
- inclusive Declustering w/ 00-04-00 pdfs  ... works fine
- inclusive declustering full 18 sample...  works with 00-04-00 !
- Bug when making inputs for 00-04-00 (random comb jet flavor order) ... remaking
- Declustered data look good !
- Declustered signal looks GOOD !!
- Scaling up clustering to all years running on **cmslpc329**... 84mins
- Making PDFs from all years  00-05-00
- Scaling up declustering to all years running on **cmslpc329**...**88m46.643s**

[[4 August 2024 Sunday]]
- running all clustering functions on **cmslpc329**
- update **make_jet_splitting_PDFs.py** to automatically plot all splittings with some rought logic as to which histograms to use
- Failure of test script...Seems like data not available at LPC
```bash
OSError: XRootD error: [ERROR] Operation expired                                 
in file root://cmseos.fnal.gov//store/user/algomez/XX4b/20231115/data2018D/picoAOD.root
```
- `> xrdcp root://cmseos.fnal.gov//store/user/algomez/XX4b/20231115/data2018D/picoAOD.root .` fails 
- So does `eosls /store/user/algomez/XX4b/20231115/data2018D/`

[[3 August 2024 Saturday]]
 - cluster all jets run with 4 workers after
- Added logic to only plot splittings that are part of non-ISR splittings
	- Had 144 splittings types before ---> now 66
- Added details clustering plots
- update **make_jet_splitting_PDFs.py** to only expect basic clustering plots
- new script (**jet_splitting_study.py** ) to process detailed plots

 [[2 August 2024 Friday]] (Evening Session)
 tried clustering with upto 8 jets ... No problem on test job!
- tried clustering with no nJet limit ...No problem on test job!
- Running all clustering on **cmslpc329**
	- ran our of memory with 4 workers... trying 3 (also failed) ... trying 2
	- Problem was too many histograms (reduced) now trying 2 workers ... WORKs
	- Now trying again with 4 ... Works !
- Added recursive function to get all the sub-splittings from a given splitting.. will us to reduce the number of splittings I need to plot.

[[2 August 2024 Friday]]
- Made **make_jet_splitting_PDFs.py** robust against changing cuts in the histogram file.
- Cleaned configuration of splittings: needed when many varieties
- make input pdfs for 4b + 0,1,2j : **jet-splitting-PDFs-00-03-00**
- Start working on iterative ISR declustering
	- Got it going ... Easier than I thought.
- Check the reclustered splittings.
	- Running out of Memory..trying with 2 cores
	- Fixed, problem was not the n_cores but there was another stopped job
	- tmux on **cmslpc312**
- Now try to do the declustering with 4b+0,1,2j...
	- problem with 5 bjets... fixed: bug in the min dR ISR-jet to splitting
	- tmux on **cmslpc329**
	- Looks DAMN GOOD !!!!  Both data and signal ! LETS GO!!!
	- Think its time to go in steps of +2 jets.. 

[[1 August 2024 Thursday]]
- fix children_jet_flavors to deal with (XX)Y combinations
- Added unittest
- simplified ISR definition (anything splitting that doesnt have bs on both sides is ISR)
- debugging particle order
- Adding nice unit test to verify (FINDING BUGS!!!!)
- Cleaning the parentheses form the children jet flavors
- Now need recursive clean_ISR
	`['bb', '(bb)(jj)'] -> with ISR cleaning ['bb', 'bb', 'jj']
- clustering test job failing ! 
	- Runs in debug... think im running out of memory !!!

[[31 July 2024 Wednesday]]
- got cleanISR to be able to clean more than one type
- Weird s -> str(s) changes (maybe b/c the container changed?)
- made signal plots for new mixing scheme (LOOKS DAMN GOOD!!!!)

[[30 July 2024 Tuesday]]
- Adding plots comparing the input jets to the declustered jets
- Adding b(bj) test to the jet_clustering test script.
-  Found the b(bj) bug!  
- was not assigning jet_flavor correctly when declustering.
- More 4b: Comparing the synthetic data sets in different jet bins.
- test for cleanISR
- will clean bj splittings. 

[[29 July 2024 Monday]]
- LPC very slow today... trying another node 330  (was 334)
- Debugging b(bj) splittings
- Testing the PDFs vs pt
- Writting out jet_splitting inputs for Berman
- Sent Berman input data for splittings_bb

[[25 July 2024 Thursday]]
- Will test the vs pt pdfs


[[22 July 24 Monday]]
- Working the [[script to compare the splittings]]
- Working [[Script to check reclustered splittings]]
- Need to understand [[ResamplingBug]]

[[28 June 2024]]
- Got PDFs for all splittings
- ISR removal ( - [>>] recursive )
- Got 5j code running ! 

[[27 June 2024]]
- [x] Stop clustering when trying to combine >2 bs 
- [>>]  Clean ISR (eg: j(bb) -> j + (bb))

[[25 June 2024]]
- Pt orderings
- cleaned up code
- Added plots
- slides ~done

[[22 June 2024]]
- Add clustering test to CI
- Add PDFs (nes folder)

[[21 June 2024]]
- Pt dependence not such big improvement
- checking η-dependence 
- [x] Recluster declustered jets
- [<<] ML for jet splitting lookup?
- Bug in setting m-> 0 
- Adding clustering of declustered jets
- Now have a solid baseline !!!
- Next is pushing on slides.

[[20 June 2024]]
- [x] Try to cluster the Declustered jets
	- See where the residual differences are?
- Getting 2D sampling going!
- Make PDFs vs PT ... will try this next
- Getting plots vs pt going

[[19 June 2024]]
- Getting the declustering processor going! 
- [x] Need to speed it up
- [x] Error in φ, need to rotate to jet φ
- [<<] Add test of all declustering
- [x] Asymmetric lead phi
- [x] make plot script
- fixed phi error
- plots nominal vs declustered!
- Fixed asymmetric Δφ
- made plot script
- cleaned up PDF making
- Added loop to retry failing η adn pT

[[18 June 2024]]
- [x] b* clustering make sure g_bb is {A or B}...B
- [x] Set g_bb m->0 in b*
- Lots of [[Jet DeClustering]]
- [x] understood z_A (g_bb vs b*)
- [>>] propogate flavor when declustering
- [x] replace b* jets w/original

[[17 June 2024]]
- [x] test 1d Sampling
- [>>] test 2d sampling

[[14 June 2024]]
- Adding hists
- Tried to speed it up ... no luck

[[13 June 2024]]
- Lots of good work 
- SOLID PROGRESS!!!
- This will work

[[11 June 2024]]
- Have clustering alg! ... validated 
- [>>] Hists 
- [>>] Sampling
- [>>] unclustering alg
- [>>] event ΔR checks

[[7 June 2024]]
- Check for mass correlations

[[3 June 2024]]
- cluster w/R? or until g→bb... will do until g→bb
- py ? / old c++ / new c++ ... will do py
- Read "Lund Jet Plane"
- Set up skeleton





# Archive:

## Plan
- [x] 4b + 0j
- [x] 4b + 1j
- [x] 4b + 2j
- [x] 4b + Xj
- [x] Scale years clustering
- [x] Scale years declustering
	- [ ] PDFs by year ?
- [x] use all non-b jets
	- [x] pt/eta cuts only on the b-jets

## To Do: 
- [x] Compare synthetic vs nominal
	- [x] 4b + 0j
	- [x] 4b + 1j
	- [x] 4b + 2j
	- [x] 4b + Xj
- [x] Run jet multiplicities together / Plots separate 
- [x] Recursive ISR removal (Needed for 4b + >1j)
	- [x] `['bb', '(bb)(jj)'] -> with ISR cleaning ['bb', 'bb', 'jj']
- [x] Script to compare cluster vs reclusterd
- [x] scripts to compare splitting functions
- [ ] ~~Script to compare splitting functions in jet multiplicities~~
- [ ] ~~Write out picos with clustered jets (write CI)
- [x] CI for code to make the clustering histograms
- [x] Fix the extra jet treatment (for now copy jets < 40 and add new jets)
	- [x] Or just do splitting for all jets > 20 GeV
	- [x] update recursion to only check if bjet pt > 40 GeV
- [x] Add a dR AB > 0.4 check
- [x] [[bj pt mismodeling]]
- [x] Do mass based on jet flavor ?  (mA vs mB in pt bins?)
- [x] use jet_flavor when declustering (eg: part_A is b in bj / or has the larger combination ect) 
- [x] fix mB in b(bj) 
- [x] [[6 jet clean ISR bugs]]
- [x] ISR is everything but (b+x) + (b+x) splittings!!!!
- [x] Test script crashing b/c of memory
	- [x] When max 2 extra jets / Running with 1 worker fixes it
	- [x] Now think this was b/c I was making too many hists! / back to 4 workers
	- [x] Swap memory -> 0 / Maybe faster using 2 workers ? A: no it doesnt! 
- [x] Reduce memory!
	- [x] Remove unneeded histograms 
	- [x] Only write out splittings we need
- [x] Add back detailed splittting hists
	- [x] option to turn them on/off
- [x] PDF script to only rely on trimmed histograms
	- [x] separate study_splitting_fuctions from make_PDFs
	- [x] plot the splitting type multiplicity
- [x] Seeing types
	- `(bj)((jj)b)` and `((jj)b)(bj)`
- [x] Update presentation with inclusive sample and all years
	- [x] [[Dressed Bjets]]
- [ ] ~~Proper Protection from missing splitting ? 
- [x] pdflatex for dataset comparisions
- [x] Group rare splitting types to reduce total numbers / speed
	- [x] Function to get splitting summary statistics
	- [x] Update declustering to get splitting name from jet_flavor
- [x] Add other jets to presentation
- [x] Regroup splittings (<10)



- [x] Check ΔRs (HARD!)
- [x] Fix random numbers
- [x] Fix jet_flavor == "b" Hacks
- [ x] ~~[[clean splittings during clustering]], so only plot those actually used 
- [x] Compute fractions of dressed b splittings: 2g->bb vs g->bb + b + b
- [x] Template Fixes
	- [x] Script to plot all the 1D marginals for all the splittings
	- [x] Option for mA_vl and mB_vl
- [x] Add top candidate making to declustered data
- [x] How are there any b-jets with m > 50 GeV ? (given the template cut off)
	==> A: Form the (bb) + b + b + X  events
- [x] Add hists of ptt / (ptt + pmj)
	- [x] try this as DvT
- [x] Add hT hist 
- [x] Recalc HT
- [x] Random number for BTagging (sorting fucking up top reconstruction ?)
	 A: Yes ! it was.  now fixed
- [x] Is there a problem with jet phis ?  Why discontinuous ?
	- THink its Ok, added histograms with larger range
- [x] Add sanity check for number of sel jets

- [x] Compare splittings by year
	- [x]  Cluster PDFs by year. (Probably want an option of grouping them by year...)
	- [x] check performance 
- [x] Write out picos with the synthetic datasets jet
	- [x] Add random number seed input
	- [x] Add random number seed to output file name
	- [x] Test processor HH4b on output files
	- [x] Add CI
	- [x] Randseed via command line
		- [x] Separate script that creates input files and submits jobs
	- [x] Yaml errors from skimming output 
	- [x] Script to create synthetric datasets yaml
		- Need to merge with existing dataset script to get (at least the data info)
	- [x] Output picos to EOS 
- [x] [[bj pt mismodeling]]
- [x] [[bj splitting mismodelings]]
- [x] What happens to pt overflows in the clustering ?
	- Gets the overflow
- [x] TTbar Subtractions/ Additions
	- [x] Subtract ttbar from Templates
	- [x] Subtract ttbar from Input data being clustered
	- [x] Then add back non declustered TTbar
		- [x] Compare ttbar subtracted + PSdata to nominal
	- [x] Or compare to ttbar subtracted data ? 
- [x] Skimmer to make sub-sampled TTbar datasets
	- [x]  Why is there tag in the TT PSData ? 
	- [x] Compare synthetic + PS data data to data 
- [x] Propagate Btagging scores ?
	- [x] Migrate to strings
- [x] Money plots
	- 3b no FvT vs Data vs Synthetic Data
- [ ] ~~run clustering on ttbar MC ?






## Template Fixes
- [x]  mA_vs_pT -> 100 bins
- [x] b(bj) mB -> mB_l



# Links: 

[[Cluster Run 3 data]]

[[CMS]]
[[physics]]
[[ABCDMethod]]
[[Jet DeClustering Algorithm]]


202407091049
