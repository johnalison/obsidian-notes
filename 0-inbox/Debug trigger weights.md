Need to run in an el7 container:
**cmssw-el7 -p --bind `readlink $HOME` --bind `readlink -f ${HOME}/nobackup/` --bind /uscms_data --bind /cvmfs -- /bin/bash -l**

Seems to work

Commands: 
``py ZZ4b/nTupleAnalysis/scripts/makeULClosure.py --addTriggerWeights -c``

```bash
nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i ZZ4b/fileLists/GluGluToHHTo4B_cHHH02018.txt -p picoAOD_wTrigWeights.root  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/ULTrig/ -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histDetailLevel allEvents.passPreSel.threeTag.fourTag  --histFile hists.root --calcTrigWeights --onlyEventsTree
```

## Follow-ups


## Links: 



202409171150
