# Timeblock

|     |                 |     |
| --- | --------------- | --- |
| 9   | Progress Report |     |
|     | Progress Report |     |
| 10  | JetDeclustering |     |
|     | JetDeclustering |     |
| 11  | JetDeclustering |     |
|     | JetDeclustering |     |
| 12  | HEP Lunch       |     |
|     | HEP Lunch       |     |
| 1   | HEP Lunch       |     |
|     | Stamps Kickoff  |     |
| 2   | CMS H->4b       |     |
|     | JetDeclustering |     |
| 3   | CMU CMS         |     |
|     | CMU CMS         |     |
| 4   | Slides          |     |
|     | Slides          |     |

**W:**
**DW:**
**OT:**
**ex** or **~~ex~~**

# The ONE thing: 
- [ ] Jet Declustering


# To Do
- [x] Ping Eva Contact
- [ ] Slides for Wednesday
- [ ] CAM Training
- [ ] Read HGC TDR
- [ ] Update skimmer CI: Compare cutflow during skim vs later processing vs known values
- [ ] clean up mixed data flags
- [ ] Update printCutFlow to compare cutflows
- [ ] Convert c++ trigger code to python
- [ ] Sign tonys paper


# Log

Up at 7

M&T to school.

# [[mixed2.0]]
- Testing running on synthetic datasets
- Running on 304
- Finding errors during skimming:
```yaml
  data_UL16_postVFPG:
     count: 877903.0
     cutFlowFourTag:
       all: 487725.0
```
- Test if error from picosize = 10 x chunksize (running with both **100000**) **87m59.704s**
	.. See the same issue
- Now running without max_chunks = 5... Seems to fix the problem!
- Running all years without max_chunks
- Explains why I wasn't seeing all the expected 93 subjobs !
- All good now!  
- Cleaning up! .. Need to update systematics cutflow test and analysis-cutflow-job

[[ProgressReport 30 August 2024]]

Sent Eva contact an email

Some work on JetDeClustering slides

# Hep Lunch

# Stamps Kick off

[[CMU 4b Chat 30 August 2024]]

[[CMU Round Table 30 August 2024]]


