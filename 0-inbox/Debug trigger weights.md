Need to run in an el7 container:

```bash
cmssw-el7 -p --bind `readlink $HOME` --bind `readlink -f ${HOME}/nobackup/` --bind /uscms_data --bind /cvmfs -- /bin/bash -l
```

Seems to work

Commands: 
``py ZZ4b/nTupleAnalysis/scripts/makeULClosure.py --addTriggerWeights -c``

```bash
nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i ZZ4b/fileLists/GluGluToHHTo4B_cHHH02018.txt -p picoAOD_wTrigWeights.root  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/ULTrig/ -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histDetailLevel allEvents.passPreSel.threeTag.fourTag  --histFile hists.root --calcTrigWeights --onlyEventsTree
```

nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i ZZ4b/fileLists/GluGluToHHTo4B_cHHH02018.txt -p picoAOD_wTrigWeights.root  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/ULTrig/ -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histDetailLevel allEvents.passPreSel.threeTag.fourTag  --histFile hists.root --calcTrigWeights --onlyEventsTree


nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i ZZ4b/fileLists/GluGluToHHTo4B_cHHH12018.txt -p picoAOD_wTrigWeights.root  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/ULTrig/ -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histDetailLevel allEvents.passPreSel.threeTag.fourTag  --histFile hists.root --calcTrigWeights --onlyEventsTree --nevents 100

# Debuging
python: 
**event is [63163, 63171, 63161, 63175, 63198, 63246, 63247, 63271, 63276, 63273]**
 **hT  is [791, 342, 444, 847, 571, 1.13e+03, 543, 660, 384, 470]**
 trig_weight_data  is [0.99, 0.09, 0.67, 0.97, 0.89, 0.95, 0.88, 1.0, 0.33, 0.92]
                    1       0.4.    0.5         1       1.    0.7        1.  0.9. 0.5       1 


c++: 
ht: 793.688,  **338.375**,  **440.375**,  **928.25**, **576.375**, **1122**, **538.375**, **654.781**, 383.156, 469.125
trig_weight_data: 1, 0.4, 0.5 1, 1
## Follow-ups


## Links: 



202409171150
