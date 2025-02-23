
[[20 February 2025 Thursday]]
- gamma/gamma-tilde look good
- Get other signal samples

[[13 February 2025 Thursday]]
- Discuss journal 

[[4 February 2025 Tuesday]]
- Discussed the uncertainty on the predicted normalization

[[30 January 2025 Thursday]]
- Discussion about how to properly compute the null

[[23 January 2025 Thursday]]
- How to calculate pvalues with SvB 

[[9 January 2025 Thursday]]
- Another background fit in the SR

[[19 December 2024 Thursday]]
- Soheun poster: 1hr, 
- **DARMA** (Data-driven Algorithm for signal Region-based Model-Agnostic signals) ? ??
- Should we vary the kernel during the ensembling ?
	- Complicates interpretations
- Use CLUE to show that smearing works 

[[10 December 2024 Tuesday]]
- Reviewed the Ada write up
- Ensemblelling seems to work

[[5 December 2024 Thursday]]
- How to ensemble the latent space.
- not much else...

[[21 November 2024 Thursday]]
- How to ensamble gamma/~gamma

[[11 November 2020]]
- Discussion of Profile background in the SR

[[31 October 2024 Thursday]]
- Not much 
- Discussion of calibrating the background prediction. eg: an Nuisance parameters to the bkg.

[[24 October 2024 Thursday]]
Very good discussion ! 
- Null looks OK 
- With signal present we see that the background prediction is biased by CR signal contamination when fitting FvT using the original latent space (found by fitting SvB).
- When fitting the FvT from the original inputs the results look good.
- This suggests that impact of the signal contamination in the CR depends strongly on the latent space used in the FvT. (Swiss cheese vs Blue cheese).  When using the original ("SvB") latent space the FvT sees the CR signal contamination as swiss cheese, and the signal contamination in the CR biases the background prediction in the SR. When the FvT latent space is re-derived using only events in the CR,  the FvT now sees the CR signal contamination as blue cheese, and there is little (if any bias) on the background prediction in the SR.

[[17 October 2024 Thursday]]
- Going over the reviews accepted to Neurips 

[[9 October 2024 Wednesday]]
- Long discussion re:training schedules (not so useful
- Discussion of unfolding:  
	- Claim (MK) only need a foward model trained on simulation/ this would then be insensitvie to simulation mismodelling
	- [x] think about this with 1d cartoon


[[2 October 2024 Wednesday]]
- Investigating FvT fitting in the CR.  not much else

[[25 September 2024 Wednesday]]
- Not much. 
- Confusion about SR defintion. 
- Using 3 partitions of the dataset to do the analysis. 

[[13 September 2024 Friday]]
- Bias in background sample... probably due to using same datasets for FvT and defining SR regions
- Probably problem of using the same dataset to define both classifiers.

[[28 August 2024 Wednesday]]
- Probably not worth doing PCA on latent spaces because downstream classifiers sees such different performance. (If it was just differences in projections, the classifier performance would be the same)

- Discussed paper plan

	**Test**
	- Try sub-sample 3b as "4b", should see closure
	- sub-sample 3b + systematic by hand shift,  show robust against variation 
	- then 4b

- Check 2nd FvT modelling in the CR !


[[22 August 2024 Thursday]]
- Smearing data seems to work to find SR. 

- Question: How will we interpret a null result ? 
	- Maybe better to smear input space ?

- Question: How to ensemble over latent space ? 

- Seeing big variation in FvT from different random number seeds...

[[12 August 2024 Monday]]
- Smearing the 4b to get rid of the high frequency modes
	- Smear the 6d input space.
	- Not clear how to fix the smearing scale / can do a scan.
	- Seems like good idea

- Looks like the clustering in rho / (distance to point with higher rho) also working

- Can probably use this to show that the smearing is working.


[[2 August 2024 Friday]]
- recap: 
	- tried high signal ratios

- Discussion re clustering algorithm. 

- I pointed to :
	https://www.science.org/doi/10.1126/science.1242072
	will try that


[[18 July 2024 Thursday]]
- Previous results OK 
- Lots of review to get MK up to speed on what we are doing. 

[[10 July 2024 Wednesday]]
- For Signal ration 0.05
- Study the FvT cut used for clustering.
- Looks like method works for signal fractions of 0.05, but does NOT work for signal fractions of 0.01.
- The UMAP seeing the signal events as unweighted (over sampling the signal)
- Question: Can UMAP be run on weighted events ? 

# Follow-ups



# Links: 



202502231214
