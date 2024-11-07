# Timeblock

|     | setup                   |     |
| --- | ----------------------- | --- |
| 9   | [[Cluster Run 3 data]]  |     |
|     | HGC TDR                 |     |
| 10  | HGC TDR                 |     |
|     | [[Cluster Run 3 data]]  |     |
| 11  | [[Cluster Run 3 data]]  |     |
|     | Hoops                   |     |
| 12  | Hoops                   |     |
|     | Hoops                   |     |
| 1   | [[Run3 Synthetic Data]] |     |
|     | [[Run3 Synthetic Data]] |     |
| 2   | Osher Course            |     |
|     | Osher Course            |     |
| 3   | Osher Course            |     |
|     | Osher Course            |     |
| 4   | Osher Course            |     |
|     |                         |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

# The ONE thing: 
- [ ] [[Run3 Synthetic Data]]


# To Do
- [ ] Re-skim Run3
- [x] Re: Make Synthetic Data
- [ ] Read HGC TDR
- [ ] 

[[ToDo]]

# Log

Up at 6:15

Trump Wins: 
- https://www.betonit.ai/p/going-dark-for-election-week?utm_source=post-email-title&publication_id=820634&post_id=149923127&utm_campaign=email-post-title&isFreemail=true&r=lewoe&triedRedirect=true&utm_medium=email
- https://marginalrevolution.com/marginalrevolution/2024/11/what-is-the-best-case-scenario-for-a-trump-presidency.html
- https://www.econlib.org/archives/2012/03/my_beautiful_bu.html
- https://www.betonit.ai/p/make_your_own_bhtml?utm_source=substack&utm_medium=email

M&T to school... early 



# [[Run3 Synthetic Data]]
- [x] new input pdfs
- [x] re:synthetic datasets
- [[Cluster Run 3 data]]
	- Trying on condor on cmslpc325:... ran in 76 min:  **349** **events/s total (****1593337****/****4561.965741157532****)**
	`python runner.py  -o synthetic_datasets_cluster_Run3.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix   -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor `
- need to add `jet_clustering` to `condor_transfer_input_files`
- making PDFS 00-08-01 recorded in [[Jet DeClustering]]
	` python  jet_clustering/make_jet_splitting_PDFs.py hists/synthetic_datasets_cluster_Run3.coffea --years Run3   --out jet_clustering/jet-splitting-PDFs-00-08-01`
- [ ] plot of clustering multiplicity types 
- Remaking synthetic data (on condor) cmslpc325.. outputs to /store/user/jda102/XX4b/2024_v2 .. finished in **45m2.045s**... no errors ! 
- Making hists from new synthetic datasets on condor ... **27m52.183s** ... better local!
- ` time python runner.py  -o synthetic_data_Run3_seedXXX-00-08-01.coffea -d  data synthetic_data -p analysis/processors/processor_HH4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix  -op hists -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag.yml --condor  `
- Made presentations with 00-08-01



Reading [[HGC TDR]]

# Hoops 
- core / 3s and 4s / played well 


# Osher Class #1 
- went well ! Newtons dream + Relativity + 1/2 QM 
- [[Osher Fall Particle Physics Course]]

