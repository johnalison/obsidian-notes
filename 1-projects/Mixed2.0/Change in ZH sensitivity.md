# Plan
- For ZZ, ZH, and HH...
	- [ ] Compute acceptance in SR
	- [ ] Compute acceptance in VV-region
	- [ ] compare S/B ratios in bins of SvB
- Plots of the old SvB
- [ ] Fit with the old SvB


# Logs

[[24 January 2025 Friday]]
- Added the old SvB_MA to be made in parallel
- running histAll `source .ci-workflows/analysis-testAll-job.sh`
- converted (After adding SvB_MA_preUL* to the list of histograms to convert)
	- `python stats_analysis/convert_hist_to_json.py --input output/analysis_testAll_job/histAll.coffea`
- [ ] Need to check the acceptance of ZH in SR wrt c++
- C++ total yields: bothZH4b in 
	- ps: 61.91 (568,654 )
	- ps_zh: 49.15 (439,017)
- python (ZH4b only)
	- ps 35.85 + 20.5 
	- ps_zh: 28.48  +  16.0 
- [x] Run with ggZH4b
- on **cmslpc312** 

# Follow-ups


# Links: 



202501241009
