

# Log

- [ ] Read ADA text
- [ ] No FvT plots
- [ ] Skimmer cut flow error

Running No FvT plots on 340

# Reading Soheun draft


# [[Run2 HH4b AN]]
- Making noFvT plots
- Make hists
	- `python runner.py -d data TTToHadronic TTToSemiLeptonic TTTo2L2Nu ZZ4b ZH4b GluGluToHHTo4B_cHHH1 -c analysis/metadata/HH4b_noFvT.yml   -p analysis/processors/processor_HH4b.py  -y UL17 UL18 UL16_preVFP UL16_postVFP -o histAll_noFvT.coffea -op hists/`
- Making Plots
	- `python -i analysis/makePlotsAN_noFvT.py hists/ANv3/histAll_noFvT.coffea --out hists/ANv3/plots_noFvT -m analysis/metadata/plotsAllNoFvT.yml `
- Added noFVT plots
- Make JCM fits
	- `python analysis/make_weights.py -o testJCM_Coffea -c passPreSel -r SB -i hists/histAll_noFvT.coffea `
	- Adding fit data to JCM plots