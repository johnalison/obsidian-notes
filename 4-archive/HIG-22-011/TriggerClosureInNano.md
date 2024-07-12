# run on 4b VHH MC

2018

`nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/ZHHTo4B_CV_1_0_C2V_1_0_C3_1_0_2018.txt  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histDetailLevel fourTag.allEvents.passMDRs.passMjjOth.trigStudy --histFile hists_TrigStudy.root  --doTrigEmulation  nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/WHHTo4B_CV_1_0_C2V_1_0_C3_1_0_2018.txt  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histDetailLevel fourTag.allEvents.passMDRs.passMjjOth.trigStudy --histFile hists_TrigStudy.root  --doTrigEmulation`

2017

`nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/ZHHTo4B_CV_1_0_C2V_1_0_C3_1_0_2017.txt  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2017 --bTag 0.6  --bTagSF -l 36.7e3 --isMC  --histDetailLevel fourTag.allEvents.passMDRs.passMjjOth.trigStudy --histFile hists_TrigStudy.root  -r -j closureTests/UL//weights/dataRunII/jetCombinatoricModel_SB_03-00-00.txt --doTrigEmulation  nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/WHHTo4B_CV_1_0_C2V_1_0_C3_1_0_2017.txt  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2017 --bTag 0.6  --bTagSF -l 36.7e3 --isMC  --histDetailLevel fourTag.allEvents.passMDRs.passMjjOth.trigStudy --histFile hists_TrigStudy.root  -r -j closureTests/UL//weights/dataRunII/jetCombinatoricModel_SB_03-00-00.txt --doTrigEmulation`





# run on 4b ZH MC

2018

`nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/ZH4b2018.txt  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histDetailLevel fourTag.allEvents.passMDRs.trigStudy --histFile hists_TrigStudy.root  -r -j closureTests/UL//weights/dataRunII/jetCombinatoricModel_SB_03-00-00.txt --doTrigEmulation`

2017

`nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/ZH4b2017.txt  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2017 --bTag 0.6  --bTagSF -l 36.7e3 --isMC  --histDetailLevel fourTag.allEvents.passMDRs.trigStudy --histFile hists_TrigStudy.root  -r -j closureTests/UL//weights/dataRunII/jetCombinatoricModel_SB_03-00-00.txt --doTrigEmulation`

2016

`nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/ZH4b2016.txt  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2016 --bTag 0.6  --bTagSF -l 36.0e3 --isMC  --histDetailLevel fourTag.allEvents.passMDRs.trigStudy --histFile hists_TrigStudy.root  -r -j closureTests/UL//weights/dataRunII/jetCombinatoricModel_SB_03-00-00.txt --doTrigEmulation`





# run on 4b ttbar MC

2018

`nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/TTToHadronic2018_4b_wJCM.txt  --inputWeightFiles closureTests/UL//fileLists/TTToHadronic2018_4b_wJCM_SvB_FvT.txt -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histFile hists_4b_wFvT_Nominal_TrigStudy.root --histDetailLevel fourTag.passMDRs.trigStudy --jcmNameLoad Nominal -r --FvTName FvT_Nominal  --doTrigEmulation`

2017

`nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/TTToHadronic2017_4b_wJCM.txt  --inputWeightFiles closureTests/UL//fileLists/TTToHadronic2017_4b_wJCM_SvB_FvT.txt -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2017 --bTag 0.6  --bTagSF -l 36.7e3 --isMC  --histFile hists_4b_wFvT_Nominal_TrigStudy.root --histDetailLevel fourTag.passMDRs.trigStudy --jcmNameLoad Nominal -r --FvTName FvT_Nominal --doTrigEmulation`

2016

`nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/TTToHadronic2016_preVFP_4b_wJCM.txt  --inputWeightFiles closureTests/UL//fileLists/TTToHadronic2016_preVFP_4b_wJCM_SvB_FvT.txt -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2016 --bTag 0.6  --bTagSF -l 19.5e3 --isMC  --histFile hists_4b_wFvT_Nominal_TrigStudy.root --histDetailLevel fourTag.passMDRs.trigStudy --jcmNameLoad Nominal -r --FvTName FvT_Nominal --doTrigEmulation  nTupleAnalysis ZZ4b/nTupleAnalysis/scripts/nTupleAnalysis_cfg.py -i closureTests/UL//fileLists/TTToHadronic2016_postVFP_4b_wJCM.txt  --inputWeightFiles closureTests/UL//fileLists/TTToHadronic2016_postVFP_4b_wJCM_SvB_FvT.txt -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/UL/  -p NONE  -y 2016 --bTag 0.6  --bTagSF -l 16.5e3 --isMC  --histFile hists_4b_wFvT_Nominal_TrigStudy.root --histDetailLevel fourTag.passMDRs.trigStudy --jcmNameLoad Nominal -r --FvTName FvT_Nominal --doTrigEmulation`





# run on MC (Too slow and not as relevant)

**2018**

`tTbarNTupleAnalysis ZZ4b/nTupleAnalysis/scripts/tTbarAnalysis_cfg.py -i closureTests/TTStudy//fileLists/TTTo2L2Nu2018.txt -p None  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/TTStudy/ -y 2018 --bTag 0.6  --bTagSF -l 60.0e3 --isMC  --histDetailLevel allEvents.passPreSel.passEMuSel.passMuSel.allMeT.triggerStudy  --histFile hists_TrigStudy.root  --nevents 1000000 --doTrigEmulation`

**2017**

`tTbarNTupleAnalysis ZZ4b/nTupleAnalysis/scripts/tTbarAnalysis_cfg.py -i closureTests/TTStudy//fileLists/TTTo2L2Nu2017.txt -p None  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/TTStudy/ -y 2017 --bTag 0.6  --bTagSF -l 36.7e3 --isMC  --histDetailLevel allEvents.passPreSel.passEMuSel.passMuSel.allMeT.triggerStudy  --histFile hists_TrigStudy.root  --nevents 100000 --doTrigEmulation`



**2016**

```
tTbarNTupleAnalysis ZZ4b/nTupleAnalysis/scripts/tTbarAnalysis_cfg.py -i closureTests/TTStudy//fileLists/TTTo2L2Nu2016_postVFP.txt -p None  -o root://cmseos.fnal.gov//store/user/jda102/condor/ZH4b/TTStudy/ -y 2016 --bTag 0.6  --bTagSF -l 16.5e3 --isMC  --histDetailLevel allEvents.passPreSel.passEMuSel.passMuSel.allMeT.triggerStudy  --histFile hist_TrigStudy.root --nevents 100000 --doTrigEmulation
```


## Links: 
[[HIG-22-011]]



202407121526
