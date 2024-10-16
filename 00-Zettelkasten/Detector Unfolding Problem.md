The problem with unfolding is that the detector smearing can in general cause two very different input truth distributions to give identical observed smeared data. In which case, there is no unique way to invert. 

![[1DUnfoldingCartoon.excalidraw]]

Solutions to this type of "ill-posed" inverse problem require an arbitrary choice of regularization, usually taken from a detector simulation, to stabilize the inversion. However, instead of solving the inverse problem, you can learn the forward model relatively robustly with simulation. Then its actually easy to go from truth to smeared data with out much sensitivity to the simulation. However the algorithms do the unfolding  -- inferring the input truth from the observed smeared data -- are much more sensitive to the assumed underlying simulation model through the choice of the regulator.

## Follow-ups

https://www.sciencedirect.com/science/article/pii/0168900295014780

https://indico.cern.ch/event/1357972/contributions/5866596/attachments/2873882/5032439/Kuusela_PhyStat_unfolding.pdf

## Links: 
[[1DUnfoldingCartoon.excalidraw]]
[[Physics]]

202410092229
