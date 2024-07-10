Source: https://arxiv.org/pdf/2111.03027.pdf

- B-jet id has been used for decades

- Now starting to do charm jet tagging,
    - the more challenging task of identifying (background from both sides)
        - the definition of two discriminating variables; one to distinguish c jets from light-flavour jets (CvsL) and one to distinguish c jets from b jets (CvsB).
- Made freasible by advacess in deep learning

- Increasingly important to calibrate the full shape of the classifier output (not a few bins)
   - each jet as an input to a machine-learning classifier or by performing a fit of the discriminator distributions to data
   eg; h->bb  / hh->bbtt
    h->?bb also fits DeepCSV in the CR

- deepCSV and deepJet DeepNNs trained in MC, evaluated in data

- SF for b jets from
   -  top quark pair (tt) production and/or multijet events where a jet contains a low-energy muon.

- This paper presents for the first time a calibration method to correct the differential c tagging discriminator distribution shapes.
    uses an iterative fit procedure with 3 control regions that are enriched in c, b, and light-flavour or gluon jets


- used in tt+c

- Rather than correcting the efficiency of a selection in the discriminator, the full simulated differential shape of that dis- criminator can be calibrated to match the shape observed in data.
- For the first time this paper presents a method of calibrating the differential c tagging discriminator shapes.

- Need 3 CRs:

   - Charm: W+c
   - B: ttbar
   - Light: DY+jet

he sampled c and b jets are required to contain a soft muon inside the jet cone

- B/c soft muons within jets are treated as any other charged PF candidate in both DeepCSV and DeepJet trainings, as opposed to training the network with explicit soft muon information, the bias in the discriminator responses aris- ing from using muon-containing c and b jets as a proxy for all c and b jets, is expected to be minimal. In Section 10.2 we further demonstrate the applicability of the correction factors to inclusive samples



Q: The blue envelopes indicate the range of all nominal interpolated SF values in the corresponding CvsB range.

[[CMS]]
