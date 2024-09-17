Still no drinking, going well! Lots of detailed debugging and getting code stable and reliable. I migrated the trigger code to python and gave a second, more detailed, presentation of the JetDeclustering method to Hbb.

Still need to improve meditation, would like to do this in the morning. I will give this a try when sleeping back to normal (Its messed up now because of Henrys surgery.) Also want to focus on Stoic Test Challenge. 

# 4b
Progress in the last two weeks has been at the high-level and low-level. At the high-level I polished the slides and gave a presentation of the ideas. This is a good starting point to introduce the idea. Most of the progress and work has been at the low-level.  I migrated the TriggerEmulator to python, propagated btagging scores, and got the new synthetic dataset code running on MC. I added CI tests, which uncovered errors. This led to a massive debugging campaign. The fixes were not major, but we now have reproducible code.  More recently I have added the pseudodata making module. Next steps is to proceed to making datasets for closure.

AE is reproducing current results with new skims.  Once OK, will proceed to low-pt analysis 

Sindhu is making slow progress on X->HH->4b. I need to push more in this area. The goal is for her to give a presentation in B2G in a week or so. 

Chuyuan's paper has now been accepted! I need him to help me with the FvT fitting and then get going on his thesis. 

# HGC
Its a relatively slow period as not much is going with modules.  I think we now have a better handle on IV curves, (only one bad module) and wierd behaviour likely due to glue patter. The ramp-up schedule already slipped, will now do 4 module/day starting in November (not October as planned in August!) For this, Jonas will focus on the Gantry.  I still think we need to push on ramping personel. 

# bbWW
Aniket making steady progress.  Chi2 now makes sense and we are using a more reasonable processor.  Struggling with neutrino fitting. Apparently this is not as easy as I had assumed. Hopefully this can accelerate soon.

# Semi-Supervised 
Soheun submitted a write up to Neurips and put it on the arxive. The main ideas are interesting, but we still have some big picture problems 1) not seeing closure in the background only model.
This needs to be understood before we can really move on.  He had some idea re: correcting the bias, but these seem crazy to me. I think it might be due to the induced bias of using the training data twice; this we should be able to confirm by using the subsampled 3b as "4b". 2) Not clear to me how we can interpret a null result; what does the resonance width in the latent space really mean. 


# SOS
Post fit not great. The problem in in the muon channel and is likely a result of correlating the low and high mll fake factors. Wes has been working on setting up the fit removing this correlation and it indeed goes in the right direction.  We probably need to do this to the electrons as well. Not clear what what the next steps are. Need to follow up. 


## Follow-ups


## Links: 
[[ProgressReport 30 August 2024]]
[[Fall 2024]]


202409160927
