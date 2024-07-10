Understanding and Improving Convolutional Neural Networks via Concatenated Rectified Linear Units
https://arxiv.org/pdf/1603.05201.pdf

-  we first examine existing CNN models and observe an intriguing property that the filters in the lower layers form pairs

- we propose a novel, simple yet effective activation scheme called concatenated ReLU

- CNNs tend to learn highly (negatively-)correlated pairs of filters for the first few convolution layers.
  Lower convolution layers of AlexNet learn redundant filters to extract both positive and negative phase information of an input signal

- CReLU: activation scheme preserves both positive and negative phase information while enforcing non-saturated non-linearity

- We demonstrate that simply replacing ReLU with CReLU for the lower convolution layers of an existing state-of-the-art CNN architecture yields a substantial improvement in classification performance.
   CReLU allows to attain notable parameter reduction without sacrificing classification performance when applied appropriately.

- Rectified Linear Unit (ReLU), zero out negative values and produces sparse activation.
  So, if both the positive phase and negative phase along a specific direction participate in representing the input space, the network then needs to learn two linearly dependent filters of both phases.

   Despite ReLU erasing negative linear responses, the first few convolution layers of a deep CNN manage to capture both negative and positive phase information through learning pairs or groups of negatively correlated filters.
    This conjecture implies that there exists a redundancy among the filters from the lower convolution layers.

- We design a method to explicitly allow both positive and negative activation, then we will be able to alleviate the redundancy among convolution filters caused by ReLU non-linearity and make more efficient use of the trainable parameters

- Therefore, besides the performance boost, another significance of CReLU activation scheme is in designing more parameterefficient deep neural networks