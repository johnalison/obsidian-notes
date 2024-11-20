# Timeblock

|     | setup      |     |
| --- | ---------- | --- |
| 9   | to campus  |     |
|     | Wes        |     |
| 10  | HGC        |     |
|     | skimmer    |     |
| 11  | skimmer    |     |
|     | skimmer    |     |
| 12  | CMU HGC    |     |
|     | CMU HGC    |     |
| 1   | home w/T   |     |
|     | home w/T   |     |
| 2   | skimmer    |     |
|     | Tree       |     |
| 3   | mans       |     |
|     | mans       |     |
| 4   | mans       |     |
|     | ~~Berman~~ |     |

**W:** 7 
**DW:** 3
~~**OT:**~~
No ex**

# The ONE thing: 
- [ ] 


# To Do
- [ ] Read ADA text
- [ ]  Work [[Run2 HH4b AN]]
	 - [ ] Mixed data summary plots
- [ ] Read HGC TDR
- [ ] BCR
- [ ] Read [[Run2 X->HY->4b]]
- [ ] Code base work
	- [ ] Histograms to cutflow
	- [ ] Bkg stat uncertainty in ratio band ?
	- [ ] Why is canJet Phi 0-pi ?
	- [x] fix skimmer cutflow
	- [ ] clean JCM code


# Log


Up at 7:15

w/M 

# Debugging skimmer-analysis-cutflow-job
- [x] Update cutflows
- Skimmer cutflow fails in CI !
- Difference is SB / SR assignment
- From Snakemake: 
- Help from CL
- Still fails ... now only one event difference 
- MEGA DEBUGGING...
- adding debug info to output file
- `python analysis/debugSkimming.py output/skimmer_analysis_test_job/test_skimmer.coffea output/test_skimmer_CI.coffea `
- found the event that is the differnece 
	- xZZ: local: **2.5999363** vs  CI: **2.60000545**
	- The input fourvectors all agreed to precision 
- Changing cutflow use a threshold of 0.1 %
- Updated the all the cutflow counts
- FIX CI !!! merged master
- Updated **Run3SyntheticData**, running CI....



# Reading LHCC:
- https://indico.cern.ch/event/1470570/contributions/6191103/attachments/2969273/5225159/CMSStatusReport_LHCC_AdW_18112024.pdf
- Now more Run3 data than Run2 
- CMS X->HY->4b is now public [[Run2 X->HY->4b]]


To campus 

[[Chat w Wes 19 November 2024]]

Do I want to prioritize HGC on Tuesdays ? 

Lots of skimmer debugging ... see above

# Chat CL
- fixed the classifier.. now seeing very similar SvB /FvT results
- discuss JCM_weights
- Helped me debug random numbers for the skimmer !



[[CMU HGC Mac Meeting 19 November 2024]]

Home to put T down.

Tree removal: $16k put 20% down
- Sold vangaurd

[[HGCManagementMeeting 19 November 2024]]

Lots more skimmer debugging... see above

w/Kids

Tried to fix drain in bathroom...trap clogged... finally got it loose... will clean tomorrow
