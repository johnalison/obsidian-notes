# Info
[[BPix hole]]



# Todo
- [x] Need way to debug datasets in coffee
	- [x] count lumi sections processed
		- [ ] script to check against JSON
	- [xx] ~~count events processed before lumi sections
		- Already doing
	- [xx] ~~check duplicate events
		- Spot check SRs
	- [[Coffea post re lumi counting]]
- [x] Add preselection
- [x] Update Jet pt corrections
- [x]  Rucio requests to LPC ?
	- Looks like they are already there. 

# v2 Thursday Oct 10th
- EOS space: 
- some errors:
- "no missing file errors"
- [x] check lumis
- [x] commit

- Trying skims with blocksite `blocklist_sites: 'T2_US_MIT'` in `/python/skimmer/metadata/HH4b.yml`... didnt help
- Specified allowed sites"
```yaml
allowlist_sites:
    - T3_US_FNALLPC
    - T2_US_Nebraska
    - T2_US_Purdue
    - T3_US_NotreDame
    - T2_US_Caltech
```
...worked!



# v1 Tuesday Oct 8th
- Problems... too many collections/ triggers /events and no LumiBlock checking
- Will delete
## Missing chunks...

## BPix

**ERROR**    **ERROR:root:The whole file is missing:** 
```bash
"root://dcache-cms-xrootd.desy.de:1094//store/data/Run2023D/ParkingHH/NANOAOD/22Sep2023_v2-v1/2560000/c493171c-63f5-4906-b09a-ac5684089bb0.root"
"root://dcache-cms-xrootd.desy.de:1094//store/data/Run2023D/ParkingHH/NANOAOD/22Sep2023_v2-v1/60000/184bebb8-5e35-41d2-86b6-cc02c0307489.root"
"root://dcache-cms-xrootd.desy.de:1094//store/data/Run2023D/ParkingHH/NANOAOD/22Sep2023_v2-v1/60000/69155626-c909-4645-b8e4-31e5024d609a.root"
```

## preBPIX
```bash
ERROR    ERROR:root:Missing chunk:
 [101724, 305172) in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/08aeeda4-e4f1-4390-9430-e577dc10fa74.root"     picoaod.py:250
[0, 109177)       in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/311758d6-b4a6-43b7-8b2a-ac8f40e2ef46.root"          picoaod.py:250
[400148, 500185)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/37b60770-2fd3-4655-b4fc-c453ba94aa43.root"     picoaod.py:250
[209522, 419044)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/42ac3f8a-48f5-4042-b6e4-72106c2e89c6.root"     picoaod.py:250
[289719, 386292)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/45a6e8f1-d57a-4027-9fb2-c163a61e0f6b.root"     picoaod.py:250
[95111, 190222)   in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/78aa0ec7-d875-48e2-ac96-b07f94fefa8d.root"      picoaod.py:250
[285333, 475555)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/78aa0ec7-d875-48e2-ac96-b07f94fefa8d.root"     picoaod.py:250
[96825, 290475)   in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/8e2d93c5-db0f-442d-8b7e-e7cfcb03479e.root"      picoaod.py:250
[484125, 677775)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/8e2d93c5-db0f-442d-8b7e-e7cfcb03479e.root"     picoaod.py:250
[390036, 585054)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/c0a8faf7-1b2d-4d13-9b69-1d7138937e2a.root"     picoaod.py:250
[0, 123771)       in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/30000/38ef63b7-1f50-4da9-a010-0961e1259277.root"            picoaod.py:250
[187722, 375444)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/30000/5d79f9cf-4ea4-4453-bca5-3f65f6f68e9f.root"       picoaod.py:250
[0, 217684)       in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/30000/c3eb25c2-ee41-4996-bcc5-daadd69633f7.root"            picoaod.py:250
[193132, 386264)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/30000/f2fc2cc9-6c4a-477b-a2fb-e77a5d397b7c.root"       picoaod.py:250
[0, 213798)       in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/50000/0d228478-ce15-45db-8e49-79d0f605ccc7.root"            picoaod.py:250
[427596, 534495)  in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/50000/0d228478-ce15-45db-8e49-79d0f605ccc7.root"       picoaod.py:250
[93887, 187774)   in "root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/50000/46f2a209-4608-4348-a50a-f292adeb24a8.root"        picoaod.py:250
```

```bash
ERROR    ERROR:root:The whole file is missing: 
"root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/5e1f2fc8-191b-40c7-a3d2-cac7065482de.root"             picoaod.py:237
"root://cmsxrootd.hep.wisc.edu:1094//store/data/Run2023C/JetMET0/NANOAOD/22Sep2023_v2-v1/2540000/dfb63f3c-3cea-42bf-84a8-5185cd687ada.root"             picoaod.py:237
```









# Mail from AE

Hey  
  
The skim code for Run3 is ready, but it works only for 2023 datasets.  
For 2022, I am getting a weird error, but I have already pinged  
Chuyuan; hopefully, he can help.  
  
In any case, you can start with 2023 datasets. Here are some instructions:  
- Pull the latest code from master.  
- Change the config['base_path'] folder in python/skimmer/metadata/HH4b.yml.  
- Use tmux or screen before submitting the jobs. Running skims will  
take a while.  
- If you want to monitor the jobs using the dashboard, you should  
forward the 10200 port when you do ssh, like: ssh -XY -L  
10200:localhost:10200 @[cmslpc-el9.fnal.gov](http://cmslpc-el9.fnal.gov/)  
- After you open a tmux window, run the container  
- Go to python/ and then run:  
  
python runner.py -s -p skimmer/processor/skimmer_4b.py -c  
skimmer/metadata/HH4b.yml -y 2023_preBPix  -d data -e A B C D E F -op  
skimmer/metadata/ -o picoaod_datasets_data_2023_preBPix.yml -m  
metadata/datasets_HH4b_Run3.yml --condor  
  
python runner.py -s -p skimmer/processor/skimmer_4b.py -c  
skimmer/metadata/HH4b.yml -y 2023_BPix  -d data -e D E -op  
skimmer/metadata/ -o picoaod_datasets_data_2023_BPix.yml -m  
metadata/datasets_HH4b_Run3.yml --condor  
  
Now, in my experience, this will not work, but you can give it a try.  
It can work if you submit one job at a time for different eras (-e  
option). If you do this, don't forget to change the name of the output  
in picoaod_datasets_data_XXXXX.yml  
  
If you want to monitor the jobs in the dashboard while you are  
connected through ssh, you can open a browser and open  
[http://localhost:10200](http://localhost:10200/)  
  
If you have problems with files not getting located, you can play with  
the runner['rucio_regex_sites"] or runner['allowlist_sites"] in  
python/skimmer/metadata/HH4b.yml  
  
Let me know if you have any questions  
cheers,


## Follow-ups


## Links: 



202410081033
