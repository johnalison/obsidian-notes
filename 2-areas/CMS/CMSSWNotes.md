[[CMS]]
# Grid certificate

```
voms-proxy-init -rfc -voms cms -valid 192:00
```

## Getting a trigger menu:

In a release set up on lxplus

```
hltGetConfiguration orcoff:/cdaq/physics/Run2018/2e34/v3.6.1/HLT/V2 > hlt_menu_2018.py
```

where `/cdaq/physics/Run2018/2e34/v3.6.1/HLT/V2` is the HLT key your interested in

The HLT Key can be found from the run report in data
eg:
https://cmsoms.cern.ch/cms/runs/report?cms_run=325117&cms_run_sequence=GLOBAL-RUN
(Not sure yet where to get this in MC)

## How to check L1 Prescales

https://cmsoms.cern.ch/cms/triggers/l1_rates?cms_run=324980&props.4809_4806.selected%5B0%5D=L1A%20Physics

Then click on the bottom left triangle of lines in the "L1 Algo Triggers" box. Then you can enter a string in the filter box.

## xrood prefixes

- You should use the following to access files in the US.

   'root://cmsxrootd.fnal.gov'

('root:://cmsxrootd-site.fnal.gov' is restricted to files in either T1_US_FNAL_Disk or T3_US_FNALLPC.)

- To write to eos on FNAL

   `root://cmseos.fnal.gov/` 

- Global redirect

   `root://cms-xrd-global.cern.ch/`


## Making NanoAODs

https://twiki.cern.ch/twiki/bin/view/CMSPublic/WorkBookNanoAOD#Running_on_various_datasets_from

```
myNanoProdMc -s NANO --mc --eventcontent NANOAODSIM --datatier NANOAODSIM --no_exec --conditions 102X_upgrade2018_realistic_v20 --era Run2_2018,run2_nanoAOD_102Xv1
```

## Determining Global Tags 

  - Hot-tip: global tag is often in the file or dataset name. 

 - Great links:

      https://twiki.cern.ch/twiki/bin/viewauth/CMS/DCUserPage

 - Good links:

      https://twiki.cern.ch/twiki/bin/viewauth/CMS/PdmVAnalysisSummaryTable
      
      https://twiki.cern.ch/twiki/bin/view/CMS/PdmV2018Analysis
      
      https://twiki.cern.ch/twiki/bin/view/CMSPublic/SWGuideFrontierConditions


## DAS

See [[dasgoclient]]


## Crab

configuration file
https://twiki.cern.ch/twiki/bin/view/CMSPublic/CRAB3ConfigurationFile