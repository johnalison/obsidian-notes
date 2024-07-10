[[CMS]]

-  the lifetime of hadrons containing b quarks is of the order of 1.5 ps, while the lifetime of c hadrons is 1 ps or less.

- The impact parameter is defined to be positive or negative, with a
  positive sign indicating that the track is produced “upstream”.
  This means that the angle between the impact parameter vector and
  the jet axis is smaller than pi/2, where the jet axis is defined by
  the primary vertex and the direction of the jet momentum.

- tracks are required to have pT > 1 GeV, (Any gain from going lower?)

- (pre/post APV) The requirement on the number of hits was relaxed to
  cope with saturation effects that were observed at high occupancy in
  the readout electronics of the strip tracker during the first part
  of the 2016 data taking, leading to a reduced tracking and b tagging
  performance. The issues with the readout electronics have been fully
  resolved, with no side effects on the track- ing performance, but
  the relaxed requirement on the number of hits was kept since there
  was no impact on the final b tagging performance.


- BTagging SF:
  - muon-tagged jets: Pt Rel/ Lifetime and system-8

- Pt Rel Method Summary: (Luca Scodellaro Cantabria)
   - pT of the muon relative to the jet axis, b-jet discrimination, relatively uncorrelated with btagging.
   - The fraction of b-jets in data estimated by fitting the observed prel distribution to MC templates
   - Use away-side btag to enhance b-jet fraction on near side
   - Systematics from:



- Lifetime Method: (Piergiulio Lenzi, University of Florence)
  - Similar to pTRel: fit JP discriminator (IP likelihood)
  - No away side jet tag
  - Systematics from:
    

- System8 (Luca Scodellaro, Jesús Vizán Cantabria)
  - uses two weakly correlated b-taggers: target tagger and the reference (ptRel) applied to two samples (muon-tag jets and away-side btag)
  - 8 Observables: ABCD for two taggers x (Two regions)
  - 8 Unknowns:  NSig, Nbkg x 2 (samples) , εsig, εbkg x 2 (taggers)
  
  - does not rely on simulated templates of a discriminating variable



- Kinematic Selection Method in di-lepton ttbar (Joshuha Thomas-Wilsker, Institute Of High Energy Physics, Beijing)
  - pt jet 30 GeV
  - Use discriminator to separate b-jets from non-b (ISR) inputs only object kinematics
  - (Not using MeT info / nJets ?)
  - kin discriminator is fit in bins of nJets (and jet kinematics)

- Tag and probe in semi-leptonic ttbar (Otto Hindrichs Rochester)
  - Kinematic reconstruction of ttbar system using mW and mT constraints
  - Jets flavour Assignment based on kinematic likelihood fit
  - Tag and Probe on assigned "b-jets"
  - Backgrounds measured from template fits to ptMiss and likelihood
  - (What happens with misassignment with where the b-jet flavors are correctly assigned?
     eg: swap bjets or ISR jet replaces a hadronic Wdecay?)
  