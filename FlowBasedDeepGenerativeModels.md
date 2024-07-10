Source: https://lilianweng.github.io/lil-log/2018/10/13/flow-based-deep-generative-models.html

- RealNVP: b/c (i) computing f^−1 does not require computing the inverse of s or t
              (ii) computing the Jacobian determinant does not involve computing the Jacobian of s or t,
	   those functions can be arbitrarily complex; i.e. both s and t can be modeled by deep neural networks.



- The autoregressive constraint is a way to model sequential data, x=[x1...,xD]: each output only depends on the data observed in the past, but not on the future ones.
  In other words, the probability of observing xi is conditioned on x1,...,xi−1 and the product of these conditional probabilities gives us the probability of observing the full sequence:

    p(x) = Prod_i^D p(x_i|x_1 ... x_{i-1})

   How to model the conditional density is of your choice.
   Common examples are
     - Gaussian with mean and standard deviation computed as a function of x1:i−1
     - Multilayer neural network with x1:i−1 as the input.

- "Autoregresive flow" is a is a transformation where each dimension in a vector variable is conditioned on the previous dimensions

- MADE (Masked Autoencoder for Distribution Estimation) is a scheme (specially designed architecture) for imposing the autoregressive constraint on a neural network