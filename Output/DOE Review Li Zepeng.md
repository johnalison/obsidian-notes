(**Due Date:** 03/19/2025)
Proposal Title: Machine Learning in Front-End Electronics for Nuclear Physics Experiments

# Notes: 

Not clear why ML is needed in Neutrinoless Double Beta Decay

For EIC and Pioneer:
Data reduction during acquisition includes zero- and noise suppression, binning of data into given time windows or clock cycles, feature reconstruction, and data compression. ML-based algorithms deployed on-chip or in the front-end on an FPGA offer an opportunity for real-time processing of raw data from fast timing detectors, including the selection of signals from noise and hit reconstructing using both spatial and timing information.

-  Fast real-time energy and position reconstruction and particle identification will be critical for the future Barium-tagging upgrade in nEXO.

- The use of prototype detectors offers a unique opportunity to address the challenges of deploying ML algorithms on FPGA in nuclear physics experiments.
- As part of this proposal, multiple prototype systems will provide high-quality, real-world datasets for developing and evaluating ML-based readout systems while also serving as a platform for hands-on training for students and postdoctoral researchers.
- Development of  4D Tracking prototype detector in two years, and only assigning primary manpower at the beginning of Year 1 -- seems unrealistic

	3 postdocs + 5 GSRs

#### 1. Scientific and/or Technical Merit of the Project
- What is the scientific innovation of the proposed research?
- What is the likelihood of achieving valuable results?
-  How might the results of the proposed work impact the direction, progress, and thinking in relevant scientific fields of research?
- How does the proposed work compare with other efforts in its field, both in terms of scientific and/or technical merit and originality?
-  Does the application specify at least one scientific hypothesis motivating the proposed work? Is the investigation of the specified hypothesis or hypotheses scientifically valuable?
-  Is the Data Management Plan suitable for the proposed research? To what extent does it support the validation of research results? To what extent will research products, including data, be made available and reusable to advance the field of research?


The primary scientific innovation of the proposed research is developing machine learning techniques to be deployed on front-end detector electronics for real-time event reconstruction. The proposal aims to enhance event selection and reconstruction precision for major neutrino experiments (nEXO, KamLAND2-Zen) and experiments using 4D tracking (EIC, PIONEER).

The likelihood of achieving valuable results is high given the team's interdisciplinary expertise, preliminary experience with ML-FPGA (hls4ml, CGRA4ML), and access to relevant testbeds (e.g., NuDot, LXe TPC, KamLAND2-Zen).  However, the development of a 4D Tracking prototype detector in two years, and only assigning primary manpower at the beginning of Year 1 -- seems unrealistic.


The proposed work could demonstrate the practicality and value of ML techniques in the front-end electronics. By establishing proof-of-concept systems/frameworks (CGRA4ML, Versal AI Engine), this proposal could lead the community toward more widespread adoption of these techniques.

The proposed work aligns with community priorities outlined by the NSAC Long Range Plan. I would not say that it is particularly original. A lot of groups are working on making the front end electronics smarter -- an obvious goal --  and many are trying with ML.  However after reading the proposal its still not clear to me that ML is the right way to make the electronics smarter. 

The proposal is well-motivated scientifically and the goals are valuable.

The Data Management Plan is suitable. There is not much detail about how data will be made available and usable to the wider community. 




#### 2. Appropriateness of the Proposed Method or Approach

- How logical and feasible are the research approaches?
- Does the proposed research employ innovative concepts or methods?
- Can the approach proposed concretely contribute to our understanding of the validity of the specified scientific hypothesis or hypotheses?
- Are the conceptual framework, methods, and analyses well justified, adequately developed, and likely to lead to scientifically valid conclusions?
- Does the applicant recognize significant potential problems and consider alternative strategies?
- Is the proposed research aligned with the published program priorities identified or incorporated by reference in Section I of this FOA?
- Does the proposed plan to recruit and retain students and early-stage investigators provide sufficient mentorship?

Making front-end electronics smarter is a logical and feasible goal. The proposal did not make the case that ML is right way to achieve this goal. 

Again, I would not say that using ML is particularly innovative these days. I think the idea of deploying these in existing or near-term prototypes is unique. 

Making the front-end electronics smarter will improve our understanding of important science.
In most cases the proposal does not quantify how much will be gained, but the science goals are clearly important.

The methods are adequately developed, but not particularly well justified. 

Potential problems are considered and mitigation plans are discussed. 

The proposed research is well-aligned with program priorities.

Sufficient mentorship is foreseen. The group is relatively large and experienced. 

#### 3. Competency of Applicant’s Personnel and Adequacy of Proposed Resources
- How well qualified is the research team to carry out the proposed research?
- Is the lead institution proposing to perform a greater portion of the scientific and technical work than any other team member?
- Are the research environment and facilities adequate for performing the research?
- Does the proposed work take advantage of unique facilities and capabilities?

The team is qualified and well-suited for the proposed work. The investigators have  expertise in ML applications to nuclear physics (nEXO, KamLAND-Zen, JUNO), silicon sensor technologies (AC-LGADs), FPGA-based hardware development, and electronics integration.  PI Li has played a key role in applying ML techniques to both EXO-200 and nEXO.


The lead institution is University of Hawaii at Manoa. They are proposing to perform the majority of the work. 

The team has access to multiple specialized testbeds and detector prototypes (NuDot at UD, LXe TPC at Stanford, KamLAND2-Zen), advanced FPGA platforms (Virtex Ultrascale+, RFSoC boards, Versal AI Engine), and collaboration with experienced partners (Nalu Scientific, national laboratories). The infrastructure and collaborative environment provided by participating institutions appear robust and suitable for achieving the proposed research objectives.



#### 4. Reasonableness and Appropriateness of the Proposed Budget 
- Are the proposed budget and staffing levels adequate to carry out the proposed research?
- Is the budget reasonable and appropriate for the scope?
- If consultant costs are included, are the overall consultant costs are in line with the EPSCoR mission and how will the skills, expertise or capabilities provided by the consultant will be transferred in a sustainable manner to the applicant institution?

This is an two year project with ambitious goals. Fun

They planning to hire three postdocs and five GSRs and hire out electronics engeneer over a two-year period and are requesting ~1.5 M / year. The salaries seem appropriate. 

There is significant request for equipment namely "A simulator and readout board to simulate 4D tracking detector signal for ML-based readout system development in Year 1" for  $205,000.



#### 5.Synergism Among the PIs in a Program and the Programmatic Focus of a Multi-PI Effort 
- How does the application exhibit a coherent focus on one energy-related research area bringing together multiple researchers?
- What aspects of the management plan will support coordination of multiple investigators working on a common theme including performance milestones and a timetable for achieving project goals and deliverables?

The proposal addresses a wide range of different, loosely related physics-topic. However the proposed is tied together through the research tasks—shared ML algorithms, hardware frameworks, and validation methods.

The management plan does not discuss coordination of multiple investigators. Not sure its needed given the diverse tasks suggested. 

#### 6. The Likelihood of Success of the Implementation Grant
  
-  How well does the application couple with opportunities within the jurisdiction(s) to develop and utilize the scientific and technological resources that reside in the research universities and the jurisdiction’s industrial or economic resources?
- How does the application adequately present the opportunities for enhanced academic research and development competitiveness and if appropriate, industrial or economic competitiveness, for the jurisdiction, including plans for the acquisition of sustained non- EPSCoR support?
- What plans does the applicant have to make (or has the applicant made) competitive faculty hires and retained outstanding faculty within the scope of the implementation award? Does the applicant have a plan to attract (or has the applicant hired) outstanding graduate students and post docs?
- What plans do the applicant have to develop (or have they developed) as part of the implementation grant unique infrastructure capabilities that are critical to the advancement of science or technology? Alternatively, are they planning to or making unique contributions to DOE oriented capabilities (e.g., building or developing unique capabilities for a DOE experiment or facility)?
- What plans do the applicant have to (or are the grantees on track to) achieve a sustainable leadership position in their discipline(s)?
- What plans do the applicant have to (or are the grantees effectively) leveraging DOE funding and capabilities with local and regional resources? Are there commitments from the applicant’s jurisdiction, institution or from private sources to assist in this leveraging?_

The application leverages and couples scientific and technological resources within the EPSCoR jurisdictions (Hawaii and Delaware) by directly engaging the region’s leading R1 universities (UHM and UD) and partnering with local high-tech industry (Nalu Scientific in Hawaii).

There is a plan to attract and hire 3 postdocs and 5 graduate student.  The explicit integration of workforce development programs, curriculum enhancements, and industry collaboration will help with growth of local scientific and technological resources.

# Overall Summary of the Proposal
An overall score is requested to accompany the summary section.

Overall I would encourage funding (3 or 4).  Making the front end smarter is a good idea. The case was not strongly made in the proposal how much this change will drive the science or that ML is the right way to do it, but this type of work should be pursued.  

The group is integrated with important and well-aligned experiments and a track record of success doing the type of work proposed. The plan is ambitious, in some cases probably overly so, but I think it should be funded.



# Follow-ups


# Links: 



202503021349
