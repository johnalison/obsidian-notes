

---
# To Do

- [x] SURF Letter for [[Sam Hobbeheydar Rec Letter]]
- [x] Update [[Run3 Synthetic Data]], merge 
	- [x]  Make PDFs for Run3 
- [ ] Make new [[Run3 Synthetic Data]]
- [x] Ann Arbor Slides Draft


---

# Log

Up at 8 

# [[Synthetic Data Closure]]
- Fixed problem with empty histograms... rerunning v4 on condor
- Still see large event weights. .. not clear whats happening.
- [[Run3 Synthetic Data]] 


# [[Jet DeClustering]]
- [x] Run3 pdfs with rho corrections
	- `python  jet_clustering/make_jet_splitting_PDFs.py output/synthetic_dataset_cluster/synthetic_datasets_Run3.coffea  --years Run3   --out jet_clustering/jet-splitting-PDFs-00-09-00`
- Updating the CI
- Adding Snakemake config for Run3 synthetic datasets
- MERGED!!!!
- [ ] Try rejecting events that fail the kinematic threholds from the output synthetic datasets ?

Submitted Sams letter

To Heat Check to check Jerseys... nothin'

- Updating [[CMU 4b Chats]]
- [ ] Set up [[CMU bbWW Chats]]

Put together a draft of the Ann Arbor slides

# [[Run3 Synthetic Data]]
-  making v6 on **cmslpc350**... Done
	- `source .ci-workflows/synthetic-dataset-make-dataset-all.sh `
- Now making plots... 
	- `source .ci-workflows/synthetic-dataset-analyze-all.sh`
