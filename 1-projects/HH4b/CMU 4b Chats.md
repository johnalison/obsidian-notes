
# Logs

## [[Journal/28 February 2025 Friday|28 February 2025 Friday]]
- Virtual
- JA: working on the closure test with the Run2 synthetic dataset, making the Run 3 synthetic dataset, and answering the L2 comments.
	 - The Run2 synthetic closure looks pretty good now, Im still seeing some large FvT weights. Not clear where they are coming from. Chuyan, can you point to me where the event selection is done for the FvT training code ?
	 - The Run3 synthetic data looks good on our side, but Marina still sees big data vs syn-data differences. Im going to debug this with her.
	 - The L2 comments are mostly done. We still need the 2D plots (ΔR vs mass / and nViews vs Mass) -- which I think AE is working on -- and the Acc X Eff pltos which I am working on. Seems like the trigger weights are not being applied in the cut flow currently, 
- AE: Finally, fixed the binning on SvB., I now have to rerun everything (including the boosted combination), but the CERN REANA cluster has been very busy lately. I am figuring it out where to run the jobs and once they are done I need to update all the plots in the AN.
	- I need to do a new processor for the 2D plots, and the validation plots with the dileptonic ttbar selection. I am currently working on it.  
	- On the CMU REANA side, I deployed REANA in our rogue02 and I have been testing it with the test workflows. Everything seems in place, but now I have to figure it out how to include CVFMS, users, accounts, storage area for processing jobs, etc. If I figure it out on time, I might try to run our analysis workflow there. Fingers crossed.
- CL:  I am mainly improving the friend tree code to make it easier to use with new coffea and adding a dask-style configuration for the new processor and base classes.
- SM:  reran the analysis with different jet pairings to see if it has an effect on the double peak. I'm rerunning that with just the hh region and its complement in the passDijetMass space. Also ran it with m4j cuts. Apart from that, I've been polishing up some of my slides and creating a writeup in prep for B2G.

## [[21 February 2025 Friday]]
- JA: working synthetic data and L2 plots
- AE: rebinning to get the signal flat / will look into redoing 2D plots
- CL: making plots from classifier friend trees

## [[14 February 2025 Friday]]
- AE to make the signal distribution flat,  finishing L2 comments
- JA: needs to debug Synthetic data phase space
- CL: finishing background fits
- SM: putting slides together

## [[7 February 2025 Friday]]
- AE working comments 
- CL: fitting new background method
- SM: not much


## [[31 January 2025 Friday]]
- CL some nice SvB Studies ... Working on new background fit
- AE: Still dont understand klambda fits...<font color=red> NOW SOLVED!!! </font>
- JA: will make 15x synthetic data and try to run the closure
- Will get instructions on friend trees from AE and fitting FvT from CL


## [[24 January 2025 Friday]]
- SvB gains from adding other signal k_l points looks real but small. 
- Will check stat only... if promising compute systematics
- In parallel CL, will refit FvT x 15 kfolds.

## [[6 December 2024 Friday]]
- AE:  will make friend trees
- AE: updating the AN
- AE: ZZ and ZH fits 
- AE: mixed data instead of data for v4. 
- JA: Add CL stuff
- CL: More classifier FvT variations 


## [[22 November 2024 Friday]]
- Debugging with CL
- FOUND THE pseudoJet Bug !! Very subtle.. see daily log above

## [[8 November 2024 Friday]]
- Lots of progress... no Sindhu
 [>>] Add ZZ/ZH studies to slides
- [x] [[HH4b Run2 check consistency of years]]
- CL good progress on classifier studies: 20 min with data and ttbar
- AE has varible binning fits going


## [[1 November 2024 Friday]]
- Discussed answers to conveeners questions
- Talk in two weeks.
 [>>] John to prepare answers comments
 [>>] CL to send new SvB files .pkl to AE
- CL added singularity instructions to README


## [[25 October 2024 Friday]]
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


## [[27 September 2024 Friday]]
-  CL: Classifier bug: cache sharing clashes. 
-  AE: close on low pt
-  SM: debugging double peak

## [[20 September 2024 Friday]]
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

## [[13 September 2024 Friday]]
- SM: Sculpting likely due to nJet and trigger. Will pursue new regions
- CH : Plotting tool / MC samples have the wrong normalization: AE to debug.
	 Evaluation part of the classifier.
- AE: Finishing skims. Once finished will pursue low pt
- JA: Building to FvT fits

## [[6 September 2024 Friday]]
- CL:
	Most parts of the kappa scan plots work fine except for the stacked hists (I am using another plot library so it works in a little bit different way). I am trying to figure it out and I need to resolve some conflicts before merge. I noticed some hists e.g. nPVs, nPVGood, ... are using Regular axis, maybe Integer axis works better which can be achieved by replacing 

	(101, -0.5, 100.5, (name, label)) with (0, 101, (name, label)).

	I also started testing the evaluation code, but it is not ready yet.

- AE: Has new skims, will make friend trees with trig weights and ttbar reco

- JA: Pushing on synthetic datasets.  Need to think about residual mismodelling

- SM: Not much progress...

## [[30 August 2024 Friday]]
- AE: trigger troubles ... JA look into converting c++ to python

- SM: Working on X→HH code going. Will look into new scheme for regions

- CL: Debugging K_l scan and writting out of the classifier weights

- JA: will look into converting c++ to python


## [[23 August 2024 Friday]]
- No sindhu
- JA: Long discussion of JetDeclustering
- AE:  getting low pt going
- CL working on kl fits ?



# Follow-ups


# Links: 



202502211045
