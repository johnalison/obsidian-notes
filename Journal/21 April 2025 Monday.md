
---

|     | Prep         |     |
| --- | ------------ | --- |
| 9   | Taught       |     |
|     | Taught       |     |
| 10  | Chat AE      |     |
|     | Chat AE      |     |
| 11  | Setup Emacs  |     |
|     | setup        |     |
| 12  | Hoops        |     |
|     | Hoops        |     |
| 1   | Hoops        |     |
|     | Hoops        |     |
| 2   | Hoops        |     |
|     | Chat AE / SM |     |
| 3   | Chat AE / SM |     |
|     | Colloq       |     |
| 4   | Colloq       |     |
|     |              |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] Cutflow debugging

---
# To Do

- [ ] Make klX work interactively in iPlot
- [x] Renewal Materials for Teachers Program
- [ ]  Staff award for Jessica
- [ ] Cutflow Comparison
- [ ] 

---

# Log

Up at 7

Ride to school with S

Curtis asked to be part of MCS planning committee. 

Get emacs setup on LPC


# Taught
- Double slit

`diskutil unmount force ~/RemoteServer`

# Getting remote emacs working:
- playing around with sshfs... not working
- Trying emacs TRAMP: 
`/ssh:jda102@cmslpc-el9.fnal.gov:/uscms/home/jda102/nobackup/HH4b/Run3/coffea4bees/`
- works great!! 

Chat Garett Good 

# Hoops
- Great wins... played well

# Chat with AE and SM
- Double peak from DR(jj) ?

# Colloq
- YBCO major breakthrough
- New breakthrough in Fe based systems in 2008


# [[Run3 HH4b Cutflow Challenge]]
- [[Run-3 4b skims]]
- checking which file has the run I care about
- `dasgoclient --query="run dataset=/JetMET/Run2022C-22Sep2023-v1/NANOAOD"`
- `> python runner.py -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b.yml -y 2022_preEE -d data -e B  -op skimmer/metadata/ -o picoaod_datasets_data_2022_preEE_debug.yml -m metadata/datasets_HH4b_Run3.yml --condor`
- Running on **cmslpc332**
- Adding debugging output

Kids Home from school

More [[Run3 HH4b Cutflow Challenge]]

- [ ] check out Claude code