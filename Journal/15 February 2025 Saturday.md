

---
# To Do

- [x] Fix overflow CI
- [ ] Comment on REU program 
- [ ] Make synthetic data files
- [ ] Finish [[ProgressReport 14 February 2025]]

---

# Log

Up at 8:30 

Snow 

Disabled triggerswieghts cutflow to pass CI

# [[Synthetic Data Closure]]
- `singularity exec -B .:/srv --nv --pwd /srv docker://chuyuanliu/heptools:ml bash --init-file /entrypoint.sh`
- `voms-proxy-init --rfc --voms cms -valid 192:00`
- Added synthetic to datasets being evaluated
- Is the TTBar PS data being loaded ?
- Pinged Chuyuan

