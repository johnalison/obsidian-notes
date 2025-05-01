
|     | setup                  |     |
| --- | ---------------------- | --- |
| 9   | Jim Orientation        |     |
|     | skims                  |     |
| 10  | Skims / Setup May      |     |
|     | Review April           |     |
| 11  | Stats Chat             |     |
|     | Stats Chat             |     |
| 12  | Walk with H            |     |
|     | Faculty Meeting        |     |
| 1   | Faculty Meeting        |     |
|     | Chat Curtis / Reinhard |     |
| 2   | email re:office hours  |     |
|     | Office Hours           |     |
| 3   | Office Hours           |     |
|     |                        |     |
| 4   |                        |     |
|     | Marlo to BBall         |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] Skims

---
# To Do

- [x] Setup May 
- [x] Review April 
- [ ] Iterate on HGC Slides:  20th Final talks 27th. Review June 3-5
- [ ] Setup ORG mode
- [x] Skim 4b 
	- [x] Check cutflow
	- [ ] Remake Synthetic datasets
- [ ] Write up [[MAC Meeting 30 April 2025]]
- [ ] Check out Aider and Aider.el

---

# Log

Up at 7 

M&T to school ... H to work.. still no power

setup

# Jim Pacard starts today !
- Oriented him

FB2C Meeting canceled 

SUSY SoS PAS out: https://cds.cern.ch/record/2930836?ln=en 
 [[ToAddToCV]]

Set up May

# [[Run-3 4b skims]]
- Skimming on **cmslpc302**
- Add skims output to **archive/skims_Run3_2025/**
- Making merged dataset
	- `python metadata/merge_yaml_datasets.py -m metadata/datasets_HH4b_Run3.yml -o metadata/datasets_HH4b_Run3_2025_Run3_skims.yml -f ../archive/skims_Run3_2025/picoaod_datasets_data_202*`
- Making 4b skims
	- `python runner.py -s -p skimmer/processor/skimmer_4b.py -c skimmer/metadata/HH4b_fourTag.yml -y 2022_EE 2022_preEE 2023_BPix 2023_preBPix -d data -op skimmer/metadata/ -o picoaod_datasets_fourTag_data_Run3_v3.yml -m metadata/datasets_HH4b_Run3.yml --condor``
- Failing... missing files... Trying locally... works!
- Made dataset:
	- `python metadata/merge_yaml_datasets.py -m metadata/datasets_HH4b_Run3.yml -o metadata/datasets_HH4b_Run3_fourTag_2025_skims.yml -f skimmer/metadata/picoaod_datasets_fourTag_data_Run3_2025_skims.yml`
- Testing
	- `python runner.py -o data_Run3_2025_skims.coffea -d data -p analysis/processors/processor_HH4b.py -y 2022_preEE 2022_EE 2023_preBPix 2023_BPix -op output/synthetic_dataset_analyze_all -c analysis/metadata/HH4b_run_fastTopReco.yml -m metadata/datasets_HH4b_Run3_fourTag_2025_skims.yml`
- Now on **cmslpc336**

# Reviewed April
- [ ] Xfinitiy 
- [ ] Organize FBC2 Meetings
- [ ] [[ProgressReport 25 April 2025]]
- [ ] Call Tax man

## [[Stats Data-Driven SR]]
- On Zoom
- Soheun's claim is that the rejection rate depends on teh number of bins


# Emacs Aider
- https://github.com/tninja/aider.el


# [[Faculty Meeting]]
- Teaching Assignments: in coming
- Dean asked rachel to stay on as department head, she wants to do it
- No merit raises
- Hooding is Friday May 9th
- Sunday is the physics diploma ceremony
- Physics stock room going away

Introduced Jim to Curtis

Testing skims... see above

# Office Hours 
- Chance

# Emacs Config
- [ ] Projectile and Magit https://systemcrafters.net/emacs-from-scratch/projectile-and-magit/
- Org Mode basics
- https://www.youtube.com/watch?v=VcgjTEa0kU4
- https://github.com/daviwil/emacs-from-scratch/blob/1a13fcf0dd6afb41fce71bf93c5571931999fed8/init.el
- orgmode.org
- ORG Mode Tricks
	- Control + enter makes a new bullet
	- Alt + enter make a new bullet right where you are
	- C-C C-X C-b

Working ORG mode