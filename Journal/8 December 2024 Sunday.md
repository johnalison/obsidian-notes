
---

# Log

Up at 8:30 

Some [[Case Against Education]]


Remaking synthetric datasets:

# [[Cluster Run 3 data]]
- Running on **cmslpc319**
- testing with
	`python runner.py -t -o test_synthetic_datasets_cluster_Run3.coffea -d data -p analysis/processors/processor_cluster_4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml`
- running on condor with 
	`python runner.py  -o synthetic_datasets_cluster_Run3.coffea -d data -p analysis/processors/processor_cluster_4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor`
- Ran in **10651.310122966766** s = 177m
- 