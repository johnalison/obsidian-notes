Ratio:
$$
r = \frac{N}{D}
$$
Error propogation: 

$$
\sigma_r = \frac{\partial r}{\partial N} \sigma_N\ \oplus  \frac{\partial r}{\partial D} \sigma_D = \frac{1}{D} \sigma_N\ \oplus \frac{N}{D^2} \sigma_D
$$


So 
$$
\sigma_r = \sqrt{\frac{\sigma_N^2}{D^2}\ \oplus \frac{N^2}{D^4}\sigma_D^2 }
$$
Or
$$
\frac{\sigma_r}{r} = \sqrt{\frac{D^2}{N^2}\frac{\sigma_N^2}{D^2}\ \oplus \frac{D^2}{N^2}\frac{N^2}{D^4}\sigma_D^2 }
$$

Thus...
$$
\frac{\sigma_r}{r} = \frac{\sigma_N}{N} \oplus \frac{\sigma_D}{D}
$$


# Product of an arbitrary number of factors 

If 
$$
f = C_1^{e_1} C_2^{e_2}...  C_N^{e_1N}
$$

Then

$$
\frac{\partial f}{\partial C_i} = e_i \frac{f}{C_i}
$$

And 

$$
\frac{\sigma_f}{f} = \frac{1}{f}\sqrt{ \sum_i \left(e_i \frac{f}{C_i}\right)^2 \sigma_{C_i}^2\ } =  \sqrt{ \sum_i \left( \frac{e_i}{C_i}\right)^2 \sigma_{C_i}^2\ } 
$$


Thus...
$$
\frac{\sigma_f}{f} = \sum_\oplus\frac{e_i^2 \sigma_{C_i}}{C_i} 
$$

In the simple ration above $e_i = \pm 1$ and $e_i^2 = 1$.

## Follow-ups
## Links: 
[[Physics]]
[[ABCDMethod]]



202409201008
