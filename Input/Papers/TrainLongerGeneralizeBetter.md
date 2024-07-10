# Train longer, generalize better: closing the generalization gap in large batch training of neural networks
https://arxiv.org/pdf/1705.08741.pdf

- Deep learning models are typically trained using stochastic gradient descent or one of its variants. These methods update the weights using their gradient, estimated from a small fraction of the training data. It has been observed that when using large batch sizes there is a persistent degradation in generalization performance - known as the "generalization gap" phenomenon. Identifying the origin of this gap and closing it had remained an open problem.

- We present a novel algorithm named "Ghost Batch Normalization" which enables significant decrease in the generalization gap without increasing the number of updates.


- The optimization method of choice for training highly complex and non-convex DNNs, is typically stochastic gradient decent (SGD) or some variant of it.
  Since SGD, at best, finds a local minimum of the non-convex objective function, substantial research efforts are invested to explain DNNs ground breaking results

  it is still unclear why these complex models tend to generalize well to unseen data despite being heavily over-parameterized (

- when a large batch size is used while training DNNs, the trained models appear to generalize less well.

- Training with large batch size immediately increases parallelization, thus has the potential to decrease learning time.

- Claim: There is no inherent "generalization gap": large-batch training can generalize as well as small batch training by adapting the number of iterations.

- Batch Normalization (BN) (Ioffe & Szegedy, 2015), is known to accelerate the training, increase the robustness of neural network to different initialization schemes and improve generalization
   since BN uses the batch statistics it depends on the choosen batch size.

   By acquiring the statistics on small virtual ("ghost") batches instead of the real large batch we can reduce the generalization error

- the initial high-learning rate training phase enables the model to reach farther locations in the parameter space, which may be necessary to find wider local minima and better generalization.

-  in contrast to previous conception, there is no inherent generalization problem with training using large mini batches.
   model training using large mini-batches can generalize as well as models trained using small mini-batches.
