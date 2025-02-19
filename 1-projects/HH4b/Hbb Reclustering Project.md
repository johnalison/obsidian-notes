  it is interesting that FSR is so important. We have double checked our implementation with the CMS twikis and the Run3 HH group. (Suggests that maybe we can gain by recovering FSR by re-clustering soft jets... something for the next iteration! )

FSR Big impact / ISR not a big deal

SvB and SvB_MA

- Run clustering code on signal and look for 1b1j splittings. 

# Plan for undergrad (Tony Boyle)
- [x] Give him signal files with paired b-jets and all unclustered jets.
- [ ] Make mass resolution plots 
- [ ] Try reclustering 


# Logs 

[[27 January 2025 Monday]]
- Writing out a python file 
- `python runner.py -t -o test_HH4b.coffea -d GluGluToHHTo4B_cHHH1 -p analysis/processors/processor_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml`
- Writing out other jets down to 15 GeV
- make an example reading script
- sent mail to Tony 

# 1st Mail 

Hi Tony

You can find that data here: 
https://cernbox.cern.ch/s/0h0GmTdR5PAHQtx

The file is for HH->4b signal and has the following variables:
- 'event'
- 'run'
- 'leadDiJet_mass'
- 'sublDiJet_mass'
- 'leadDiJet_leadJet_(pt,eta,phi,mass)'
- 'leadDiJet_sublJet_(pt,eta,phi,mass)'
- 'sublDiJet_leadJet_(pt,eta,phi,mass)'
- 'sublDiJet_sublJet_(pt,eta,phi,mass)'
- 'otherJet_(pt,eta,phi,mass)'

(We can talk about this more in person when you have time...)
Events are made of "jets", you can think of these as like quarks or gluons. 
Each jet has a four vector (pt, eta, phi, mass)
We have an algorithm to identify jets that are likely b-jets and to cluster them into "di-jets", which hopefully represent the Higgs four-vector.

Each event has two "di-jets" a leading one and a sub-leading one.
The di-jets in turn are made from two jets a leading jet and a sub-lead jet. 
So, leadDiJet_sublJet_* give the four vector from for the subleading jet of the leading dijet. 

In addition to these four jets, there can be additional jets in the events.  The number of these varies event to event. The four-vectors of these jets are given in otherJet_*.

I would start by playing round with the data. An example of how to load the file in python is here:
https://cernbox.cern.ch/s/LxRprWSZvOMdBut
You will need to install coffea (and will probably also want numpy and akward) in your python environment.

A good first exercise is to compute the leading and subleading di-jet masses from the constituent jet four-vectors. These you can compare with the leadDiJet_mass and sublDiJet_mass variables.  You will want to be able to make plots (histograms) of the masses. 

Once you are this point, your mission will be to see if we come up with a criteria to determine if there has been some radiation from one of the b-jets and in these cases to add it back to improve the di-jet mass resolutions. 

Make sense?

Let me know if you have any problems accessing the files and what is a good time to meet to chat about this in more detail. 

john





# Follow-ups


# Links: 
[[UndergradProjects]]


202501211502
