



# Daily Logs
Log about work to cluster Run-3 data.

[[28 October 2024 Monday]]
-  test job... fails
- Looks like selected jets way too loose
- Adding Muons...
- Move seljet cut to 20 GeV
- tmux running 2022_EE on **cmslpc337**... ran in 192 m
	`> python runner.py  -o test_synthetic_datasets_cluster_2022_EE.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_EE   -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml`
	`> python runner.py  -o test_synthetic_datasets_cluster_2022_preEE.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_preEE   -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml`
 
[[29 October 2024 Tuesday]]
- running 2022_preEE on **cmslpc337**
- [[Jet DeClustering]]
- Update **make_jet_splitting_PDFs.py** to take a list of years
- Made clustering output for 2022_EE and 2022_preEE
- Running clustering in 2023_BPix... running 2023_preBPix... done
	 `> python runner.py  -o test_synthetic_datasets_cluster_2023_preBPix.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2023_preBPix   -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml`
	 `> python runner.py  -o test_synthetic_datasets_cluster_2023_BPix.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2023_BPix   -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml`
 
- Made PDFs for all years. 
- Copied PDFs to FNAL
- Testing the synthetic dataset making... looks OK!
	- ...need to turn off TTbar subtraction
	- ...kill `canJet["calibration"]`
- Running the synthetic dataset making on **cmslpc301


[[5 November 2024 Tuesday]]
- Re running clustering with new btagging  on **cmslpc348**.... killed ! 
	`python runner.py  -o synthetic_datasets_cluster_Run3.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix   -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml`
 - ... Killed after **60/161** **[1:10:49

[[6 November 2024 Wednesday]]
- Trying on condor on cmslpc325:... ran in 76 min:  **349** events/s total (1593337/4561.965741157532)
	`python runner.py  -o synthetic_datasets_cluster_Run3.coffea -d data  -p analysis/processors/processor_cluster_4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix   -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor `

[[8 December 2024 Sunday]]
- Running on **cmslpc319**
- testing with
	`python runner.py -t -o test_synthetic_datasets_cluster_Run3.coffea -d data -p analysis/processors/processor_cluster_4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml`
- running on condor with 
	`python runner.py  -o synthetic_datasets_cluster_Run3.coffea -d data -p analysis/processors/processor_cluster_4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix -op hists/ -m metadata/datasets_HH4b_Run3_fourTag.yml -c analysis/metadata/cluster_4b_noTTSubtraction.yml --condor`
- Ran in **10651.310122966766** s = 177m
- Made splitting pdfs [[Jet DeClustering]]
	- `python  jet_clustering/make_jet_splitting_PDFs.py hists/synthetic_datasets_cluster_Run3.coffea --years Run3   --out jet_clustering/jet-splitting-PDFs-00-08-02`
- Making synthetic dataset with new pdfs ...  **91m56.841s**
# Follow-ups


# Links: 

[[Jet DeClustering]]
[[HH4b]]


202410300926
