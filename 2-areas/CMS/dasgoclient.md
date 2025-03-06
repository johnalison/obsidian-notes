
Can run from vanilla LPC 

See 

```bash
dasgoclient --examples
```

```bash
dasgoclient --query="run,lumi dataset=/ParkingHH/Run2023D-22Sep2023_v1-v1/NANOAOD" -json
dasgoclient --query="run dataset=/ParkingHH/Run2023D-22Sep2023_v1-v1/NANOAOD"
dasgoclient --query="lumi dataset=/ParkingHH/Run2023D-22Sep2023_v1-v1/NANOAOD"
dasgoclient --query="summary dataset=/ParkingHH/Run2023D-22Sep2023_v1-v1/NANOAOD" -json > python/skimmer/metadata/das_summary_ParkingHH_Run2023D-22Sep2023_v1-v1_NANOAOD.json
```


## DAS

Get the dataset from the file name

```
dasgoclient -query="dataset file=/store/mc/RunIIAutumn18NanoAODv5/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/Nano1June2019_102X_upgrade2018_realistic_v19-v1/250000/14933F79-95FB-354D-A917-E19B5C005037.root"
```

Get the parent file from a file name

```
dasgoclient -query="parent file=/store/mc/RunIIAutumn18NanoAODv5/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/NANOAODSIM/Nano1June2019_102X_upgrade2018_realistic_v19-v1/250000/14933F79-95FB-354D-A917-E19B5C005037.root"
```

## To dump python

```python
process.dumpPython() 
```


## Follow-ups


## Links: 

[[CMS]]
[[DAS]]


202410111546
