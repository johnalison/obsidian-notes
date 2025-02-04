
|     |            |     |
| --- | ---------- | --- |
| 9   |            |     |
|     | Wes        |     |
| 10  | Stats Chat |     |
|     | Stats Chat |     |
| 11  | Outreach   |     |
|     | HGC        |     |
| 12  | HGC        |     |
|     |            |     |
| 1   |            |     |
|     |            |     |
| 2   |            |     |
|     |            |     |
| 3   | mans       |     |
|     | mans       |     |
| 4   | mans       |     |
|     |            |     |

**W:**
**DW:**
**OT:**
**ex** or **No ex**

---
# The ONE thing: 
- [ ] Closure Test with Run-2 Synthetic data

---
# To Do

- [x] Jeremy Mail
- [x] post exam
- [ ] Pay UPMC $500
- [x] Make Reservation
- [ ] Closure Test with Run-2 Synthetic data
	- [ ] FvT Fits
- [ ] Write [[Wesley Terrill Letter Spring 25]]

---

# Log

Slept in. 

Add Lynn to Parking for the rest of the year

To campus

# Chat w/Wes
- Visited P5

# Stat Chat
- Discussed the uncertainty on the predicted normalization

# Outreach Meeting


# [[CMU HGC MAC Meeting 4 February 2025]]


Package arrived with a bunch of fittings


# Closure Test on Synthetic Data
- Following CL instructions here: https://gitlab.cern.ch/cms-cmu/coffea4bees/-/tree/master/python/classifier#falconrogue
- on rogue01
	- `falcon`
	- `> ssh rogue01`
- Seeing Error with grid cert (Tried to use my userkeys and remake them... same)
	- `> voms-proxy-init -voms cms -rfc --valid 168:0
	Enter GRID pass phrase for this identity:
	Certificate validation error: Signature of a CRL corresponding to this certificates CA is invalid
	User credential is not valid!
- Works if I dont give the `-voms cms` 
- CL says above error only b/c Im outside the container
- container taking a while...
- 
`