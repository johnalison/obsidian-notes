
|     | [[Run3 Synthetic Data]]                  |     |
| --- | ---------------------------------------- | --- |
| 9   | To campus                                |     |
|     | Wes                                      |     |
| 10  | setup                                    |     |
|     | [[CAM Turnaround Report]]                |     |
| 11  | Thinking: new pdfs / migrate hemi-mixing |     |
|     | MAC Meeting                              |     |
| 12  | MAC Meeting                              |     |
|     | Lunch                                    |     |
| 1   | Lunch                                    |     |
|     |                                          |     |
| 2   |                                          |     |
|     |                                          |     |
| 3   | Mans                                     |     |
|     | Mans                                     |     |
| 4   | Mans                                     |     |
|     |                                          |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [x] [[CAM Turnaround Report]] 


---
# To Do

- [x] Fill [[CAM Turnaround Report]] by March 6th
- [x] Think about migrating hemisphere mixing to python ? 
- [ ] Read for [[ARC TOP-24-006 3 top production]]
- [ ] Do  [[DOE Review Li Zepeng]] (**Due Date:** 03/19/2025)
- [ ] Give make up lecture
- [ ] Setup for Chance
	- [ ] Get him set up with [[Boosted Synthetic Data]]
- [x] Think about new pdfs
- [ ] Merge Master
---

# Log

Up at 7

# [[Run3 Synthetic Data]]
- Testing v8 
- Making histograms on **cmslpc334**
- plots look good
- Sent to marina

To Campus


 [[Migrate hemisphere mixing to python]] [>>] ([[UndergradProjects]])

# Chat [[Wesley Terrill]]
- Run-3 Training : see difference wrt Run-2
- Setback on the limits: bug
	- 3hr for 
- Debugging ROOT plots
- HGCAL paper: implemented systematics
	- Lina Diehl (CERN Fellow filling in for Eva)
	- Pedro Silva 
- Training and onboarding for Si-Lab
- Chatting re:preparing seminar slides

# [[CMU HGC MAC Meeting 4 March 2025]]


Thinking about new PDFs
- compute rho 
- boost to pz0 frame
- If ak4, reassign mass using new pT and original rho 
- Use new mass for pdf
- Decluster: mass in p_x -> boost -> new mass based on rho


# Lunch Ali-baba 
- Alejandro and Peter

Merged master


# [[Jet DeClustering]]
- Updating pdfs on **cmslpc341**
- testing
	`python -m unittest jet_clustering.tests.test_clustering.clusteringTestCase.test_declustering_bbjjets`
- Working through logic to get rotations right
- [ ] Add comments in the code
- Making pdfs
	- `python runner.py -o synthetic_datasets_Run3_wRotatedMass.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix  -op output/synthetic_dataset_cluster  -m metadata/datasets_HH4b_Run3_fourTag_v3.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor `
- Making 00-09-02 PDFs [[Splitting PDF Archive]]
- `python  jet_clustering/make_jet_splitting_PDFs.py output/synthetic_dataset_cluster/synthetic_datasets_Run3_wRotatedMass.coffea  --years Run3   --out jet_clustering/jet-splitting-PDFs-00-09-02
- Making v9 with  00-09-02 PDFs on **cmslpc341**
- 
`

# [[HGCManagementMeeting 4 March 2025]]


More [[Jet DeClustering]]

Home. 

Picked up H

Some [[Fly By Night Physics]]

More [[Jet DeClustering]]