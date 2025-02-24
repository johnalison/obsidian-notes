Official version: https://cms.cern.ch/iCMS/jsp/db_notes/noteInfo.jsp?cmsnoteid=CMS%20AN-2024/089
Twiki: https://twiki.cern.ch/twiki/bin/view/CMSPublic/Run2HH4b



# Figure Updates from L2
- [ ] fig5 plots for the other signal samples.
	- Probably need a way of making 2-8 in new code
- [ ] fig 9 split by year
- [x] 1D mass projections of SR and SB
- [ ] Add chuyuan's studies in an appendix
- [ ] Fig. 51 (hemisphere summary variables): for different jet bins
- [x] Add regions to fig 69 and 70
- [ ] Add SvB for ZZ and ZH in the SR

# To do
- [x] L3 comments v2
- [ ] Need new background model
- [x] Whats wrong with mixed data fits ?
	- [x] Repeate Closure with old SvB
- [x] What is up with PS FSR ?
	- [[Hbb Reclustering Project]]

Towards v4
- [ ] Update nominal background for k-folding
- [ ] cutflow hists
- [x] Try new SvB classifier for kλ
- [ ]  Redo plots with new JCM ?
- [ ] Re do FvT fits with new code
- [ ] ~~Try to Correct bias from ZZ region (?)~~
- [x] Add to AN
	- [x] Add κλ scan

# Scripts to make plots


`python plots/makePlotsMixedVsDataVs3b.py --comb plots/ANv3/histAll_noFvT.coffea plots/ANv3/histMixedData.coffea  -m plots/metadata/plotMixedVsDataVs3b.yml --out plotsANv3/mixedVsDataVs3b`

- `python analysis/makePlotsAN.py hists/ANv3/histAll.coffea --out hists/ANv3/plots

-  `python -i analysis/makePlotsAN_noFvT.py hists/ANv3/histAll_noFvT.coffea --out hists/ANv3/plots_noFvT -m analysis/metadata/plotsAllNoFvT.yml `

-  `python analysis/makePlotsMixedVsDataVs3b.py --comb hists/ANv3/histAll_noFvT.coffea hists/ANv3/histMixedData.coffea  -m analysis/metadata/plotMixedVsDataVs3b.yml --out hists/ANv3/mixedVsDataVs3b`

- `python  analysis/makePlotsAN_noFvT_muQCD.py hists/ANv3/histAll_noFvT.coffea --out hists/ANv3/plots_noFvT_muQCD -m analysis/metadata/plotsAllNoFvT_muQCD.yml`
# Daily Logs

[[21 February 2025 Friday]]
- Make comparison of 1d projections of masses, added to Twiki
- [x] Need to update **makePlotsMixedVsDataVs3b.py** 
- Updated figures 69 and 70 with region names.



[[13 November 2024 Wednesday]]
 [>>] HIstograms to cutflow
- [x] colors
 [>>] ggHbb 3b w/o and w JCM


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


[[20 November 2024 Wednesday]]
- Working the mixed data summary plots
- Running on **cmslpc336**
- `source  .ci-workflows/analysis-mixed-all.sh`
- Found bug with multi-jet weights for mixed background ... 
- Fixing CI... after merge with johnda/master
- Fixed CI ... now mixed cutflow fails !! 
- Now to mixed data summary plots
- ` python -i analysis/iPlot.py --comb hists/ANv3/histAll_noFvT.coffea hists/ANv3/histMixedData.coffea  -m analysis/metadata/plotMixedVsDataVs3b.yml`
- `python analysis/makePlotsMixedVsDataVs3b.py --comb hists/ANv3/histAll_noFvT.coffea hists/ANv3/histMixedData.coffea  -m analysis/metadata/plotMixedVsDataVs3b.yml --out hists/ANv3/mixedVsDataVs3b`
 [>>] Function for processing stack dict in `base_class/plots`
 [>>] Debug `data_3b_for_mixed` cutflow
-  Added debugging output to outfile... Rerunning CI...

[[21 November 2024 Thursday]]
- Got mixed ave and v0 plots running.
- Stats ratio error wrong!
- updated error in the ratio plots
- Added error band for the bkg uncertainty 
- Need to blind the NoFvT plots !!!... running....DONE
- [x]  Function for processing stack dict in `base_class/plots`
- remade noFvT plots now blinded
- updated the mixed data summary plots


[[22 November 2024 Friday]]
- updating plots with error bands
- [[4b code base]]


[[23 November 2024 Saturday]]
- Updated runTwoStageClosure to use new colors


[[9 December 2024 Monday]]
- Chat AE: he will push today
- Working Appendix with CL results
- Finished the comments
- [XX] Send
- AE found problem with the fits... will wait to send

[[13 December 2024 Friday]]
- Updating the responses. 
- [x] New v3 versions
- [x] Send email to L3s


# Archive

Cut a v3: 
- [x] Fix binning
- [x] ggHbb 3b w/o and w JCM
- [x] Finalize L3 comments
- [x] Add to AN
	- [x] (AE) Add Boosted / Resolved discussion
	- [x] (AE) prefit plots + impact/pulls with asimov data 
	- [x] (AE) plots per year ( to appendix T)
	- [x] (AE) refit  ZZ/ZH sensitivity (should actually improve with ensembeling )
	- [x] Blinded prefit plots (JA)
- [x] Add to AN
    - [x] Update plots with new code
	    - [x] fig 32 (Problem with ttbar Fraction)
	    - [x] 33 (From JCM Fits)
	    - [x] 34 (Need to add nPseudoTagJets)
	    - [x] 36 - 40 are (No FvT plots)
	    - [x] 42 - 49 (FvT Plots)
	    - [x] 72 Mixed data summary plots
	    - [x] 91-93 (From Combine)
	    - [x] 98
	    - [x] 99 - 101 (From Combine)
# Follow-ups


# Links: 



202411141049
