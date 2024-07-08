# Data Reduction and Error Analysis (Bevington and Robinson)

- Great book. Tied a lot of what I already knew together.

- Of the many probability distributions that are involved in the analysis of experimental data, three playa fundamental role: the binomial distribution, the Poisson distribution, and the Gaussian distribution.
  Of these, the Gaussian, or normal error, distribution is undoubtedly the most important in statistical analysis of data.
  Practically, it is useful because it seems to describe the distribution of random observations for many experiments, as well as describing the distributions obtained when we try to estimate the parameters of most other probability distributions.

-  The Poisson distribution represents an approximation to the binomial distribution for the special case where the average number of successes is much smaller than the possible number; that is, when \mu << n because p << 1.

- The Gaussian distribution  has the satisfying characteristic that the most probable estimate of the mean \mu from a random sample of observations is the average of those observations.

- As illustrated in Figure 2.5, tangents drawn along a portion of steepest descent of the curve intersect the curve at the e-1/2 points x = \mu ± \sigma and intersect the x axis at the points x = \mu ± 2\sigma

- \Gamma(FWHM)  = 2.354 \sigma

- The standard deviation is not defined for the Lorentzian distribution as a consequence of its slowly decreasing behavior for large deviations.

  If we try to measure the sample S.D. it will not converge to a stable value.

- The moral is, be aware and do not trust statistics in the tails of the distributions.

- We should be aware that Gaussian probability may not apply to our particular data set, and even an experimental distribution that nominally follows Gaussian statistics is apt to deviate in the tails.
 When the data set is small, there is another consideration.
 Not only the mean, but also our estimate s_\mu of the standard error \sigma_\mu may be poorly determined.
 The probabilities that we calculate from the Gaussian distribu- tion take no account of the latter problem.
 In such cases, a better estimate of the probability can be obtained from Student's t distribution.

-  Generally, a result is considered to be significant only at confidence levels of 95% or better.
   In Gaussian probability, this corresponds to a range of approximately ±2\sigma'.
   We can observe from Table C.8 that for a sample of only three data points (v = 2), the Student's t probability for 95% confidence corresponds to a range of more than ±4\sigma.

- the true expectation value for X2 is \nu, where v is the number of degrees of freedom and is equal to the number n of sample frequencies minus the number nc of constraints or parameters that have been calculated from the data to describe the probability function.

- Thus, to find x, selected randomly from the probability distribution P(x), we generate a random number r from the uniform distribution and find the value of the limit x that satisfies the integral equation (5.10).

- Our condition, that we neglect uncertainties in x and consider just the uncertainties in y, will be valid only if the uncertainties in y that would be produced by variations in x corresponding to the uncertainties in the measurement of x are much smaller than the uncertainties in the measurement of y.
  This is equivalent, in first order, to the requirement at each measured point that

  \sigma_x \times dy/dx << \sigma_y

- If the standard deviations for the data points are unknown but we can assume that they are all equal, then we can estimate them from the data and the results of our fit.
  we can obtain the common error in our measurements of Y from the fit, although at the expense of any information about the quality of the fit.

-  it is generally good practice to use orthogonal fitting functions whenever possible to minimize both the correlations between coefficients and the dependence of higher coefficients on the presence of lower ones.

-  In general, if we fit the functionf(y) rather than y, the uncertainties ai in the measured quantities must be modified by
   \sigma' = df(y)/dy \sigma

- We can obtain another useful relation from Equation (8.8) by taking the second derivative of X2 with respect to the parameter aj to obtain

  d^2 X2/da^2 = 2/\sigma^2

- Fitting nonlinear functions to data samples sometimes seems to be more of an art than a science.
  In part, this is in the nature of the approximationn process, where the speed of convergence toward a solution may depend upon the choice of the method for finding solutions, the choice of starting values for the parameters: and possibly the choice of the step size.
  To use any of these methods, we first determine starting values, estimates to be used by the fitting routine for initial calculaiton of the function and of chi square.
  For the pure search methods we must also define step sizes, the initial variations of the parameters.
  Neither starting values nor step Sizes, of course are needed in linear fitting.

- if the curvature of the X2 hypersurface is used as III EquatIOn (8.37) or (8.2~),the analytical solution is clearly unreliable whenever the curvature becomses negative.
  Symptomatic of this problem is the need to set posItive the diagonal elements a_jj of the matrix a. so that all curvatures are treated as if they were positive.


  In contrast, the gradient search of Section 8.4 is ideally suited for approaching the minimum from far away, but does not converge rapidly near the minimum.
  Therefore, we need an algonthm that behaves like a gradient search for the first portion of a search. and behaves more like an analytical solution as the search convergs.
  In fact, It can be shown (see Marquardt 1963) that the path directions for gradient and analytical searches are nearly perpendicular to each other, and that the optimum direction IS somewhere between these two vectors.


- Note that the problem of selecting the absolute value of the abscissa corresponding to the ordinate value was not important in the determination of the mean lifetimes in Example 8.1 because lifetimes are determined effectively from differences, rather than absolute values, of the independent variable.
  We must, however, always take care when we plot results of a fit that the curve is not displaced half a bin width from the data.

- Good description of the coorelation coefficent r = sqrt(bb') where b and b' are defined by

  y = bx + a    x = b'y +a'

- This ratio is a measure of how much the additional term has improved the value of the reduced chi-square and should be small when the function with m + 1 terms does not significantly improve the fit over the function with m terms.

- p211 Solution to the grad school problem of determining the errors on CMB parameters by fitting the CMB and looking for deltaX2 = 1.
  You need to optimize the NP for all the variations in the NP.
  Need to write this up in the MPL code!

- The 1 sigma contour for two prarameters needs to have deltaX2 = 2.3