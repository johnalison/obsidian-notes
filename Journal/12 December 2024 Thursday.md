
|     |                  |        |
| --- | ---------------- | ------ |
| 9   | FBC2             |        |
|     | FBC2             |        |
| 10  | AE / 2d plotting |        |
|     | plotting         |        |
| 11  | Sindhu           |        |
|     | Sindhu           |        |
| 12  | ~~bbWW~~         | Sindhu |
|     | faculty          |        |
| 1   | faculty          |        |
|     | faculty          |        |
| 2   | Gym              |        |
|     | Gym              |        |
| 3   | Gym              |        |
|     |                  |        |
| 4   |                  |        |
|     |                  |        |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] reskim

---
# To Do

- [ ] Reskim Run3
- [ ] Debug variable binning function
- [x] fix 2d plots
- [x] Jonas Letters
- [ ] Read [[Run2 X->HY->4b]]
- [ ] Update [[Run3 Synthetic Data]]
- [ ] Summary of Wes Annual Review
- [ ] Summary of Sindhu Annual Review
- [ ] Modules Monthly report
- [x] Do Title IX training !
[xx] Coinbase account for Lynn

---

# Log

Up at 7 

M & T to school (M had to walk in snow! complained, but pushed through)

# FBC2
- Synthetic data still factor of 2 too low!
- [ ] Reskim and try again ? 

# [[Run3 Synthetic Data]]
- [ ] Make presentations
- [ ] Reskim

# Chat Sindhu
- Long chat 

Skipped bbWW

# Faculty Meeting
- In person meeting Jan 6th

# Gym / Steamroom
- core / farmers carries / cling / step-ups
- 80% 
- 10' at Tmax = 124

BTC order filled ! 

Chat with AE re:pts
# [[Run-3 4b skims]]
- on **cmslpc303**
- `base_path: root://cmseos.fnal.gov//store/user/jda102/XX4b/2024_v3/`
-  `python runner.py -s -p skimmer/processor/skimmer_4b.py -c  skimmer/metadata/HH4b.yml -y 2022_EE -d data -e E F G -op  skimmer/metadata/ -o picoaod_datasets_data_2022_EE.yml -m  metadata/datasets_HH4b_Run3.yml --condor`
- finished in **2386.692587852478**
- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c  skimmer/metadata/HH4b.yml -y 2022_preEE -d data -e B C D -op  skimmer/metadata/ -o picoaod_datasets_data_2022_preEE.yml -m  metadata/datasets_HH4b_Run3.yml --condor`
- ... Has errors will likely need to rerun... moving on.
- Running now on **cmslpc308**
- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c  skimmer/metadata/HH4b.yml -y 2023_preBPix -d data -e A B C D E F -op  skimmer/metadata/ -o picoaod_datasets_data_2023_preBPix.yml -m  metadata/datasets_HH4b_Run3.yml --condor 
- That fails (removing perdue)  trying BPix...
- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c  skimmer/metadata/HH4b.yml -y 2023_BPix -d data -e D E -op  skimmer/metadata/ -o picoaod_datasets_data_2023_BPix.yml -m metadata/datasets_HH4b_Run3.yml --condor`
# Title IX Training


# Creating Coinbase Account
- johnalison@cmu.edu
- Cannot do it !!!! 

# Submitting Jonas Letters
- Maryland
- UW
- UCSB
- CU
- UCSD
- BU
- USC

Chat Markus

More [[Run-3 4b skims]]
