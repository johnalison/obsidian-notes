
|     | setup                |     |
| --- | -------------------- | --- |
| 9   | Teaching             |     |
|     | Teaching             |     |
| 10  | [[Jet DeClustering]] |     |
|     | [[Jet DeClustering]] |     |
| 11  | Home                 |     |
|     | [[Jet DeClustering]] |     |
| 12  | Multi-Higgs Meeting  |     |
|     | Lunch w/Kids         |     |
| 1   | w/Kids               |     |
|     | --                   |     |
| 2   | T Down               |     |
|     | M Down               |     |
| 3   | M Down               |     |
|     | [[Jet DeClustering]] |     |
| 4   | s-factors            |     |
|     | [[Jet DeClustering]] |     |

**W:** 5
**DW:** 2
**OT:** 0 
**No ex**

---
# The ONE thing: 
- [ ] L2 Comments

---
# To Do

- [x] Post HW 4 solutions
- [x]  Reorder [[Jet DeClustering]] daily's
- [>>] Chat Mans re SOW
- [>>] Call Liberty mutual re:tree down
- [x]  Update synthetic data with rho corrections
- [>>]  [[Synthetic Data Closure]]
- [>>] Read for [[ARC TOP-24-006 3 top production]]
- [>>] L2 Comments
- [>>] Sam Letter

---

# Log

Up at 7

No ECS... No Cyert... Still have to teach

Walk to campus

# Taught
- [[Idea of the ether comes goes comes]]
- Chat with Chance re:research

# [[Jet DeClustering]]
- Added rhoA and B vs pt
-  re-Making the pdfs on **cmslpc345** 
- Job ran out of memory... rerunning after killing stalled jobs and removing detailed histograms
- Reordered daily logs
- Adding rhoA and rhoB pdfs
- Making pdfs 00-09-00: including rhoA and rhoB pdfs
	- `python  jet_clustering/make_jet_splitting_PDFs.py output/synthetic_dataset_cluster/synthetic_datasets_Run2.coffea  --years RunII   --out jet_clustering/jet-splitting-PDFs-00-09-00`
- Only do rho corrections for simple jets ? ... yes !
- Remaking rhoX templates with better ranges
- Adding the updated mass... testing with
	- `python -m unittest jet_clustering.tests.test_clustering.clusteringTestCase.test_synthetic_datasets_bbjjets`
- Adding logic to update the mass for only "single jets"... seems to be working !
- finalizing jet-splitting-PDFs-00-09-00 with updated rho range.
- Doing declustering on **cmslpc312
	- `source .ci-workflows/synthetic-dataset-make-dataset-all.sh `
- Done .. in **57m22.355s** made "v2" RunII synthetic data

Idea for [[Hbb Reclustering Project]]
- Run clustering on signal and look for 1b1j splittings. 

Idea for [[UndergradProjects]]
- S-factors Maybe too easy...

Home...

# Multi-higgs Meeting
- [>>] Think about ttbar mismodelling


# HGC Workshop
- [>>] Look at HGCAL slides: 
- https://indico.cern.ch/event/1464337/

kids down...

More [[Jet DeClustering]]

# Playing around with [[S-factors-for-HH-Analyses]]
- `~/CMSWork/DiHiggs/sFactors.py`
- `py sFactors.py`
- Not clear this makes sense after all... the limit is not flat as a function of k_l

More [[Jet DeClustering]]

Chess with H

Some [[MacBeth]]