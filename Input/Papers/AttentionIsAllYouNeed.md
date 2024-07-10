
https://arxiv.org/abs/1706.03762

- We propose a new simple network architecture, the Transformer, based soley on attention mechanisms, despensing with recurrance and convolution.
  These models sare superior in quality and are more parallelizzable and requrie significantly less time to train.

- The inherently sequential nature of recurrent models precludes parallelization within training examples.

- Attention mechanisms allow modeling of dependencies without regard to thier distance in the input or output sequence.

- Multi-headed attention mitigates against reduced resolution

- An attention function can be described as mapping a query and a set of key-value pairs to an output, where the query, keys, values and outputs are all vectors.
  The output is computed as a weighted sum over the values, where the weight assigned to each value is computed by a compatibility function of the query with teh corresponding key.

- In a self-attention layer all of the keys, values, and queries come form the same place.

