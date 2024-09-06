
CL:
Most parts of the kappa scan plots work fine except for the stacked hists (I am using another plot library so it works in a little bit different way). I am trying to figure it out and I need to resolve some conflicts before merge. I noticed some hists e.g. nPVs, nPVGood, ... are using Regular axis, maybe Integer axis works better which can be achieved by replacing 

(101, -0.5, 100.5, (name, label)) with (0, 101, (name, label)).

I also started testing the evaluation code, but it is not ready yet.

AE: Has new skims, will make friend trees with trig weights and ttbar reco

JA: Pushing on synthetic datasets.  Need to think about residual mismodelling

SM: Not much progress...


## Follow-ups


## Links: 

[[CMU 4b Chat 30 August 2024]]

202409061358
