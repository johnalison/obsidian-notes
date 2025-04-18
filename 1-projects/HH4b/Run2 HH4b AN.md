Official version: https://cms.cern.ch/iCMS/jsp/db_notes/noteInfo.jsp?cmsnoteid=CMS%20AN-2024/089
Twiki: https://twiki.cern.ch/twiki/bin/view/CMSPublic/Run2HH4b



# Figure Updates from L2
- [x] fig5 plots for the other signal samples.
	- Probably need a way of making 2-8 in new code
- [x] fig 9 split by year
- [x] 1D mass projections of SR and SB
- [x] Add chuyuan's studies in an appendix
- [ ] Fig. 51 (hemisphere summary variables): for different jet bins
- [ ] Fig 53: NN vs other hemisphere in the event
- [x] Add regions to fig 69 and 70
- [x] Add SvB for ZZ and ZH in the SR
- [ ] Add plots on ISR / FSR study
- [ ] Roc plot p(HH) vs p(signal|HH)

# To do
- [x] L3 comments v2
- [ ] Need new background model
- [x] Whats wrong with mixed data fits ?
	- [x] Repeate Closure with old SvB
- [x] What is up with PS FSR ?
	- [[Hbb Reclustering Project]]

Towards v4
- [ ] Update nominal background for k-folding
- [x] cutflow hists
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


## [[26 March 2025 Wednesday]]
- Added ps vs phh plot
- pushed 
- Updated comments
- Wait on AE for TTbar CR before send


## [[17 March 2025 Monday]]
- New Acceptance plots
- Remake m4j plots after removing fix for Nones .. in matchBjets∝
- `python runner.py   -o signal_HH4b_nano_fixed.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_HH4b.py -y UL18 UL17 UL16_preVFP UL16_postVFP   -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- `python plots/makeAccxEff.py output/analysis_test_job/signal_HH4b_nano_fixed.coffea hist_HH.coffea --output testAccNew`
- Only half (46%) the events have four matching genJets
	- ΔR to 0.4 => 68%
	- ΔR to 10 => 99%
- Fixes the weird mHH distribution that I say earlier !!!!

## [[15 March 2025 Saturday]]
- [>>] ROC plots for various signal points
- Solid first draft


## [[6 March 2025 Thursday]]
-  need hemiplots and new data
- Finished L2 comments... AE will push to website


## [[3 March 2025 Monday]]
- [x] Check with AE re:template uncertainties 
- AE sees limits get worse with flat binning.... debugging... <font color=red> Fixed </font>
- Just hemisphere plots lefts to do

## [[Journal/28 February 2025 Friday|28 February 2025 Friday]]

- [x] truth HH plots before and after genWeight cleaning
- Now have 2018 AccXEff plot looking good!
- [x] Run nano on other  years
	- `python runner.py   -o signal_HH4b_nano.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_HH4b.py -y UL18 UL17 UL16_preVFP UL16_postVFP   -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- UL17 crashes.. fix for puID large eta jets... now runs
- running on all HH picos (to get trig weights)
	- `python runner.py -o hist_HH.coffea -d GluGluToHHTo4B_cHHH1 -p analysis/processors/processor_HH4b.py -y UL18 UL17 UL16_preVFP UL16_postVFP  -op output/analysis_testAll_job -m metadata/datasets_HH4b_v1p1.yml -c analysis/metadata/HH4b_noFvT.yml
- Adding all years, plot labels and legends.

## [[26 February 2025 Wednesday]]
- [>>] AccXEff plots with [[Add Cutflow Histograms]]
- [x] Debug wrt cutflow
- Need to remove outliers
- Cleaning up cutflow interface
- Lots of progress...
- Need two files at once, one with no skimming / one with the trigger weights
- [x] histAll doesnt have cutflow_hists properly merged
- [x] single signal files from reAna dont have trigger weights applied.
- Added option to read in two files 
- Added SF to correct relative norm between the files. 


## [[25 February 2025 Tuesday]]
- Updating the coments in markdown ... much better than twiki!
- [>>] Make efficiency plots with [[Add Cutflow Histograms]]
	- `python runner.py   -o signal_HH4b_nano.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- [x] Need to add four tag to the cut flow hists
- [x] Update Weights
- Starting script to plot eff
	- `python plots/makeAccxEff.py signal_HH4b_nano.coffea`
- Weights off ... problem was with trigger weights.
- [>>] Debug wrt cutflow


## [[24 February 2025 Monday]]
- Working L2 comments
- Added the ZZ and ZH SR plots (Took them from HIG-22-011)
- Added Chuyuans updated classifier studies to appendix

## [[21 February 2025 Friday]]
- Make comparison of 1d projections of masses, added to Twiki
- [x] Need to update **makePlotsMixedVsDataVs3b.py** 
- Updated figures 69 and 70 with region names.

## [[19 February 2025 Wednesday]]
- Some L2 Questions

## [[18 February 2025 Tuesday]]
- Update list of figures needed ... see above

## [[11 February 2025 Tuesday]]
- Start L2 Questions


## [[13 November 2024 Wednesday]]
 [>>] HIstograms to cutflow
- [x] colors
 [>>] ggHbb 3b w/o and w JCM


## [[14 November 2024 Thursday]]
Looking into ggHbb
- `python runner.py -p analysis/processors/processor_HH4b.py -y UL18 -d ttHbb ggHbb -c analysis/metadata/HH4b_rareBkgs.yml -o test_ttHbb_ggHbb.coffea -op hists/`
- too slow... changed top reco to fast and now only running ggHbb
- `python runner.py -p analysis/processors/processor_HH4b.py -y UL18 -d ggHbb -c analysis/metadata/HH4b_rareBkgs.yml -o test_ggHbb.coffea -op hists/`
- print cut flow with `python analysis/printCutFlow.py  -i hists/test_ggHbb.coffea -p ggHbb -e UL18`
- HACKING the trigger bit requirement
- Debugging the noFvT weights.. found errror.. Fixing...
- Make new ggHbb plots...sent to Marko
 [>>] Update AN and twiki


## [[15 November 2024 Friday]]
- [x] Update AN and twiki with ggHbb
- script to make plots from histAll.coffea
- `python analysis/makePlotsAN.py hists/ANv3/histAll.coffea --out hists/ANv3/plots`
 [>>] Bkg stat uncertianty in ratio band ?
 [>>] Add nPseudoTagJets plot
 [>>] Setup noFvT pipeline
 [>>] Why is canJet Phi 0-pi ?


## [[16 November 2024 Saturday]]
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


## [[20 November 2024 Wednesday]]
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

## [[21 November 2024 Thursday]]
- Got mixed ave and v0 plots running.
- Stats ratio error wrong!
- updated error in the ratio plots
- Added error band for the bkg uncertainty 
- Need to blind the NoFvT plots !!!... running....DONE
- [x]  Function for processing stack dict in `base_class/plots`
- remade noFvT plots now blinded
- updated the mixed data summary plots


## [[22 November 2024 Friday]]
- updating plots with error bands
- [[4b code base]]


## [[23 November 2024 Saturday]]
- Updated runTwoStageClosure to use new colors


## [[9 December 2024 Monday]]
- Chat AE: he will push today
- Working Appendix with CL results
- Finished the comments
- [XX] Send
- AE found problem with the fits... will wait to send

## [[13 December 2024 Friday]]
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
