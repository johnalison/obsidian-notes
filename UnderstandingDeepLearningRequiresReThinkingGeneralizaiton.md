https://browse.arxiv.org/pdf/1611.03530.pdf

- Deep artificial neural networks often have far more trainable model parameters than the number of samples they are trained on.

- What is it then that distinguishes neural networks that generalize well from those that don’t?

- Deep neural networks easily fit random labels.

- by randomizing labels alone we can force the generalization error of a model to jump up considerably without changing the model, its size, hyperparameters, or the optimizer.

  This implies:
       The effective capacity of neural networks is sufficient for memorizing the entire data set.


- we take a candidate architecture and train it both on the true data and on a copy of the data in which the true labels were replaced by random labels.
  In the second case, there is no longer any relationship between the instances and the class labels.
  As a result, learning is impossible. Intuition suggests that this impossibility should manifest itself clearly during training

  To our surprise, several properties of the training process for multiple standard achitectures is largely unaffected by this transformation of the labels.
  This poses a conceptual challenge.  Whatever justification we had for expecting a small generalization error to begin with must no longer apply to the case of random labels


-  Regularizers, both explicit and implicit,  when properly tuned, could help to improve the generalization performance.
   However, it is unlikely that the regularizers are the fundamental reason for generalization, as the networks continue to perform well after all the regularizers removed.

- out of all models that exactly fit the data, SGD will often converge to the solution with minimum norm.
