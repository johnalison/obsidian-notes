# Timeblock

|     | setup                  |     |
| --- | ---------------------- | --- |
| 9   | [[Cluster Run 3 data]] |     |
|     |                        |     |
| 10  |                        |     |
|     |                        |     |
| 11  |                        |     |
|     | Hoops                  |     |
| 12  | Hoops                  |     |
|     | Hoops                  |     |
| 1   |                        |     |
|     |                        |     |
| 2   | Osher Course           |     |
|     | Osher Course           |     |
| 3   | Osher Course           |     |
|     | Osher Course           |     |
| 4   | Osher Course           |     |
|     |                        |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

# The ONE thing: 
- [ ] [[Run3 Synthetic Data]]


# To Do
- [ ] Re-skim Run3
- [ ] Re: Make Synthetic Data
- [ ] Read HGC TDR

- [ ] 

[[ToDo]]

# Log

Up at 6:15

Trump Wins

M&T to school... early 



# [[Run3 Synthetic Data]]
- [ ] new input pdfs
- [ ] re:synthetic datasets
- [[Cluster Run 3 data]]
	- Trying on condor on cmslpc325:
	` python runner.py  -o synthetic_datasets_cluster_Run3.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix   -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor `
- need to add `jet_clustering` to `condor_transfer_input_files`

[[HGC TDR]]
