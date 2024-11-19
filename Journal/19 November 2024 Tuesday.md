# Timeblock

|     | setup     |     |
| --- | --------- | --- |
| 9   | to campus |     |
|     | Wes       |     |
| 10  | HGC       |     |
|     | skimmer   |     |
| 11  | skimmer   |     |
|     | skimmer   |     |
| 12  | CMU HGC   |     |
|     | CMU HGC   |     |
| 1   | home w/T  |     |
|     | home w/T  |     |
| 2   |           |     |
|     |           |     |
| 3   | mans      |     |
|     | mans      |     |
| 4   | mans      |     |
|     | Berman    |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

# The ONE thing: 
- [ ] 


# To Do
- [ ] Read ADA text
- [ ]  Work [[Run2 HH4b AN]]
	 - [ ] Mixed data summary plots
- [ ] Read HGC TDR
- [ ] Read [[Run2 X->HY->4b]]
- [ ] Code base work
	- [ ] Histograms to cutflow
	- [ ] Bkg stat uncertianty in ratio band ?
	- [ ] Why is canJet Phi 0-pi ?
	- [ ] fix skimmer cutflow
	- [ ] clean JCM code


# Log


Up at 7:15

w/M 

# Debugging skimmer-analysis-cutflow-job
- [x] Update cutflows
- Skimmer cutflow fails in CI !
- Difference is SB / SR assignment
- From Snakemake: 


|                 | expected | Snakemake | local 1 | local 2 |
| --------------- | -------- | --------- | ------- | ------- |
| counts4_unit SR | 15854    | 15830     | 15878   | 15878.0 |
| counts4_unit SB | 2542     | 2566      | 2518    |         |
|                 | 33489.0  |           |         |         |
|                 | 15676.0  |           |         |         |

Failed counts4_unit:
	GluGluToHHTo4B_cHHH0_UL18 SB            0.9906               SB                       2542.0     2566.0
	Failed counts3_unit:
	GluGluToHHTo4B_cHHH0_UL18                0.9988               SR                      33489.0    33529.0
	GluGluToHHTo4B_cHHH0_UL18                1.0026               SB                      15676.0    15636.0`
Locally:
`                                                 cut                observed             expected        Percent Difference   Absolute Difference  
Failed counts4_unit:
	       GluGluToHHTo4B_cHHH0_UL18                  SB            2542.0     2518.0          1.0095                24.0         
                                                 cut                observed             expected        Percent Difference   Absolute Difference  
Failed counts3_unit:
	       GluGluToHHTo4B_cHHH0_UL18                  SR           33489.0    33491.0          0.9999                -2.0         
	       GluGluToHHTo4B_cHHH0_UL18                  SB           15676.0    15674.0          1.0001                2.0 `
Rerun analysis job ... cutflow is same 
Rerrun skmmer job ... 

Reading LHCC:
- https://indico.cern.ch/event/1470570/contributions/6191103/attachments/2969273/5225159/CMSStatusReport_LHCC_AdW_18112024.pdf
- Now more Run3 data than Run2 
- CMS X->HY->4b is now public [[Run2 X->HY->4b]]


To campus 

[[Chat w Wes 19 November 2024]]

Do I want to prioritize HGC on Tuesdays ? 


Lots of skimmer debugging ... see above


# Mans Meeting: 
- [[HGC Transfer Tape BCR]]
- [[Dry Air for MMTS]]


