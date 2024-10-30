
# Big Picture 
Run2 mixed Classifier tests [[Classifier Studies]]
	- 1) Does JCM matter? / 2) Does ttbar matter ? / 3) Gain from ZZ 4) Gain from ZH 5) Gain  from low SvB SR events ? 
	- Can test 1) 3 4 5 from mixed data old classifier. Need new one for 2
- Run3: Test 4v2 vs 4v3 with synthetic data compare to 3v2 (systematics)


# Does JCM matter ?
CL checking...

# Gain from ZZ Region ?
Best to just redefine the SB when training. 

SB

Resubmit jobs with 
`grep -L Done slurm-v0_offset*.out  | awk '{gsub("slurm-", "jobs_"); gsub("out","sh"); cmd = "sbatch " $0; print cmd; system(cmd)}'

DONE ! Minimal gain

# Gain from both ZZ and ZH Regions ?

DONE ! Minimal Gain

# Gain from low SvB SR events ?

(Not enough PSC bucks to check...)

# Daily Logs

[[14 October 2024 Monday]]
- More [[Setting up Falcon]]
- test job ... very slow on rogue01...  when doing all offsets together... 
- Try one offset at a time ... MUCH faster (?)

[[16 October 2024 Wednesday]]
- Setting up [[PSC Bridges]]
- Submitting SB + ZZSR study
- Submitted all ZZSR fits

[[17 October 2024 Thursday]]
- ZZSR jobs finished...
- looks like I ran out of quota on /jet/home/alison
	- `my_quotas` ... saved in [[PSC Bridges]]
- [x] Need to move submission output to /project
- moving files to filesystems with more space
- Resubmitted failed SB | ZZSR jobs

[[18 October 2024 Friday]]
- Having problems greping bridges
- Checked that the output .pkl files are all there as expected
- sent mail... Bridges2 still having problems
- Submitted jobs to write out FvT

[[21 October 2024 Monday]]
- Looks like Bridges OS is back
- need to check failed jobs "Done" not enough

[[22 October 2024 Tuesday]]
- resubmitted ... seeing cuda errors

[[23 October 2024 Wednesday]]
- setting up master
- submit jobs to average over the kFolds
- copied to LPC (with `python/analysis/copy_from_PSC.py`)
- made all input hists
- did the conversions

[[24 October 2024 Thursday]]
- Cant run runTwoStageClosure ... 
- Fixed with new combine container 
- Running the fits... seem sensible
- Starting FvT fits with ZZ and ZHSR in the SB

[[25 October 2024 Friday]]
- Check files.... need to Rename offset0 files
- Fixed ZH naming ... submitted offsets 1 and 2 
- renames bad offset0 files
- Resubmitted failed jobs
- Start looking at ZZinSB vs SB results

[[26 October 2024 Saturday]]
- checking ZH jobs.. resubmit a few that failed.
- writting out ZZ and ZH in SR files

[[28 October 2024 Monday]]
- Copying ZZ and ZH files to LPC
- needed to update `study_name` in combined FvT script... rerunning
- Recopying
## Follow-ups


## Links: 



202410121123
