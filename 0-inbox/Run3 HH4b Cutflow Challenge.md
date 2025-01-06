

# Mail from Marina 

Please find below the (lxplus) path to the 2022EE NTuples:

/afs/[cern.ch/user/m/mkolosov/public/forJohn/data_2022_postEE_0_tree.root](http://cern.ch/user/m/mkolosov/public/forJohn/data_2022_postEE_0_tree.root)

To get the events in the 4b(>=3bT) control region you'd need to apply the following selections:
- (avgbdisc_twoldgbdiscjets > 0.65)
- (dHH_HH_regmass > 350)

And then apply the 4b(>=3bT) mask:

MASK_4b: (dHH_NbtagM == 4) & (dHH_NbtagT >= 3)

HM: np.stack([dHH_H1_regmass, dHH_H2_regmass], axis=1)
AR_center: '[[125, 120]]'
AR_dHM: np.sum( (HM - AR_center)**2, axis=1 )**0.5

and the CR mask:
ACR: (AR_dHM >= 30) & (AR_dHM < 55)

# Follow-ups


# Links: 



202501061122
