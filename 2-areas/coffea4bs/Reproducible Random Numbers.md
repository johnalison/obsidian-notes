

Here is the tool I use [Squares](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/base_class/math/random.py?ref_type=heads#L153-210), and here are some examples to [setup seed](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/base_class/jetmet_tools/CorrectedJetsFactory.py?ref_type=heads#L143) and [create counters](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/base_class/jetmet_tools/CorrectedJetsFactory.py?ref_type=heads#L13-18).

The basic idea is the RNG will always generate the same number given the same seed and counter, where the seed is to specify a random sequence, and the counter is the index to fetch a number from this sequence.

  

The [seed is iterable of strings and integers](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/base_class/math/random.py?ref_type=heads#L38-41) to initialize the random generator e.g.  

>>> rng = Squares("Jet splitting", 1, "test") # the seed is recommended to be unique enough, so that none of the sequence share the same seed

The [counter is any arraylike object that can be converted to np.ndarrray[uint64]](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/base_class/math/random.py?ref_type=heads#L119-123)

The [generator will always try to reduce the last dimension unless there is only one](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/base_class/math/random.py?ref_type=heads#L97-100) e.g.

for a counter with shape [10000, 2, 3] it will return an random_array of [10000, 2] and each item random_array[i, j] is generated from counter[i, j, :] #3*64bits, this is useful when you want to generate numbers for each jet. As shown in the [jec case](https://gitlab.cern.ch/cms-cmu/coffea4bees/-/blob/master/python/base_class/jetmet_tools/CorrectedJetsFactory.py?ref_type=heads#L13-17) the counter is constructed from [event number(64-bit), phi(32-bit), eta(32-bit)] which guarantees each jet will get a unique and reproducible random number and is uncorrelated.  

  

If you want to run on a jagged awkward array, you still need to do it after ak.flatten.


## Follow-ups


## Links: 



202407300935
