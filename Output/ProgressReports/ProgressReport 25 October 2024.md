
Lot of random things in the past two weeks (5391 / CAPs / UCSB site visit) so it has felt like it has been harder to hit a stride. The new house (5391) is a toss up at this point. We asked for $120k back, not clear we are close enough to close on this deal. Sleep has been good, but still not getting into the meditation groove.  Would like to start getting up earlier. 

# 4b
On the 4b front, I have made a lot of progress in the [[Classifier Studies]].  Adding ZZSR and ZHSR into the SB for the FvT fit.  I have all the ZZSR results in hand and the ZHSR should a straightforward extension. Will know soon how much we can gain from this. The Run 3 synthetic data has been slower. I think Im close but need to be able to devote some time to it. 

Lots of progress on the code form AE and Chuyuan.  AE has added some debugging tools that allow us to check the limit with a certain commit of the code and CL how now (?) finally finished the classifier rewrite. Hopefully both of them can start getting some physics results soon. CL will look into the kλ improvements and effect of TTBar on the SvB / FvT.  AE has numbers that show the overlap with boosted and will now move to see what gains we can expect from the "low pT" 4b analysis. 

Still not much from Sindhu. It seems like she is either not allocating much time to X→HH or is very inefficient. Waiting on her to write up the double peak study and have a first look at systematics on mHH. She will likely then need to move on to making signal samples. 

# Stats Project
There has been some very nice progress on the stats project. Here a summary of the overall strategy and recent progress. First we fit FvT with the full dataset, this learns a latent space that is optimized for separating four and three tag events. Call this the "FvT-all" fit. Next, we smear the latent space and refit the final attention layers to produce a smeared-FvT-all classifier.  We assume a signal would show up as a local, high-frequency excess in the FvT-all latent space which would be suppressed by the smearing. So, signal should have a high value of FvT-all and a relatively low value of smeared-FvT-all. We then construct the "SvB" discriminant as the ratio:  FvT-all / smeared-FvT-all.  The SR in defined as the highest X% of events in this distribution, the CR is defined as the remaining events. A second FvT classifier -- "FvT-bkg" -- is fit in the CR using a statistically-independent dataset. The FvT-bkg classifier is used to extrapolate the 3b events in the SR to predict the 4b background. Soheun has found that, in the presence of signal,  if the FvT-bkg uses the original latent space, ie: that found in the initial FvT-all fit, the signal contamination in the CR biases the SR background prediction.  However, if the "FvT-bkg" is refit from the jet-level inputs and a new latent space is derived using only the CR events, the CR signal contamination does not bias the background prediction. This suggests that the CR contamination in the original latent space is clustered (as in Swiss cheese) where the contamination in the CR-only derived latent space appears unclustered (as in blue cheese). 

# HGCal
This week was a big week for us. The UCSB visit went just about has well as we could have hoped.  Lots of important take aways.  The one big action item on my side is to move on the Lab Techs. We also need to sit down and optimized process. Flow and positioning etc. 


## Follow-ups

Not much bbWW, SoS, 

## Links: 

[[ProgressReport 11 October 2024]]


202410250919
