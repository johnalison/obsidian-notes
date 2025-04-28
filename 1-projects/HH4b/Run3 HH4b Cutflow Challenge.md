

# Mail from Marina 

Please find below the (lxplus) path to the 2022EE NTuples:

/afs/[cern.ch/user/m/mkolosov/public/forJohn/data_2022_postEE_0_tree.root](http://cern.ch/user/m/mkolosov/public/forJohn/data_2022_postEE_0_tree.root)

To get the events in the 4b(>=3bT) control region you'd need to apply the following selections:
- (avgbdisc_twoldgbdiscjets > 0.65)
- (dHH_HH_regmass > 350)

And then apply the 4b(>=3bT) mask:

MASK_4b: (dHH_NbtagM == 4) & (dHH_NbtagT >= 3)

HM: np.stack([dHH_H1_regmass, dHH_H2_regmass], axis=1)
AR_center: '125, 120' 
AR_dHM: np.sum( (HM - AR_center)**2, axis=1 )**0.5

and the CR mask:
ACR: (AR_dHM >= 30) & (AR_dHM < 55)


# Logs

## [[21 April 2025 Monday]]
 [[Run-3 4b skims]]
- checking which file has the run I care about
- `dasgoclient --query="run dataset=/JetMET/Run2022C-22Sep2023-v1/NANOAOD"`
- `> python runner.py -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b.yml -y 2022_preEE -d data -e B  -op skimmer/metadata/ -o picoaod_datasets_data_2022_preEE_debug.yml -m metadata/datasets_HH4b_Run3.yml --condor`
- Running on **cmslpc332**
- Adding debugging output

## [[15 April 2025 Tuesday]]
- Impletented the Run3 case when dhh < 30 GeV
- Remade pkl inputs
- Now better agreement! 
	- Before:
		`Total number of missing events: 11690 (47.79% of total events)`
		`Total number of extra events: 4918 (27.81% of total events)`
	- Now:
		`Total number of missing events: 8426 (34.45% of total events)`
		`Total number of extra events: 2706 (14.44% of total events)`
- Eg: `Run 355872: 99 missing events
  `First 5 missing events: [228793492, 993131619, 994362241, 994277091, 1003079747, 1007831198, 1141642728, 1145575379, 1145596930, 1086081738]`


## [[14 April 2025 Monday]]
- Yes, we follow the method used in HIG-20-005 ( [https://gitlab.cern.ch/mkolosov/hh4b_run3/-/blob/run2/python/producers/hh4bTreeProducer.py?ref_type=heads#L3350](https://gitlab.cern.ch/mkolosov/hh4b_run3/-/blob/run2/python/producers/hh4bTreeProducer.py?ref_type=heads#L3350) )  in which : 
	if the difference of the minimum and second minimum distance from the diagonal is less than 30, we choose the pair that has the maximum H1 pT in the 4-jet center-of-mass frame.
- Implementing mhh < 30 check
- `python -m unittest analysis.tests.quadjet_test.quadJetTestCase`

## [[11 April 2025 Friday]]
- finding events... 
- Most (70%) missing the skimmer. 
- lxplus down...not down just slow
- Finding problem events... printing out the jet four vectors

## [[9 April 2025 Wednesday]]
- adding `event` and `run` to the skim
- 50% of events different !
- run `355872`: 94 missing events
  First 10 missing events: `[228793492, 993131619, 994277091, 995618735, 1003079747, 1145575379, 917646697, 1086081738, 276519899, 321185192 ... 
  - `python runner.py   -o synthetic_data_Run3_v8_debug_seedXXX.coffea -d data  -p analysis/processors/processor_HH4b.py -y 2022_preEE   -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v8.yml`
- Errors with running in cofffea ... debugging (in Cursor! )

## [[8 April 2025 Tuesday]]
- made python script to read Marinas file (Cursor !!!)
	- ` /Users/johnda/CMSWork/hh4b/coffea4bees/python/analysis > py process_event_numbers.py `
- re-Making my pkl file: 
	- `python runner.py  -o synthetic_data_Run3_v8_debug_seedXXX.coffea -d data synthetic_data -p analysis/processors/processor_HH4b.py -y 2022_preEE   -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v8.yml`
- Marina's file has all the data events... How to get only the 4b CR events ? pinged her
- Got instructions for CR events
- skipping the input file for 4Tag events
- fighting with trying to filter the 4b events

## [[31 March 2025 Monday]]
- Marina's cutflow is off
	- requested events/run list
	- [>>] Compare Events


## [[17 March 2025 Monday]]
- added pt_raw to debug output 
- remade pkl file for Marina... sent 

## [[14 March 2025 Friday]]
-  Fixed Cutflow for Marina 
- Add was only including one data Era
- [x] Add other eras
- [x] Add other Pt corrections
- sent

## [[13 March 2025 Thursday]]
- Implementing Run3 Selection
- Working cutflow ... got unit test working
- Adding dhh min
- [x] Synch Higgs Candidate Selection
- Making Cut flow for Marina:
	- `python runner.py  -o synthetic_data_Run3_v8_debug_seedXXX.coffea -d data synthetic_data -p analysis/processors/processor_HH4b.py -y 2022_preEE   -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v8.yml`
- Make output files for Marina
	- `python analysis/debugRun3SyntheticData.py output/synthetic_dataset_analyze_all/synthetic_data_Run3_v8_debug_seedXXX.coffea`
- Sent cutflow to Marina
- Running plots for data vs synthetic 

## [[12 March 2025 Wednesday]]
- Implementing Run3 selection
- From Marina: 
	- Code: https://gitlab.cern.ch/mkolosov/hh4b_run3/-/blob/run2/python/producers/hh4bTreeProducer.py?ref_type=heads
	- Config: https://gitlab.cern.ch/mkolosov/hh4b_run3/-/blob/run2/run/configs/2021/main/run3_2021_0L_PNet_MinDiag_Jets_4j35_2bj30_dHHjw30.yaml?ref_type=heads
- [x] Synch Lepton Definition
- [>>] Synch Higgs Candidate Selection
- Synched Electrons
- Synched Muons:
- Testing with 
	   - `time python runner.py -t -o synthetic_data_Run3_2022_preEE.coffea -d data -p analysis/processors/processor_HH4b.py -y 2022_preEE   -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v6.yml`
- Trying test case
	- `python -m unittest analysis.tests.quadjet_test.quadJetTestCase`

## [[7 January 2025 Tuesday]]
- output event list for florida
	- `python debug_HHRun3.py`
- Outputting our preSelection event list
	- `time python runner.py -o data_Run3_2022_EE.coffea -d data -p analysis/processors/processor_HH4b.py -y 2022_EE   -op hists -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v4.yml`
- [x] Ask Marina to compare unblinded inclusive 4b counts... Maybe normalization is CR acceptance difference 
- Made our event numbers list
- `python analysis/debugRun3CutFlow.py  hists/data_Run3_2022_EE.coffea`
- Only missing ~1% of events
- Some differences in jet and b-jet multiplicities


## [[6 January 2025 Monday]]
- Copied File from marina to 
	`root://cmseos.fnal.gov//store/user/jda102/debugRun3HH/data_2022_postEE_0_tree.root`
- Chat GPT to write uproot program
- Wrote out a pkl file with the events and lumis
- Make pickle of events passing 4jets selection

# Follow-ups


# Links: 



202501061122
