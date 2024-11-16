

# Log

- [ ] Read ADA text
- [x] No FvT plots
- [ ] Skimmer cut flow error
- [x] Reply to CL
- [x] nPseudoTagJets
- [ ]  Mixed data summary plots
- [ ] debug ttbar fraction in noJCM 
- [ ] Redo plots with new JCM ?

Running No FvT plots on 340

# Reading Soheun draft


# [[Run2 HH4b AN]]
- Making noFvT plots
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

got $100 from CAPs study