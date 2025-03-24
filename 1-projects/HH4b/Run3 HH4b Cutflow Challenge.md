

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
