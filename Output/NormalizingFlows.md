


# Main idea

In Normalizing flows you learn invertible (reversible) transformations from some standard input distribution (eg: Gaussian) to some complicated distribution (eg: observed data) that you are trying to model.  It is critical that the transformation be invertible so that the training data can be mapped back to a known probability distribution, from which the likelihood of the data can be calculated. The transformation is then learned from maximizing the likelihood of the training data. A "Normalizing flow" is a series of these invertible transformations performed one after another; multiple transformations improve the expressiveness of the model and are particularly important given the, popular form of the transformation needed for inevitability discussed below.
The resulting flow is invertible given that each of the constituent transformations is invertible. 


## Advantages

Can learn the full probability distribution of the the data being modeled.


## Tricks

Trick is setting up a bijections that are by construction invertible and has many parameters that can be learned. This is Done with "Coupling Layers" that  split data into two contiguous regions (A and B). Then the output of region A is just a copy of the input:
     y^A = x^A
whereas the output of region be is a function of x^B whose parameters only depend on x^A.
     y^B = h(x^B; Theta(x^A))
In practice, the transformations h and Theta are usually arbitrarily complicated functions parameterized by neural nets. This form guarantees the Jacobian is triangular, and the function invertible.



Sources:
ArticleNotes/FlowBasedDeepGenerativeModels.md
ArticleNotes/NormalizingFlowModels.md
ArticleNotes/NormalizingFlowsTutorial.md
ArticleNotes/WhatAreNormalizingFlows.md
