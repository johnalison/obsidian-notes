

---
# To Do

- [ ] SURF Letter for [[Sam Hobbeheydar Rec Letter]]
- [ ] Update [[Run3 Synthetic Data]], merge 
	- [x]  Make PDFs for Run3 
- [ ] 
- [ ] 

---

# Log

Up at 8 

# [[Synthetic Data Closure]]
- Fixed problem with empty histograms... rerunning v4 on condor


# [[Jet DeClustering]]
- [x] Run3 pdfs with rho corrections
	- `python  jet_clustering/make_jet_splitting_PDFs.py output/synthetic_dataset_cluster/synthetic_datasets_Run3.coffea  --years Run3   --out jet_clustering/jet-splitting-PDFs-00-09-00`
- Updating the CI
- Adding Snakemake config for Run3 synthetic datasets
