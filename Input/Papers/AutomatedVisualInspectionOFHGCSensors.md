Over all the paper reads very well and looks like it will be an important part of the HGC QA, congratulations.
   (I hope this can be easily adopted to the module QA/QC, I guess so)

General comments:

-) p3: "This work presents a deep learning-based pre-selection algorithm (PSA) that fully automates the VI while also reducing the bias."

   Was it actually demonstrated anywhere that this procedure reduces the bias? Was this quantified? If, should add discussion to the paper.
   Otherwise, these statements should be qualified. "We believe this procedure reduces that expected from human bias etc."
   
   Same comment applies to p16:  "The developed automated VI is standardized and less biased,"

-) p5: Paragraph that starts, "Unfortunately, ... "
   After reading all of this is not clear what is actually being used for this project.
   I gathered from above that R-CNN is not used. This paragraph discusses both fast-R-CNN and YOLO.
   I think this paragraph should end with a clear statement of what is being used below.

-) Section 3.4: Again I'm confused as to how the architecture describes here maps on to the discussion on p5.

-) p5: eq 3) and 4) which loss function is actually used in this work? Text unclear. 

-) Table 1 Worth adding a column for the AE training? 

-) Section 4) "2,052,240 patches from 5,030 whole images."
     - Where did these images come from? I thought we only had 50 sensors? Should clarify.

     - Also how was the ground truth of all these patches labeled ? I assume not with human inspection. Should clarify.

-) Table 4: Why are the numbers in the "score original" column different from those shown in table 2?

Minor:
-)  p3: "accepted or rejected by the inspector" --> "accepted or rejected by the human inspector"

-)  Sentence fragment: p5 "While self-supervised anomaly detection can be implemented using AEs, which are composed of two neural networks. "

-) Figure 3: Images seem out of order.
   Would recommend (from L to R top to bottom) Patching->Background->AE -> classier
   Which I believe is the order in which they are applied.

-) Suggest that the list on p7 be written as a paragraph in complete sentences.

-) "The AE can be interpreted as a data pre-processing step that makes the subsequent anomaly detection"
    ->
    "The AE can be interpreted as a data pre-processing step that makes the subsequent anomaly detection and classification"

