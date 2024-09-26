Getting the new mixing going
[[Jet DeClustering Algorithm|Jet DeClustering Algorithm]]

# Documentation: 
[1st presentation in H→bb](https://indico.cern.ch/event/1429006/contributions/6030942/attachments/2889527/5065145/SyntheticDataSetsFromJetSplitting.pdf)
- Presents the overall idea and the 4b + 0j in 2018 data
[2nd presentation in H→bb](https://indico.cern.ch/event/1451193/#b-579849-higgs-to-bb)
- Extension to full Run2 dataset

# To Do
- [ ] Compare splittings by year
	- [ ]  Cluster PDFs by year. (Probably want an option of grouping them by year...)
- [ ] Check re-clustering
- [ ] Read [[Do graph neural networks learn traditional jet substructure?]]
- [x] Write out picos with the synthetic datasets jet
	- [x] Add random number seed input
	- [x] Add random number seed to output file name
	- [x] Test processor HH4b on output files
	- [x] Add CI
	- [x] Randseed via command line
		- [x] Separate script that creates input files and submits jobs
	- [x] Yaml errors from skimming output 
	- [x] Script to create synthetric datasets yaml
		- Need to merge with existing dataset script to get (at least the data info)
	- [x] Output picos to EOS 
- [ ] [[ResamplingBug]]
- [x] [[bj pt mismodeling]]
- [x] [[bj splitting mismodelings]]
- [ ] What happens to pt overflows in the clustering ?
- [x] TTbar Subtractions/ Additions
	- [x] Subtract ttbar from Templates
	- [x] Subtract ttbar from Input data being clustered
	- [x] Then add back non declustered TTbar
		- [x] Compare ttbar subtracted + PSdata to nominal
	- [x] Or compare to ttbar subtracted data ? 
- [x] Skimmer to make sub-sampled TTbar datasets
	- [x]  Why is there tag in the TT PSData ? 
	- [x] Compare synthetic + PS data data to data 
- [ ] ~~run clustering on ttbar MC ?
- [x] Propagate Btagging scores ?
	- [x] Migrate to strings
- [ ] Propagate selJet flag.. then check to make sure pt>40 ect.
- [ ] Check to make sure that the lepton veto wont kill synthetic jets
- [ ] cutflow for UL16 nominal vs making synthetic data (eg: all events pass jetMult in synthetic data...)
- [x] Money plots
	- 3b no FvT vs Data vs Synthetic Data
- [ ] Make datasets with different seeds. 1/15


# Ideas: 
* [[decluster3b]]
* [[MLForSplittingFunctions]]
* Run on boosted ? [Sub-jet code](https://github.com/rkansal47/HHbbVV/blob/main/src/HHbbVV/processors/TaggerInference.py#L63-L66)
* (Not the way to go... [[Recursive Splitting Types]]) 
* [[Group Splittings Based on Multiplicity]]
* 



# Work:
[[script to compare the splittings]]
[[Script to check reclustered splittings]]
[[Script to compare synthetic and nominal datasets]]


# Performance

## decluster and cluster
- **32m30.007s**. 25 July 2024 
- **33m20.966s** 30 July 2024
- **56m22.760s** 2 Aug 4b+2j


## Just clustering:
- 4b+2j: **28m46.523s**
- 4b+ Xj (all splittings / trimmed histograms) **37m0.066s**. 
	    2018 using all non b-jets  **46m30.667s**
- 4b+Xj all years: **83m53.974s**
             **101m24.461s** 8 Aug 2024
             **108m52.381s** 16 Aug with correct jet def
- Signal 1 worker: **196m47.039s**


## Synthetic Datasets
- Inclusive in jet multiplicity (rerunning SvB) **38m1.994s**
- inclusive in jet multiplicity and all years **88m46.643s**
- inclusive in jet multiplicty all years, correct jet def: **114m0.018s**
- with 00-07-01 PDFs **116m39.358s**
- with 00-07-02 PDFs and dR fix...**117m16.100s**
- with 00-07-02 PDFs and retry at 8 ... **121m1.577s**
- Above after changes for CI **117m19.837s**

# Making Datasets
- with 00-07-02 PDFs and retry at 8 ... **86m56.847s**
- Above using ttbar subtraction: **79m44.445s**
- **125m7.120s**
- HH Signal 2 workers **real    82m51.408s**

# Processing Synthetic Datasets
- with TTbar subtraction: **2m23.418s**

# Splittings PDFs:
- 00-05-00:  All years and all jet multiplicities (old notCanJet_sel def)
- 00-05-01:  bug fix combined jet flavor definition 
- 00-06-00: 18 with fix all jet mutliplicites (updated nonCanJet def )
- 00-06-01: 18 new groupings (not cleaning ISR)
- 00-06-02: All years / new groupings 
- 00-07-00: All years / Xb/Yj groupings (21 total)
- 00-07-01:       ''        Tuning ranges
- 00-07-02:    like 00-07-01, but with ttbar subtraction


# Archive:

## Plan
- [x] 4b + 0j
- [x] 4b + 1j
- [x] 4b + 2j
- [x] 4b + Xj
- [x] Scale years clustering
- [x] Scale years declustering
	- [ ] PDFs by year ?
- [x] use all non-b jets
	- [x] pt/eta cuts only on the b-jets

## To Do: 
- [x] Compare synthetic vs nominal
	- [x] 4b + 0j
	- [x] 4b + 1j
	- [x] 4b + 2j
	- [x] 4b + Xj
- [x] Run jet multiplicities together / Plots separate 
- [x] Recursive ISR removal (Needed for 4b + >1j)
	- [x] `['bb', '(bb)(jj)'] -> with ISR cleaning ['bb', 'bb', 'jj']
- [x] Script to compare cluster vs reclusterd
- [x] scripts to compare splitting functions
- [ ] ~~Script to compare splitting functions in jet multiplicities~~
- [ ] ~~Write out picos with clustered jets (write CI)
- [x] CI for code to make the clustering histograms
- [x] Fix the extra jet treatment (for now copy jets < 40 and add new jets)
	- [x] Or just do splitting for all jets > 20 GeV
	- [x] update recursion to only check if bjet pt > 40 GeV
- [x] Add a dR AB > 0.4 check
- [x] [[bj pt mismodeling]]
- [x] Do mass based on jet flavor ?  (mA vs mB in pt bins?)
- [x] use jet_flavor when declustering (eg: part_A is b in bj / or has the larger combination ect) 
- [x] fix mB in b(bj) 
- [x] [[6 jet clean ISR bugs]]
- [x] ISR is everything but (b+x) + (b+x) splittings!!!!
- [x] Test script crashing b/c of memory
	- [x] When max 2 extra jets / Running with 1 worker fixes it
	- [x] Now think this was b/c I was making too many hists! / back to 4 workers
	- [x] Swap memory -> 0 / Maybe faster using 2 workers ? A: no it doesnt! 
- [x] Reduce memory!
	- [x] Remove unneeded histograms 
	- [x] Only write out splittings we need
- [x] Add back detailed splittting hists
	- [x] option to turn them on/off
- [x] PDF script to only rely on trimmed histograms
	- [x] separate study_splitting_fuctions from make_PDFs
	- [x] plot the splitting type multiplicity
- [x] Seeing types
	- `(bj)((jj)b)` and `((jj)b)(bj)`
- [x] Update presentation with inclusive sample and all years
	- [x] [[Dressed Bjets]]
- [ ] ~~Proper Protection from missing splitting ? 
- [x] pdflatex for dataset comparisions
- [x] Group rare splitting types to reduce total numbers / speed
	- [x] Function to get splitting summary statistics
	- [x] Update declustering to get splitting name from jet_flavor
- [x] Add other jets to presentation
- [x] Regroup splittings (<10)

- [x] Check ΔRs (HARD!)
- [x] Fix random numbers
- [x] Fix jet_flavor == "b" Hacks
- [ x] ~~[[clean splittings during clustering]], so only plot those actually used 
- [x] Compute fractions of dressed b splittings: 2g->bb vs g->bb + b + b
- [x] Template Fixes
	- [x] Script to plot all the 1D marginals for all the splittings
	- [x] Option for mA_vl and mB_vl
- [x] Add top candidate making to declustered data
- [x] How are there any b-jets with m > 50 GeV ? (given the template cut off)
	==> A: Form the (bb) + b + b + X  events
- [x] Add hists of ptt / (ptt + pmj)
	- [x] try this as DvT
- [x] Add hT hist 
- [x] Recalc HT
- [x] Random number for BTagging (sorting fucking up top reconstruction ?)
	 A: Yes ! it was.  now fixed
- [x] Is there a problem with jet phis ?  Why discontinuous ?
	- THink its Ok, added histograms with larger range
- [x] Add sanity check for number of sel jets




## Template Fixes
- [x]  mA_vs_pT -> 100 bins
- [x] b(bj) mB -> mB_l



## Links: 

[[CMS]]
[[physics]]
[[ABCDMethod]]
[[Jet DeClustering Algorithm]]


202407091049
