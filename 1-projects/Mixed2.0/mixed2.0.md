Getting the new mixing going

## Documentation: 
[1st presentation in H→bb](https://indico.cern.ch/event/1429006/contributions/6030942/attachments/2889527/5065145/SyntheticDataSetsFromJetSplitting.pdf)
   Presents the overall idea and the 4b + 0j in 2018 data
   



## Plan
- [x] 4b + 0j
- [x] 4b + 1j
- [ ] 4b + > 1j





## Ideas: 
* [[decluster3b]]
* [[MLForSplittingFunctions]]
* Run on boosted ? [Sub-jet code](https://github.com/rkansal47/HHbbVV/blob/main/src/HHbbVV/processors/TaggerInference.py#L63-L66)



## To Do: 
- [ ] Check ΔRs (HARD!)
- [ ] Compare synthetic vs nominal
	- [ ] 4b + 0j
	- [ ] 4b + 1j
	- [ ] 4b + >1j
- [x] Run jet multiplicities together / Plots separate 
- [ ] Recursive ISR removal (Needed for 4b + >1j)
- [ ] Compare splitting functions ( + 0j vs +1j vs +>1j )
- [ ] Read [[Do graph neural networks learn traditional jet substructure?]]]
- [x] Script to compare cluster vs reclusterd
- [x] scripts to compare splitting functions
- [ ] Script to compare splitting functions in jet multiplicities
- [ ] Write out picos with clustered jets (write CI)
- [ ] Write out picos with the declustered jet (write CI)
- [ ] Fix the extra jet treatment (for now copy jets < 40 and add new jets)
	- [ ] Or just do splitting for all jets > 20 GeV
- [ ] update recursion to only check if bjet pt > 40 GeV
- [ ] [[ResamplingBug]]
- [x] Add a dR AB > 0.4 check
- [ ] [[bj pt mismodeling]]
- [x] Do mass based on jet flavor ?  (mA vs mB in pt bins?)
- [ ] use jet_flavor when declustering (eg: part_A is b in bj / or has the larger combination ect) 
- [ ] fix mB in b(bj) 

# Template Fixes
- [x]  mA_vs_pT -> 100 bins
- [ ] b(bj) mB -> mB_l




## Links: 

[[CMS]]
[[physics]]
[[ABCDMethod]]
[[Jet DeClustering]]


# Work:
[[script to compare the splittings]]
[[Script to check reclustered splittings]]


# Performance

decluster and cluster
**32m30.007s**. 25 July 2024 


202407091049
