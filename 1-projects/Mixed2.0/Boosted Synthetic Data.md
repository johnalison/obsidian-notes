
# Planning

- Start with Run2 signal
- skim nano
	- [x] Start with four-vectors to Chance... Can talk to [[Tony Boyle]] about setup 
	- [ ] Can we recover soft-drop mass from leading two subjets ?
- script to plot mass in coffea code

# Log

## [[6 March 2025 Thursday]]
- filter boosted fourvectors
- Nanos failing on rucio... Nano not avilible on LPC, needed to add MIT
	- [[dasgoclient]]
- NanoAOD content https://cms-nanoaod-integration.web.cern.ch/autoDoc/
- Testing with
	- `python runner.py -t  -o signal_HH4b_nano.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_boosted_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- Added function to write boosted output 
- Running on all UL18
	- ` python runner.py  -o signal_BoostedHH4b_nano.coffea -d GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_boosted_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml`
- Example script for reading the output
	- `python analysis/readBoostedSyntheticEvents.py output/analysis_test_job/signal_BoostedHH4b_nano.coffea`
- Sent mail to Chance

# N-subjettiness

**τ1,τ2,τ3,τ4**: These variables measure how well a jet can be described by 1, 2, 3, or 4 subjets, respectively. Lower values indicate a better fit to the corresponding number of subjets.

- **τ21= frac{\tau_2}{\tau_1}**
    Measures how much more the jet looks like a 2-prong structure compared to a 1-prong structure.
    
- **τ32=\frac{\tau_3}{\tau_2}**
    Measures how much more the jet resembles a 3-prong structure compared to a 2-prong structure.
    

### Interpretation:

- **2-prong jets** (e.g., boosted W/Z bosons or Higgs to bb) usually have:
    
    - **Low τ21\tau_{21}τ21​**: because adding a second subjet significantly improves the description.
    - **High τ32\tau_{32}τ32​**: since a third subjet adds little benefit.
- **3-prong jets** (e.g., boosted top quarks) generally show:
    
    - **Low τ32\tau_{32}τ32​**: because adding a third subjet significantly improves jet description.
    - Moderate-to-higher τ21\tau_{21}τ21​, since going from one subjet to two subjets is helpful, but the clearer signal is at three subjets.

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
