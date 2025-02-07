


# Logs

[[4 February 2025 Tuesday]]
 Following CL instructions here: https://gitlab.cern.ch/cms-cmu/coffea4bees/-/tree/master/python/classifier#falconrogue
- on rogue01
	- `falcon`
	- `> ssh rogue01`
- Seeing Error with grid cert (Tried to use my userkeys and remake them... same)
	- `> voms-proxy-init -voms cms -rfc --valid 168:0
	Enter GRID pass phrase for this identity:
	Certificate validation error: Signature of a CRL corresponding to this certificates CA is invalid
	User credential is not valid!
- Works if I dont give the `-voms cms` 
- CL says above error only b/c Im outside the container
- container taking a while... I didnt hit enter !!
- proxy all good inside the container.


[[3 February 2025 Monday]]
- [[Jet DeClustering]]
- `python runner.py -m metadata/datasets_HH4b.yml -c analysis/metadata/HH4b_classifier_inputs.yml -d synthetic_data -y UL16_preVFP UL16_postVFP UL17 UL18 -op output/ -o classifier_synthetic_data.coffea`
- Had to set `top_reconstruction_override: fast`
- Looks good... rerunning with output to `root://cmseos.fnal.gov//store/user/jda102/XX4b/2024_v1/`
- Need to make inputs for the other data as well... Turns out I dont... CL has them already
- [>>] Fit JCM to synthetic data


# Follow-ups


# Links: 



202502070932
