Getting the new mixing going

## Documentation: 
[1st presentation in H→bb](https://indico.cern.ch/event/1429006/contributions/6030942/attachments/2889527/5065145/SyntheticDataSetsFromJetSplitting.pdf)
   Presents the overall idea and the 4b + 0j in 2018 data
   

## Plan
- [x] 4b + 0j
- [x] 4b + 1j
- [x] 4b + 2j
- [ ] ~~4b + 4j
- [ ] 4b + Xj
- [ ] Scale years
	- [ ] PDFs by year ?


## Ideas: 
* [[decluster3b]]
* [[MLForSplittingFunctions]]
* Run on boosted ? [Sub-jet code](https://github.com/rkansal47/HHbbVV/blob/main/src/HHbbVV/processors/TaggerInference.py#L63-L66)



## To Do: 
- [ ] Check ΔRs (HARD!)
- [ ] Compare synthetic vs nominal
	- [x] 4b + 0j
	- [x] 4b + 1j
	- [x] 4b + 2j
	- [ ] 4b + Xj
- [x] Run jet multiplicities together / Plots separate 
- [x] Recursive ISR removal (Needed for 4b + >1j)
	- [x] `['bb', '(bb)(jj)'] -> with ISR cleaning ['bb', 'bb', 'jj']
- [ ] Compare splitting functions ( + 0j vs +1j vs +>1j )
- [ ] Read [[Do graph neural networks learn traditional jet substructure?]]]
- [x] Script to compare cluster vs reclusterd
- [x] scripts to compare splitting functions
- [ ] ~~Script to compare splitting functions in jet multiplicities~~
- [ ] Write out picos with clustered jets (write CI)
- [ ] Write out picos with the declustered jet (write CI)
- [ ] Fix the extra jet treatment (for now copy jets < 40 and add new jets)
	- [ ] Or just do splitting for all jets > 20 GeV
	- [ ] update recursion to only check if bjet pt > 40 GeV
- [ ] [[ResamplingBug]]
- [x] Add a dR AB > 0.4 check
- [x] [[bj pt mismodeling]]
- [x] Do mass based on jet flavor ?  (mA vs mB in pt bins?)
- [x] use jet_flavor when declustering (eg: part_A is b in bj / or has the larger combination ect) 
- [x] fix mB in b(bj) 
- [ ] [[bj splitting mismodelings]]
- [x] [[6 jet clean ISR bugs]]
- [ ] [[clean splittings during clustering]], so only plot those actually used 
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
- [ ] PDF script to only rely on trimmed histograms
	- [x] separate study_splitting_fuctions from make_PDFs
	- [ ] plot the splitting type multiplicity
- [ ] Seeing types
	- `(bj)((jj)b)` and `((jj)b)(bj)`
	- 



# Template Fixes
- [x]  mA_vs_pT -> 100 bins
- [x] b(bj) mB -> mB_l
- [ ] Extend range of mB 



## Links: 

[[CMS]]
[[physics]]
[[ABCDMethod]]
[[Jet DeClustering]]


# Work:
[[script to compare the splittings]]
[[Script to check reclustered splittings]]
[[Script to compare synthetic and nominal datasets]]



# Performance

## decluster and cluster
**32m30.007s**. 25 July 2024 
**33m20.966s** 30 July 2024
 **56m22.760s** 2 Aug 4b+2j


## Just clustering:
4b+2j: **28m46.523s**
4b+ Xj (all splittings / trimmed histograms) **37m0.066s**. 


202407091049
