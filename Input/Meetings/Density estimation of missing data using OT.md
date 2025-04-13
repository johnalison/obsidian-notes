 Malte Algren  Geneva, On ATLAS
 
Interesting. 
- Do OT between tag samples: 3tag -> 4 tag. 
- However, dont have access to the full 4-tag distribution
- Instead "in fill" : replace 4b SR events with 3b SR events. 
	- Do OT from 3b → 4b infilled, not perfect... but better than before
	- Now in fill with new SR prediction 
	- iterate
- (missed how they actually compute the maps with NNs,...) but it only works on 7d projected space
- Suggested that they add SvB to the list of variable they use to do the OT
- Very Sensitive to the CR boundary
- Maybe start with a better infill assumption ... eg: the reweighted prediction

# Notes

- Malte Algren 
- "Density estimation of missing data using OT"
- PhD student in Geneva HEP
- Related to "In painting" problem in
- Setup the ABCD problem
- Crop out 4b SR replace removed events with 3b SR
- Fit OT from 3b -> 4b... Iterate
- How many steps ? .... How long for each step ? ... 
	- What do you technical  get in the end ? OT(map) 
- How do you deal with point clouds ? ... Yes, they use point clouds.
	- 16D → 7D 
- How do you predict another variable ?
- Suggest adding 8th SvB variable and then comparing that prediction to the rewieghting
- Very Sensitive to the CR boundry
- Maybe start with a better infill assumption ... eg: the reweighted prediction
- Application generate synthetic data in the SR


# Follow-ups


# Links: 



202504121742
