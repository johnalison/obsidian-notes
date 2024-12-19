
|     | setup                   |     |
| --- | ----------------------- | --- |
| 9   | FB2C                    |     |
|     | Rong Shong              |     |
| 10  | [[Run3 Synthetic Data]] |     |
|     |                         |     |
| 11  | Stats Chat              |     |
|     | Stats Chat              |     |
| 12  |                         |     |
|     |                         |     |
| 1   | Osher Lunch             |     |
|     | Osher Lunch             |     |
| 2   | Osher Lunch             |     |
|     | Berman                  |     |
| 3   | Gym                     |     |
|     | Gym                     |     |
| 4   | Gym                     |     |
|     |                         |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [x]  Iterate with Rong Shong

---
# To Do

- [x]  Write up Annual Reviews
- [x] Condor Problem
- [ ] Add CL studies to AN
- [ ] Read [[Run2 X->HY->4b]]
- [ ] mixed data c++ vs python
- [x]  Iterate with Rong Shong
- [ ] Synthetic data... 
	- [ ] debug threshold 
	- [ ] new splitting templates

---

# Log

Up at 7

Fast Day 3

[[Sindhu Murthy Annual Review 2024]]

[[Wesley Terrill Annual Review 2024]]

- [ ] Ping Lipika to update the BCR

# [[Run3 Synthetic Data]]
- changed the b-fail flat to 30 Gev
- Still have condor errors
	- update to master
	- rerun bootstrap
	- Test job fails
	- works with `--dask` !
- Redoing the synthetic data sets v4 with 30 GeV b-jet filter
- `--dask` sets up a local dask cluster and only has access to interactive node cpus
-  from AE:  
	- known problem: [https://github.com/CoffeaTeam/lpcjobqueue/issues/38](https://github.com/CoffeaTeam/lpcjobqueue/issues/38)
	- fix `pip install htcondor==24.2.1`
	- Need to do this each time you `source set_shell.sh`
- Now running with `--condor` ! 
- Failed ... retrying... same error.... removed output directory and trying again

# Stats chat
- Soheun poster: 1hr, 
- **DARMA** (Data-driven Algorithm for signal Region-based Model-Agnostic signals) ? 
- Should we varry the kernel during the ensembling ?
	- Complicates interpretations
- Use CLUE to show that smearing works 

# Chat w/Chuyuan 
- Will put together slides/comitte for annual review
- Target September thesis

More [[Run3 Synthetic Data]]

# Osher Lunch
 - good convos

# Chat with Berman
 - [ ] Ping sebastian.wuchterl
 - Think Swiss


