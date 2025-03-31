- [x] added processed lumi section
- [x] updating skip colections and (removing HLT branches)
- [ ]  Remake plotting to be more flexible re:hist structure ? 
- [x] Script to check process lumi section agaist json
- [x] Reduce histograms Do we need the "other" tag list item ? / other regions ? passPreSel cut ?
- [ ] RunII and Run3 options to sum over the proper years
- [x] Histograms to cutflow
- [x] Matplotlib ".py"
- [ ]  clean JCM code
- [ ] Why is canJet Phi 0-pi ?
- [ ]  Code to make cutflow eff plots
- [ ] Debug variable binning function
 - [x] Dont draw ration points when no data

# Logs

## [[24 March 2025 Monday]]
- Roc Plots
- Bug fix phh 
- rerunning signal samples

## [[21 March 2025 Friday]]
- Working Roc Plots
- [x] Run to make phh plots (SR and HH region)
- Added kl reweighting function
- Spikes from one of the variances of the signal sample... need to request nominal
- GOT kl-rw working!!!
- Added new hists (phh and phh_hh)
- Running all signals on **cmslpc322**
- lots of errors... fixing
- Running on condor
	- `source scripts/analysis-testAll-job.sh `
	- some ZZ4b file transfer failed
	- [x] resubmit
- Signal finished
- Finally finished backgrounds too
- p(HH) seems even better than p(S) !!!
- mailed AE
- [x] push code
- [x] Add to AN
	  	- <font color=red> On Saturday, on Saturday ... on Saturday </font>

## [[20 March 2025 Thursday]]
-  Working Roc Plots
- got one curve at a time.
- Got multiple curves going
- Need to plot from different files
- `python plots/makeRocPlot.py hists/histAll_20250304_a100c66.coffea hists/histAll_signals_cHHHX_20250304_a100c66.coffea --outputFolder roc_curves`
- [>>] Run to make phh plots (SR and HH region)
- [x] Curves for different k-lambdas
- Found spikes in kl = 2.45 sample

## Follow-ups


## Links: 



202410110913
