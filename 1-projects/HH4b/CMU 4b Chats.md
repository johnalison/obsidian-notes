
[[14 February 2025 Friday]]
- AE to make the signal distribution flat,  finishing L2 comments
- JA: needs to debug Synthetic data phase space
- CL: finishing background fits
- SM: putting slides together

[[7 February 2025 Friday]]
- AE working comments 
- CL: fitting new background method
- SM: not much


[[31 January 2025 Friday]]
- CL some nice SvB Studies ... Working on new background fit
- AE: Still dont understand klambda fits...<font color=red> NOW SOLVED!!! </font>
- JA: will make 15x synthetic data and try to run the closure
- Will get instructions on friend trees from AE and fitting FvT from CL


[[24 January 2025 Friday]]
- SvB gains from adding other signal k_l points looks real but small. 
- Will check stat only... if promising compute systematics
- In parallel CL, will refit FvT x 15 kfolds.

[[6 December 2024 Friday]]
- AE:  will make friend trees
- AE: updating the AN
- AE: ZZ and ZH fits 
- AE: mixed data instead of data for v4. 
- JA: Add CL stuff
- CL: More classifier FvT variations 


[[22 November 2024 Friday]]
- Debugging with CL
- FOUND THE pseudoJet Bug !! Very subtle.. see daily log above

[[8 November 2024 Friday]]
- Lots of progress... no Sindhu
 [>>] Add ZZ/ZH studies to slides
- [x] [[HH4b Run2 check consistency of years]]
- CL good progress on classifier studies: 20 min with data and ttbar
- AE has varible binning fits going


[[1 November 2024 Friday]]
- Discussed answers to conveeners questions
- Talk in two weeks.
 [>>] John to prepare answers comments
 [>>] CL to send new SvB files .pkl to AE
- CL added singularity instructions to README


[[25 October 2024 Friday]]
-  JA
	- send the pickle file with ZZ in the SB
	- [[Setting up Falcon]]
- AE: 
	- Debug limit change: trigger weights
	- Low pt: hours to make histograms double 
- CL: 
	- Finished classifier code
	- FvT with and without JCM
	- Send falcon instructions + data location
- SM: 
	- Will start putting slides together


[[27 September 2024 Friday]]
-  CL: Classifier bug: cache sharing clashes. 
-  AE: close on low pt
-  SM: debugging double peak

[[20 September 2024 Friday]]
-  AE: Will look into low pt:  3b data with JCM fit to signal in low Pt
	 Marina has Run-3 ntuples to try 
	 Processor with simple run-3 selection
- CL: debugging the evaluation
	  Plot tools and documentation 
	  Evaluation code 
	  Normalization issue
-  JA: Look into boosted synthretic data
     Run-3 skims
* SM: looking into mhh double peaks

[[13 September 2024 Friday]]
- SM: Sculpting likely due to nJet and trigger. Will pursue new regions
- CH : Plotting tool / MC samples have the wrong normalization: AE to debug.
	 Evaluation part of the classifier.
- AE: Finishing skims. Once finished will pursue low pt
- JA: Building to FvT fits

[[6 September 2024 Friday]]
- CL:
	Most parts of the kappa scan plots work fine except for the stacked hists (I am using another plot library so it works in a little bit different way). I am trying to figure it out and I need to resolve some conflicts before merge. I noticed some hists e.g. nPVs, nPVGood, ... are using Regular axis, maybe Integer axis works better which can be achieved by replacing 

	(101, -0.5, 100.5, (name, label)) with (0, 101, (name, label)).

	I also started testing the evaluation code, but it is not ready yet.

- AE: Has new skims, will make friend trees with trig weights and ttbar reco

- JA: Pushing on synthetic datasets.  Need to think about residual mismodelling

- SM: Not much progress...

[[30 August 2024 Friday]]
- AE: trigger troubles ... JA look into converting c++ to python

- SM: Working on X→HH code going. Will look into new scheme for regions

- CL: Debugging K_l scan and writting out of the classifier weights

- JA: will look into converting c++ to python


[[23 August 2024 Friday]]
- No sindhu
- JA: Long discussion of JetDeclustering
- AE:  getting low pt going
- CL working on kl fits ?



# Follow-ups


# Links: 



202502211045
