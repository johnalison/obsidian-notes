

---
# To Do

- [x] Fix overflow CI
- [x] Comment on REU program 
- [ ] Make synthetic data files
- [x] Finish [[ProgressReport 14 February 2025]]

---

# Log

Up at 8:30 

Snow 

Disabled triggerswieghts cutflow to pass CI

# [[Synthetic Data Closure]]
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

Did REU comments

Some [[I See Satan Fall Like Lightning]]

To Heat check for coffee, rite aid for creamer

# In Defense of Illegal Immigration
- https://fakenous.substack.com/p/in-defense-of-illegal-immigration-2bd?utm_source=post-email-title&publication_id=863919&post_id=155787087&utm_campaign=email-post-title&isFreemail=false&r=lewoe&triedRedirect=true&utm_medium=email


More [[Synthetic Data Closure]]

Some [[ProgressReport 14 February 2025]]

# Did Finances 2.2/2.1

Some [[MacBeth]]
Some [[Fly By Night Physics]]

More [[Synthetic Data Closure]]