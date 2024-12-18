

|     | setup               |           |
| --- | ------------------- | --------- |
| 9   | w/kids              |           |
|     | ~~Wes (via email)~~ | To campus |
| 10  | 4b skims            |           |
|     | Chiller             |           |
| 11  | Unpack chiller      |           |
|     | Unpack chiller      |           |
| 12  | Mac Meeting         |           |
|     | home                |           |
| 1   | T down              |           |
|     | T down              |           |
| 2   | M down              |           |
|     | MRST !              |           |
| 3   | Mans Meeting        |           |
|     | Mans Meeting        |           |
| 4   | Mans Meeting        |           |
|     | mails               |           |

**W:** 4
**DW:** 0
**OT:** 0
 **No ex**

---
# The ONE thing: 
- [x] 4b skims
- [ ] [[Run3 Synthetic Data]]

---
# To Do

- [x] Chiller Delivery ?
 [>>] Annual Review Write-ups: Wes and Sindhu
- [x] Skim4b Run3 v3
 [>>] New synthetic data presentations
 [>>] Add CL studies to AN
 [>>] Aishik Ghosh visit (Feb 5th)
 [>>]  Read [[Run2 X->HY->4b]]
 [>>] Letter for Diane (Due January 20, 2025.)

---

# Log

Up at 7

Starting the Fast!

# [[Run-3 4b skims]]
- on **cmslpc318**
- Trying 4b skims locally
	- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b_fourTag.yml -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -d data -op skimmer/metadata/ -o picoaod_datasets_fourTag_data_Run3_v3.yml -m metadata/datasets_HH4b_Run3.yml`
* ran in 1508 s = 25min
- Merged fourTag skim datasets 
	- `python metadata/merge_yaml_datasets.py -m metadata/datasets_HH4b_Run3.yml -o metadata/datasets_HH4b_Run3_fourTag_v3.yml -f skimmer/metadata/picoaod_datasets_fourTag_data_Run3_v3.yml `


Wes update over email

To campus

# Vanguard Moves
- sold $8,982.96 of RIOT ---> bought $9,294.76 (23 shares) of MSTR
- selling 6,760.48 of Riot (will buy MSTR) --> bought 6,429.12 (16 shares) of MSTR


# [[Run3 Synthetic Data]]
- on **cmslpc327**
- Making v3 synthetic datasets
- `source  .ci-workflows/synthetic-dataset-make-dataset-all.sh`
	- `time python runner.py -s -p skimmer/processor/make_declustered_data_4b.py -c skimmer/metadata/declustering_noTT_subtraction_seed_${new_seed}.yml -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -d data -op skimmer/metadata/ -o picoaod_datasets_declustered_data_Run3_v3_seed${new_seed}.yml -m metadata/datasets_HH4b_Run3_fourTag_v3.yml`
- condor fails... doing locallly ... taking a looong time... 
- 


# Chiller Delivered ! 
- Unpacked with Jonas 

# [[CMU HGC Mac Meeting 17 December 2024]]


Home

[[HGC Transfer Tape BCR]]


# Mans Meeting BCR
* There are overheads ~20% but vary by University (which is why my numbers arent identical)
- https://indico.cern.ch/event/1356090/contributions/5710303/attachments/2768555/4823054/MMStand-ShoppingList.pdf
- from https://indico.cern.ch/event/1356090/
- https://vastitec.com/en/products-2/safety-2/high-voltage-switching-system/
- https://www.tek.com/en/products/keithley/source-measure-units/2400-standard-series-sourcemeter
- [x] Ping Rong Shoang about mimimum requirements
- [x] Ping Joe and Nural about HV 2410


Mio now has a grade of 110 on Article 1! 
- Sent mail to Brendan 

# Home Depot
- got door fastener... wont fit !


Some [[Case Against Education]]
Start [[Knowledge, Reality, and Value]]
