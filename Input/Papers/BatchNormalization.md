Batch Normalization: Accelerating Deep Network Training by Reducing Internal Covariate Shift
https://arxiv.org/pdf/1502.03167.pdf

- Training Deep Neural Networks is complicated by the fact
that the distribution of each layer’s inputs changes during
training, as the parameters of the previous layers change.
This slows down the training by requiring lower learning
rates and careful parameter initialization, and makes it notoriously hard to train models with saturating nonlinearities.

-  Batch Normalization allows us to use much higher learning rates and
be less careful about initialization.

- BN also acts as a regularizer, in some cases eliminating the need for Dropout.

- Using mini-batches of examples, as opposed to one example at a time, is helpful in several ways.
  First, the gradient of the loss over a mini-batch is an estimate of the gradient over the training set, whose quality improves as the batch size increases.
  Second, computation over a batch can be much more efficient than m computations for individual examples, due to the parallelism afforded by the modern computing platforms.

- The training is complicated by the fact that the inputs to each layer are affected by the parameters of all preceding layers – so that small changes to the network parameters amplify as the network becomes deeper.

- The input distribution properties that make training more efficient – such as having the same distribution between the training and test data – apply to training the sub-network as well. As such it is advantageous for the distribution of x to remain fixed over time

- In practice, the saturation problem and the resulting vanishing gradients are usually addressed by using Rectified Linear Units, careful initialization, and small learning rates.

- If, however, we could ensure that the distribution of nonlinearity inputs remains more stable as the network trains, then the optimizer would be less likely to get stuck in the saturated regime, and the training would accelerate.

- We propose a new mechanism, which we call Batch Normalization, that takes a step towards reducing internal covariate shift, and in doing so dramatically accelerates the training of deep neural nets.

  It accomplishes this via a normalization step that fixes the means and variances of layer inputs.

  Batch Normalization also has a beneficial effect on the gradient flow through the network, by reducing the dependence of gradients on the scale of the parameters or of their initial values.
  This allows us to use much higher learning rates without the risk of divergence.

  Furthermore, batch normalization regularizes the model and reduces the need for Dropout.

  Finally, Batch Normalization makes it possible to use saturating nonlinearities by preventing the network from getting stuck in the saturated modes.


- We seek an algorithm that performs input normalization in a way that is differentiable and does not require the analysis of the entire training set after every parameter update

-  BN transform is a differentiable transformation that introduces normalized activations into the network.

- For convolutional layers, we additionally want the normalization to obey the convolutional property – so that different elements of the same feature map, at different locations, are normalized in the same way. To achieve this, we jointly normalize all the activations in a minibatch, over all locations.

- By normalizing activations throughout the network, it prevents small changes to the parameters from amplifying into larger and suboptimal changes in activations in gradients; for instance, it prevents the training from getting stuck in the saturated regimes of nonlinearities. 

- the premise that covariate shift, which is known to complicate the training of machine learning systems, also applies to sub-networks and layers, and removing it from internal activations of the network may aid in training.


- Merely adding Batch Normalization to a state-of-theart image classification model yields a substantial speedup in training. By further increasing the learning rates, removing Dropout, and applying other modifications afforded by Batch Normalization, we reach the previous state of the art with only a small fraction of training steps