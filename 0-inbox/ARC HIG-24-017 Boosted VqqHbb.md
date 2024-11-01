https://cms.cern.ch/iCMS/analysisadmin/cadi?ancode=HIG-24-017


Google docs from chris
Paper draft: https://docs.google.com/document/d/1fI2zYjUGGVMEbaEHh6yPNd2PfVXaA09U5QD04N90Gj0/edit?tab=t.0
AN: https://docs.google.com/document/d/1apPLw_Y1IqfLxzAvPJwaUyghv2EpGhqS1h6dcRUApyE/edit?tab=t.0


There is a stable version of the paper and AN for us to review. 
http://cms.cern.ch/iCMS/jsp/openfile.jsp?tp=draft&files=AN2022_031_v9.pdf

https://cms.cern.ch/iCMS/analysisadmin/get?analysis=HIG-24-017-paper-v1.pdf


# AN Review
http://cms.cern.ch/iCMS/jsp/openfile.jsp?tp=draft&files=AN2022_031_v9.pdf

- General:  Shoudl compare sensitivites to VBF and other leptonic decay modes

Section 2
- How are the HLT b-tagging SF calculated ? 
- l124: Why is the efficiency of the HLT that cuts on btagging so flat offline double b?  
- 133  As there are no flavor selections on the majority of the HLT paths, the efficiency on QCD jets. What about the HLT selections that have a flavor dependence ?


Section 4:
- Ak4 jet veto: - ak4 < 5 looks tight (30 eta < 5) pT outside of the tracker? Signal eff loss form this cut ? What large uncertianty from modeling additial radation PU ?
	- Would think the Xbb cut would kill ttbar
- Really a bin boundry at 201 GeV ?!?  Why ?
- 

Section 5.1
- At least one AK4 jet satisfying the medium W.P. for deepJet b-tagging algorithm with and outside of the AK8 jet. Isnt this requiring 3 bs.  The CR really corrects for the a mistag in the AK8(bb) jet.  For the ttbar background, how often are the two bs clustered in the AK8 jet vs bkg from an AK8-bb mistag?

Section 5.3:
-  Cannot understand fitting to the rho? distribution in QCD Monte Carlo
l383
"The coefficients of the polynomial TFMC are derived by fitting to the msd distribution in QCD
Monte Carlo. The same transfer factors are defined and fitted simultaneously in different msd2 bins."

- How do you fit a function of rho to the m_sd distribution. 
- (Assuming m_sd2 is a typo which should read m_sd, otherwise what is m_sd2) What do you mean the TF are fit simultaneosely in different m_sd bins... You are fitting to m_sd ! 
- Maybe you are fitting to rho, and doing this in different coarse m_sd bins. 
	- If so, please correct the AN
	- Can you give the coarse m_sd binning you are using.
	- Can you show the fits in rho for the TF

- Can you show the fits used to determine the polynominal order ?
	 In section 5.2 it says "The optimal polynomial orders and details of the corresponding
400 fits are shown in Section 5.2."

* l406: "The number of required coefficients in the data/MC residual transfer factor is determined by a Fisher F-test on data, as discussed further in Section 7.
	* Can you add the details and plots of the Tres fits here.  It is not discussed in section 7.


- Figs 40-43: I dont see how you can draw any conclusions quantitaive or qualitative given the quality of these fits.


- These QCD386 MC transfer factors are treated as uncorrelated across data taking periods. Why?

Section 6: 
- Dont see any uncertianties for the AK4 veto. What is the uncertiatying form the signal ISR/FSR modeling
- Pileup: what is the impact of pileup on the AK4 jet veto acceptance (the modelling of jets activity at 30 GeV at high eta ?)

# Pre-Approval:
https://indico.cern.ch/event/1451204/#17-pre-approval-of-hig-24-017
- More VH in the boosted regime
- Measured in ATLAS, not CMS.  VBF excess
- MeT < 140

Questions:
- OK: UL / Cert files not UL ?!?
- ak4 < 5 looks tight (30 eta < 5) pT outside of the tracker? Signal eff loss form this cut ?
- Why no PQCD on jet 1 ?
- How do you deal with the uncertainties on the fitting coeeficienents ? s20 
- TF_data what do these fits look like ? 
- s25 early late 2016 really mean pre and post ?


## Follow-ups


## Links: 



202409300856
