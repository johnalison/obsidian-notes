https://cms.cern.ch/iCMS/analysisadmin/cadi?ancode=TOP-24-006

# AN v5

- L 726: Why not 3 or more ? to kill ttbar
- Would be good to quote the the signal Acc x efficiency for the SL selection, for the different signals. 

Questions: 
- "Validation of the data and Monte Carlo agreement for the DNN discriminator score is done in a completely orthogonal phase space to the signal extraction region." What the the score look like the validation region vs the extraction region ?


SS and ML:
- 769. 3 or more leptons, the event is vetoed if all three leptons have the same charge
	- Do you use these events to check the fakes / charge mis-id?
	
- Would be good to have total RunII histograms, split by year is nice to have, but also good to see the modeling with higher stats.
- L840: "If good agreement is found in the ttZ control region, we can demonstrate that the BDT used for signal extraction isn’t over-trained and/or displaying odd behaviors."
	- Can give a plot comparing the background BDT distributions in the ttZ to the SR ? How similar are they ? Do the most sensitive BDT bins in the SR have reasonably statistics in the ttZ CR ?
		- Seems like there are far few stats in the ttZ CR in the releavent BDT bins than in the SR. How can the modelling be used to extrapolate to the SR ? 
- 4top BDT to train four top as the signal and all samples (including the three top signal and other backgrounds) as the background.
- After the 4top control reigon is defined, all events in the 4top CR are removed and the second, 3top is trainied with 3top as the signal and the other samples (excluding 4top) as the background
- Are the same BDT inputs used for the ML and SS events ?
- Figure 27: Can you make a combined plot for all years, and compute teh χ2 / Dof ?
- Figure 28: 
	- How was the binning determined ?  
	- Would be good to unblind below 0.5 in the SR to check the background modeling. 
	- Again for the hT in the last row, can you compute a χ2/Dof for combined plot ?
Sections 7: 
- In the begining of section can you provide a summary of the the big picture.  Eg: how does the total systematic uncertianty compare to the statistical uncertianty ? Which systematics uncertianties dominate the total ? 



Skipping: 6.1- 





# Paper Draft
v0
L2 why not mention 3t + b as well?
L9: Why would observation of 3T confirm the observatino of 4T ?

not ready for prime time!


# Pre-Approval Talk
https://indico.cern.ch/event/1508158/contributions/6346453/attachments/3008312/5305223/GMT20250204-130915_Recording_1920x1080.mp4

- 4 top seed at 5σ: ~ 4fb 
- No 3-top search: 2 fb (tttW dominates !)
- BSM can give 3tops: 
- Production involves b in the initial state
- Single Lepton / Same sign and Multi-lepton
- Forward jets ? 

SSDL/ML: 
- Nb >= 1   Why not >=3 ? what does Nb look like?
- 90% of the sensitivity 

SL: 
- does the ABCDnn use the XY regions ?
- ~10%


Questions: 
- [x] How much 4top background is there?
- [x] How is this fit ?
- [ ] What is the Acc x efficiency ?
- [ ] Which uncertainties are the most important: Stat vs syst? leading sys?




# Follow-ups


# Links: 



202501280944
