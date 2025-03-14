

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

[[7 January 2025 Tuesday]]
- output event list for florida
	- `python debug_HHRun3.py`
- Outputting our preSelection event list
	- `time python runner.py -o data_Run3_2022_EE.coffea -d data -p analysis/processors/processor_HH4b.py -y 2022_EE   -op hists -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_v4.yml`
- [x] Ask Marina to compare unblinded inclusive 4b counts... Maybe normalization is CR acceptance difference 
- Made our event numbers list
- `python analysis/debugRun3CutFlow.py  hists/data_Run3_2022_EE.coffea`
- Only missing ~1% of events
- Some differences in jet and b-jet multiplicities


[[6 January 2025 Monday]]
- Copied File from marina to 
	`root://cmseos.fnal.gov//store/user/jda102/debugRun3HH/data_2022_postEE_0_tree.root`
- Chat GPT to write uproot program
- Wrote out a pkl file with the events and lumis
- Make pickle of events passing 4jets selection

# Follow-ups


# Links: 



202501061122
