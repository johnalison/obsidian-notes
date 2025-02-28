

# Logs


[[3 February 2025 Monday]]
- Merging cut on status for genParticles.
- Maybe this is why the gaussian kernel failed before... YES! 


[[28 January 2025 Tuesday]]
- Running the signal 
- `python runner.py  -o signal.coffea -d ZZ4b ZH4b ggZH4b GluGluToHHTo4B_cHHH1 -p analysis/processors/processor_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml`
- truth 4b there for ZZ and ZH....checking ZH
- Found that with out a cut on status Im getting more than 4 bjets
- Only the HH4b has the status in the genParticles ... need to rerun on nano
- ` python runner.py -t  -o signal.coffea -d ZZ4b ZH4b ggZH4b GluGluToHHTo4B_cHHH1  -p analysis/processors/processor_HH4b.py -y UL18  -op output/analysis_test_job -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_nano.yml `
- Running on **cmslpc339**


[[26 November 2024 Tuesday]]
- move truth function to `helpers/truth_tools`
- `python runner.py -t -o test.coffea -d ZH4b ZZ4b GluGluToHHTo4B_cHHH1 -p analysis/processors/processor_HH4b.py -y UL18  -op $OUTPUT_DIR -m $DATASETS
- added truth_v4b to event... adding histogram
- added a first pass of histograms
- pushed first version
 [>>] Code to make plots 


# Follow-ups

[[4b code base]]

# Links: 



202502251121
