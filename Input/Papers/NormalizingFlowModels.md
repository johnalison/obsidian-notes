Title: Normalizing flow models
Source: https://deepgenerativemodels.github.io/notes/flow/


- Autoregressive models provide tractable likelihoods but no direct mechanism for learning features, whereas variational autoencoders can learn feature representations but have intractable marginal likelihoods.  Normalzing Flows combines the best of both worlds, allowing both feature learning and tractable marginal likelihood estimation.

- Goal:Map simple distributions (easy to sample and evaluate densities) to complex ones (learned via data).

- Change of variables key to mapping on distribution to another


- Deep normalizing flow models require specific architectural structures.
  - The input and output dimensions must be the same.
  - The transformation must be invertible.
  - Computing the determinant of the Jacobian needs to be efficient (and differentiable).

- Two popular formss of transformations that satisfy these properties are:
   - Nonlinear Independent Components Estimation (NICE)
   - Real Non-Volume Preserving (RealNVP)


- NICE: The coupling layer in NICE partitions a variable z into two disjoints subsets: z1 and z2.
  Then applies the following transformation:

  Forward mapping z->x
    -) x1=z1, which is an identity mapping.
    -) x2=z2+m_θ(z1), where m_θ is a neural network.

  Inverse mapping x->z:
    -) z1=x1, which is an identity mapping.
    -) z2=x2−m_θ(x1), which is the inverse of the forward transformation.

  Note: the Jacobian of the forward mapping is lower trangular, whose determinant is simply the product of the elements on the diagonal, which is 1.
  Therefore, this defines a volume preserving transformation

- RealNVP adds scaling factors to the transformation.
  This results in a non-volume preserving transformation.

[[NormalizingFlows]]