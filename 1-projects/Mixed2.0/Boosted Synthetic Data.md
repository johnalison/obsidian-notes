
# Planning

- Start with Run2 signal
- skim nano
	- [x] Start with four-vectors to Chance... Can talk to [[Tony Boyle]] about setup 
	- [ ] Can we recover soft-drop mass from leading two subjets ?
- script to plot mass in coffea code


# 1st Mail


Hi Chance

You can find that data here:  
https://cernbox.cern.ch/s/n9ZGaTYl8jVtL9g  
  
The file is for HH->4b signal and has the following variables:  
- 'event'  
- 'run'  
- 'FatJet_*'  
- 'SubJet_*'  
  
(We can talk about this more in person when you have time...)  
Each event has two "FatJets", you can think of these as the reconstructed Higgs bosons.  
Each FatJet has a four-vector (pt, eta, phi, mass) and a bunch of other variables.  
Each FatJet has two "SubJets". The SubJets also have four-vectors and a bunch of other variables.  
  
I would start by playing around with the data. An example of how to load the file in python is here:  
https://cernbox.cern.ch/s/ucAc3Nr2ZaA78wU  
You will need to install coffea (and will probably also want numpy and akward) in your python environment. 

(Tony Boyle, another undergrad working with me has done this and can help if needed... ChatGPT also knows things...)  
  
A good first exercise is to compare the mass of the FatJets to the mass computed from the constituent SubJet four-vectors. These should be fairly close, though probably not exact. You will want to be able to make plots (histograms) of the masses.  
  
Make sense?  
  
Let me know if you have any problems accessing the files and what is a good time to meet to chat about this in more detail.  
  
john



# Follow-ups


# Links: 



202503051656
