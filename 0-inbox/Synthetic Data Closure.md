
# Fitting Instructions from CL

Here are the steps to set up environment and run the synthetic training on rogue01/02
(require MR445)

The following only need to be done once:
- setup the apptainer tmp/cache dir and install grid certificate:
    following the [step 1&2](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/tree/master/python/classifier#falconrogue)

Then for each run:
- start a container following the  [step 3](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/tree/master/python/classifier#falconrogue)
  (the line: source ./classifier/install.sh is optional if you don't directly use the pyml.py cli)

For synthetic dataset training:
- modify the lines marked as TODO in the following files:

classifier/config/workflows/synthetic/train.yml:
      [**L29 the path to JCM weights for each synthetic data**](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/classifier/config/workflows/synthetic/train.yml#L29)
        the python format can be used to specify the synthetic seed e.g. if the weights are stored in the following yml files:
          JCM/synthetic_seed0/jetCombinatoricModel_SB.yml@@JCM_weights
          JCM/synthetic_seed1/jetCombinatoricModel_SB.yml@@JCM_weights
       then the following can be used:
         JCM/synthetic_seed{synthetic}/jetCombinatoricModel_SB.yml@@JCM_weights
       where the {synthetic} will be replaced by the string from the dict passed through -template e.g. in  [L12 of run.sh](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/classifier/config/workflows/synthetic/run.sh#L12) t the user and synthetic are passed
     **[L50 the base path to store the models and metadata](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/classifier/config/workflows/synthetic/train.yml#L50)**

classifier/config/workflows/synthetic/evaluate.yml
   **[L24 the path to load model](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/classifier/config/workflows/synthetic/evaluate.yml#L24)**
        this should be the same as L50 of train.yml but adding a result.json to the end
    **[L37 the base path to store the evaluated friend trees](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/classifier/config/workflows/synthetic/evaluate.yml#L37)**

The train.yml will train on 3b data, 4b synthetic, 3b+4b ttbar
The evaluate.yml will evaluate 3b+4b data (since 3b and 4b data are stored in the same root file)

- run the following:
  bash classifier/config/workflows/synthetic/run.sh $LPCUSER
 
  where the $LPCUSER is the lpc username, in order to store on eos.

  if you get
  OSError: [Errno 98] Address already in use
  try other ports for monitor e.g.
  bash classifier/config/workflows/synthetic/run.sh $LPCUSER 10100
  this is because someone is using the default port 10200 (e.g. I am running on the same node)

Let me know if you have any question



# Logs



[[15 February 2025 Saturday]]
- `singularity exec -B .:/srv --nv --pwd /srv docker://chuyuanliu/heptools:ml bash --init-file /entrypoint.sh`
- `voms-proxy-init --rfc --voms cms -valid 192:00`
- Added synthetic to datasets being evaluated
- Is the TTBar PS data being loaded ?... No it was not
- Pinged Chuyuan
- re-training with PSData
- Testing on **cmslpc336**
	- `source .ci-workflows/synthetic-dataset-closure.sh `
- Still see high FvT values
- Running the evaluation on the synthetic data ... works
- Added cut for passFvT5 and 50
- running the data with the FvT cuts
- running on  **cmslpc336**


[[14 February 2025 Friday]]
- Data finished in **152m35.996s**
- [x] Debug synthetic data ... Is it needed ?
- Running ttbar ... bailed. 
- Chat AE: can wget the files and merge.
	- Download ttbar files locally, scp to LPC, merge
	- `python analysis/tools/merge_coffea_files.py -o output/hist__TT/histAll_TTbar.coffea -f output/hist__TT/hist__TTTo*coffea`
- Made plots comparing background synthetic data... FvT way off!
- [x] Make FvT files for synthetic data

[[13 February 2025 Thursday]]
- Retrying on **cmslpc317** with only the data
- data works!
- [>>] Debug synthetic data ... Is it needed ?

[[12 February 2025 Wednesday]]
- Trying to train again.. CL fixed the container
- Setup singularity ... reinstalled (good sign)
- `> singularity exec -B .:/srv --nv --pwd /srv docker://chuyuanliu/heptools:ml bash --init-file /entrypoint.sh`
- Now training runs great! 
	- `bash classifier/config/workflows/synthetic/run.sh jda102`
- Done **0:05:28****.****570593**
- Now need to run with FvT weights : example in `HH4b_example_FvT.yml`
- Made `HH4b_synthetic_closure.yml`
- `source synthetic-dataset-closure.sh`
- Looks like a miss match between files names in json and file paths on eos... pinged CL
- Was giving the wrong input datasets file now updated.
- OK working now running on **cmslpc317**
- Crashed... .Should run the data/TTbar Separately ....

[[11 February 2025 Tuesday]]
- `apptainer exec -B .:/srv --nv --pwd /srv docker://chuyuanliu/heptools:ml bash --init-file /entrypoint.sh`
- Running the fit... seeing errors... sent mail to CL


[[10 February 2025 Monday]]
- [x] Fit JCM to synthetic data
- Making synthetic data histograms:
- `time python runner.py -o synthetic_data_RunII_seedXXX.coffea -d synthetic_data  -p analysis/processors/processor_HH4b.py -y UL17 UL18 UL16_preVFP UL16_postVFP -op ${OUTPUT_DIR} -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_fourTag.yml`
- Fitting JCM
- `python analysis/make_weights.py -o testJCM_Coffea_SyntheticData -c passPreSel -r SB --combine_input_file -i output/histAll.coffea output/synthetic_dataset_analyze_all/synthetic_data_RunII_seedXXX.coffea --data4bName syn_v0 -m plots/metadata/plotsJCMSyntheticData.yml`
- committed and pushed changes



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
