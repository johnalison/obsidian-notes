Skimmer for making input for stats studies

# Daily Logs
## [[15 March 2025 Saturday]]
- Testing with
	- `sed -e "s#base_path.*#base_path: \/srv\/python\/output\/skimmer_test_job\/#" -e "s/\#max.*/maxchunks: 5/" -e "s/\#test.*/test_files: 1/" -e "s/2024_.*/tmp\//" skimmer/metadata/HH4b_truth.yml > $OUTPUT_DIR/HH4b_truth.yml`
	- `python runner.py -t -s -p skimmer/processor/skimmer_truth.py -c $OUTPUT_DIR/HH4b_truth.yml -y UL18 -d GluGluToHHTo4B_cHHH0 -op $OUTPUT_DIR -o picoaod_datasets_GluGluToHHTo4B_cHHH0_UL18.yml -m $OUTPUT_DIR/datasets_HH4b.yml`
- [x] Basic bjet selection
- [x] only keep needed variables
- changing output broken when using the preselct ... mismatch between events and branches
- Got it working !!!
- [>>] Remove the GenParts


# Follow-ups


# Links: 



202503230845
