
Assume we have in the SR 
D - data events and
B - predicted background events

## 1) Assume no/negligible background uncertainty

with one bin (ie: counting experiment) the significance of the discrepancy is given by 

$$
S_0 = \frac{D - B }{\sqrt{D}}
$$
with k random bins of equal size, (meaning there is no "shape" or trend of the D  or B) 

Then the significance is given by, 

$$
S_k  = \sqrt{ \sum_k \left( \frac{D_k - B_k }{\sqrt{D_k}} \right)^2 } = \sqrt{ \left(\sum_k \frac{ \frac{D}{k} - \frac{B}{k} }{\sqrt{ \frac{D}{k} }} \right)^2 } = \sqrt{ \sum_k \left(  \frac{1}{\sqrt{k}} \frac{D - B }{\sqrt{D}}  \right)^2} = \sqrt{ \sum_k \left( \frac{1}{\sqrt{k}} S_0 \right)^2} 
$$
$$
= \sqrt{ \sum_k  \frac{1}{k} S_0^2 } = S_0
$$

## 2) Now include background uncertianty

D3 is number of 3b data
B = $\sum w$D3, with $w\sim$ B / D3        

*(Note that the analysis is typically setup such that w << 1, ie more D3 than expected D4 background)*

Now with one bin the  significance of the discrepancy is given by 

$$
S_0 = \frac{D - B }{\sqrt{D + \sum w^2}} = \frac{D - B }{\sqrt{D + \sum (\frac{B}{D3})^2}} = \frac{D - B }{\sqrt{D + (\frac{B}{D3})^2 D3} } = \frac{D - B }{\sqrt{D + (\frac{B}{D3}) B} } = = \frac{D - B }{\sqrt{D + w B} }
$$
*(Again, note that the 2nd term in the denominator is usually arranged to be small bc w<<1)*

Now with k bins: 

$$
S_k  = \sqrt{ \sum_k \left( \frac{\frac{D}{k} - \frac{B}{k} }{\sqrt{\frac{D}{k} + (\frac{B}{D3})^2 \frac{D3}{k}} } \right)^2 } = \sqrt{ \sum_k \left(\frac{1}{\sqrt{k}} \frac{D - B }{\sqrt{D + w B}} \right)^2 } = S_0
$$




202504181245
