Title: What are Normalizing Flows?
Sources: https://www.youtube.com/watch?v=i7LjDvsLWCg

- Bi-jecttion from known sample (Usually Gaussian) to complicated thing your trying to model.

- Bi-jection is a composition of many other bijections (each of which is invertable)

- Trick is setting up a bijections that is by construction invertable and has many pramaters that can be learned.

- Done with Coupling Layers.
     split data at that layer into two contiguous regions. (A and B)
     y^A = x^A
     y^B = h(x^B; Theta(x^A))

   Results in bijections that with a Jacobian that is triangular => |Det| is production of diagonals
  (These preserve area) 

- Separate scaling matrix to change area

- Trick to reduce the diminionsality of latent space (above has the same as the input data)
   Can enforce smaller latent dim. with something called "Real NVP"
[[NormalizingFlows]]