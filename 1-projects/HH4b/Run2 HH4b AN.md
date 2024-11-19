Official version: https://cms.cern.ch/iCMS/jsp/db_notes/noteInfo.jsp?cmsnoteid=CMS%20AN-2024/089
Twiki: https://twiki.cern.ch/twiki/bin/view/CMSPublic/Run2HH4b

# To do

Cut a v3: 
- [ ] Fix binning
- [x] ggHbb 3b w/o and w JCM
- [ ] Finalize L3 comments
- [ ] Add to AN
	- [ ] (AE) Add Boosted / Resolved discussion
	- [ ] (AE) prefit plots + impact/pulls with asimov data 
	- [ ] (AE) plots per year ( to appendix T)
	- [ ] (AE) refit  ZZ/ZH sensitivity (should actually improve with ensembeling )
	- [ ] Blinded prefit plots (JA)



Towards v4
- [ ] Update nominal background for k-folding
- [ ] cutflow hists
- [ ] Try new SvB classifier for kλ
- [ ]  Redo plots with new JCM ?
- [ ] Try to Correct bias from ZZ region (?)
- [ ] Add to AN
    - [ ] Update plots with new code
	    - [x] fig 32 (Problem with ttbar Fraction)
	    - [x] 33 (From JCM Fits)
	    - [x] 34 (Need to add nPseudoTagJets)
	    - [x] 36 - 40 are (No FvT plots)
	    - [x] 42 - 49 (FvT Plots)
	    - [ ] 72 Mixed data summary plots
	    - [ ] 91-93 (From Combine)
	    - [x] 98
	    - [ ] 99 - 101 (From Combine)
	- [ ] Add κλ scan


# Daily Logs

[[14 November 2024 Thursday]]
Looking into ggHbb
- `python runner.py -p analysis/processors/processor_HH4b.py -y UL18 -d ttHbb ggHbb -c analysis/metadata/HH4b_rareBkgs.yml -o test_ttHbb_ggHbb.coffea -op hists/`
- too slow... changed top reco to fast and now only running ggHbb
- `python runner.py -p analysis/processors/processor_HH4b.py -y UL18 -d ggHbb -c analysis/metadata/HH4b_rareBkgs.yml -o test_ggHbb.coffea -op hists/`
- print cut flow with `python analysis/printCutFlow.py  -i hists/test_ggHbb.coffea -p ggHbb -e UL18`
- HACKING the trigger bit requirement
- Debugging the noFvT weights.. found errror.. Fixing...
- Make new ggHbb plots...sent to Marko
 [>>] Update AN and twiki


[[15 November 2024 Friday]]
- [x] Update AN and twiki with ggHbb
- script to make plots from histAll.coffea
- `python analysis/makePlotsAN.py hists/ANv3/histAll.coffea --out hists/ANv3/plots`
 [>>] Bkg stat uncertianty in ratio band ?
 [>>] Add nPseudoTagJets plot
 [>>] Setup noFvT pipeline
 [>>] Why is canJet Phi 0-pi ?


[[16 November 2024 Saturday]]
- Making noFvT plots on 340
- Make noFvT hists 
	- `python runner.py -d data TTToHadronic TTToSemiLeptonic TTTo2L2Nu ZZ4b ZH4b GluGluToHHTo4B_cHHH1 -c analysis/metadata/HH4b_noFvT.yml   -p analysis/processors/processor_HH4b.py  -y UL17 UL18 UL16_preVFP UL16_postVFP -o histAll_noFvT.coffea -op hists/`
- Making noFvT Plots
	- `python -i analysis/makePlotsAN_noFvT.py hists/ANv3/histAll_noFvT.coffea --out hists/ANv3/plots_noFvT -m analysis/metadata/plotsAllNoFvT.yml `
- Added noFVT plots to AN
- Updating JCM fits
	- `python analysis/make_weights.py -o testJCM_Coffea -c passPreSel -r SB -i hists/histAll_noFvT.coffea `
	- `python analysis/make_weights.py -o testJCM_Coffea_fix_e -c passPreSel -r SB -i hists/histAll_noFvT.coffea  -fix_e`
	- `python analysis/make_weights.py -o testJCM_Coffea_fix_d -c passPreSel -r SB -i hists/histAll_noFvT.coffea  -fix_d`
	- Adding fit data to JCM plots
- Updated JCM plots in AN
- Adding nPSjet hists
- Updating plots pre JCM:  (got mu_QCD from the JCM fit)
- `python  analysis/makePlotsAN_noFvT_muQCD.py hists/ANv3/histAll_noFvT.coffea --out hists/ANv3/plots_noFvT_muQCD -m analysis/metadata/plotsAllNoFvT_muQCD.yml`


# Follow-ups


# Links: 



202411141049
