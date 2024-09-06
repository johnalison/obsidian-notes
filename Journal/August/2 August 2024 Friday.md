# Timeblock

|     |                  |     |
| --- | ---------------- | --- |
| 9   | jet declustering |     |
|     | jet declustering |     |
| 10  | jet declustering |     |
|     | jet declustering |     |
| 11  | jet declustering |     |
|     | jet declustering |     |
| 12  | HEP Lunch        |     |
|     | HEP Lunch        |     |
| 1   | HEP Lunch        |     |
|     | jet declustering |     |
| 2   | stats chat       |     |
|     | stats chat       |     |
| 3   | jet declustering |     |
|     | jet declustering |     |
| 4   | Get H            |     |
|     |                  |     |

**W:**. 7 
**DW:** 4 
**OT:** 4
**~~ex~~**

# The ONE thing: 
- [x] mixed 4j + 2j (recursion)


# To Do
- [x] 4b
	 - [x] 4b + 2j
- [> ] write up S/sqrt(B) argument
- [> ] CAM training
- [ ] 


# Log
 
Up at 7:45

H to school (Got caught in the rain!)

# Institutional review WZ cross section at 13.6 TeV
https://cms.cern.ch/iCMS/analysisadmin/cadi?ancode=SMP-24-005

# [[Jet DeClustering]]
- Made **make_jet_splitting_PDFs.py** robust against changing cuts in the histogram file.
- Cleaned configuration of splittings: needed when many varieties
- make input pdfs for 4b + 0,1,2j : **jet-splitting-PDFs-00-03-00**
- Start working on iterative ISR declustering
	- Got it going ... Easier than I thought.
- Check the reclustered splittings.
	- Running out of Memory..trying with 2 cores
	- Fixed, problem was not the n_cores but there was another stopped job
	- tmux on **cmslpc312**
- Now try to do the declustering with 4b+0,1,2j...
	- problem with 5 bjets... fixed: bug in the min dR ISR-jet to splitting
	- tmux on **cmslpc329**
	- Looks DAMN GOOD !!!!  Both data and signal ! LETS GO!!!
	- Think its time to go in steps of +2 jets.. 

ETH limit order was filled. 

# HEP Lunch Matteo and Manfred
- Get computer have UGs build kubernetes cluster

More mixed see WIP above

[[StatsChat-2-August-24]]

More mixed see WIP above

Mail re:Undergrads for Kubernetes cluster

Got H

More mixed see WIP above

Starting to digitize April 2021 to October 2021 

Wrote up [[Boosted Angle Formula]]

Steph does not get load repayment grant :( 

# Evening [[Jet DeClustering]]
- tried clustering with upto 8 jets ... No problem on test job!
- tried clustering with no nJet limit ...No problem on test job!
- Running all clustering on **cmslpc329**
	- ran our of memory with 4 workers... trying 3 (also failed) ... trying 2
	- Problem was too many histograms (reduced) now trying 2 workers ... WORKs
	- Now trying again with 4 ... Works !
- Added recursive function to get all the sub-splittings from a given splitting.. will us to reduce the number of splittings I need to plot.

Writing up: 
- [[April 2021]]
- [[May 2021]]
- [[June 2021]]
