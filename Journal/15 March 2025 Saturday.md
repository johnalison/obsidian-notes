- [>>] Make sum/SB/SR plots presentation
- [x] Code to do combined regions
- [>>] Skim data for truth events
- [x] Write  [[ProgressReport 14 March 2025]]
- [x] Finances

---

# Log

Up at 8

Reviewed Wes' Approval talk slides:
	https://docs.google.com/presentation/d/1hbuxgVxv5VvY7FCci0u0AU5zKmRtdyT8o8K2KSQGueY/edit#slide=id.g2e33be170a5_0_12

Finished [[ProgressReport 14 March 2025]]

# Did Finances 1.9/1.8


# Starting  [[DOE Review Li Zepeng]] 
- Read it 
- [>>] Drafting report

# [[Run2 HH4b AN]]
- [>>] ROC plots for various signal points
- Solid first draft

[[Drawing 2025-03-15 16.11.36.excalidraw]]
	Maybe re-weight dR(close) vs dR(other) mass plane.

Did FNAL training

Playing around with combined regions

Some [[Fly By Night Physics]]
Some [[For a new Liberty]]

# Starting [[Truth Skimmer]] 
- Testing with
	- `sed -e "s#base_path.*#base_path: \/srv\/python\/output\/skimmer_test_job\/#" -e "s/\#max.*/maxchunks: 5/" -e "s/\#test.*/test_files: 1/" -e "s/2024_.*/tmp\//" skimmer/metadata/HH4b_truth.yml > $OUTPUT_DIR/HH4b_truth.yml`
	- `python runner.py -t -s -p skimmer/processor/skimmer_truth.py -c $OUTPUT_DIR/HH4b_truth.yml -y UL18 -d GluGluToHHTo4B_cHHH0 -op $OUTPUT_DIR -o picoaod_datasets_GluGluToHHTo4B_cHHH0_UL18.yml -m $OUTPUT_DIR/datasets_HH4b.yml`
- [x] Basic bjet selection
- [x] only keep needed variables
- changing output broken when using the preselct ... mismatch between events and branches
- Got it working !!!
- [>>] Remove the GenParts

Lots of late night debugging 