The problem with unfolding is that the detector smearing can in general cause two very different input truth distributions to give identical observed smeared data. In which case, there is no unique way to invert. 

![[1DUnfoldingCartoon.excalidraw]]

(Claim by Mikael Kuusela) You can learn the forward model relatively robustly with simulation. Then its actually easy to go from truth to smeared with out much sensitivity to the simulation used in training. However the algorithms to do the reverse process -- inferring the input truth from the observed smeared data -- are much more sensitive to the assumed underlying simulation model -- which is an unavoidable input to the infolding algorithms.

## Follow-ups


## Links: 
[[1DUnfoldingCartoon.excalidraw]]
[[Physics]]

202410092229