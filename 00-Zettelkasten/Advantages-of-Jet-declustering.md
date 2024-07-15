Jet (de)clustering is similar in spirit to hemisphere mixing, but some potential improvements
1) Scrambling the substructure is done through sampling the PDFs templates instead of directly reusing jets in other observed events.  This leads to a big statistical gain from factorizing the [[Splitting Templates]]. 
2) The algorithm has better scaling with dataset size. Goes like O(N) not O(N^2),  from the nested loops over hemisphere for each event. 
3) It is less ad-hoc: there is no need to define a metric between hemispheres. 
4) Better treatment of the additional jet activity [[ISR-FSR-jet-discernment-in-jet-declustering]].  Can decluster iteratively with splitting functions (can be done separately for g→bb and b→bg splittings see:[[b-tags-as-a-quark-to-quark-gluon-tag]])
5) Can also potentially be applied in the boosted regime by (de)clustering the constituent sub-jets directly.



## Links: 
[[Jet DeClustering]]



202407151628
