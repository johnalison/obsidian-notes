
Start with $P_{\rm{comb}}^\mu$ :   look up z,  $\theta_A$,  $m_A$, and $m_B$.  $m_{comb}$ ignored (is this actually true in the boosting ?)

Boost to $P_{\rm{comb}}^z = 0$.  Rotate to $P_{\rm{comb}}^y = 0$.


![[DeclusteringAlgebraDrawing.excalidraw|200]]

$$z_A \equiv \frac{|\vec{A}|\cos\theta_A}{P_T^{comb}}$$


$P_{comb}^\mu = \begin{pmatrix} E^{comb} \\ P_T^{comb} \\ 0 \\ 0 \end{pmatrix}$  Where (for the moment) we are assuming $E^{comb} = P_T^{comb}$

Now we need to get $\vec{P}_A$ and $\vec{P}_B$   (From now on will just write $\vec{A}$ and $\vec{B}$)

$\vec{A} = \begin{pmatrix} |\vec{A}|\cos \theta_A \\ 0 \\ -|\vec{A}|\sin \theta_A \end{pmatrix}$  and  $\vec{B} = \begin{pmatrix} |\vec{B}|\cos \theta_B \\ 0 \\ +|\vec{A}|\sin \theta_B \end{pmatrix}$

So we need $|\vec{A}|, \theta_A$  $|\vec{B}|, \theta_B$ . 

We will look up $z_A$ and $\theta_A$ which fix $|\vec{A}|$ and $\theta_A$. Will constrain the other two unknowns from $\vec{P}_{comb} = \vec{A} + \vec{B}$

## 1) Constraint $P_{comb}^z = 0$

$$
|\vec{A}| \sin\theta_A = |\vec{B}|\sin \theta_B
$$
or   
$$
\sin\theta_B = \frac{|\vec{A}|}{|\vec{B}|} \sin \theta_A    
$$
(equation A)

# 2) Constraint $P_{comb}^T = P_A^T + P_B^T$

$$
P_T^{comb} = |\vec{A}|\cos\theta_A + |\vec{B}|cos\theta_B
$$
$$
= z_A P_T^{comb} + |\vec{B}|cos\theta_B
$$
or 

$$
|\vec{B}| = \frac{(1-z)P_T^{comb}}{\cos\theta_B}
$$
(equation B)

# Combining A & B


$$
\sin\theta_B = \frac{p_T^{comb} z_A}{\cos\theta_A}\frac{\sin\theta_A}{(1-z_A)p_T^{comb}} \cos \theta_B    
$$

OR 

$$
\tan \theta_B = \frac{z}{1-z} \tan\theta_A
$$
# Putting it Together

$\vec{A} = \begin{pmatrix} |\vec{A}|\cos \theta_A \\ 0 \\ -|\vec{A}|\sin \theta_A \end{pmatrix}$  = $\begin{pmatrix} z_A P_T^{comb} \\ 0 \\ -z_A P_T^{comb} \tan\theta_A \end{pmatrix}$ because $|\vec{A}| = \frac{z_A P_T^{comb}}{\cos\theta_A}$

and 

$\vec{B} = \begin{pmatrix} (1-z_A) P_T^{comb} \\ 0 \\ \frac{(1-z_A)P_T^{comb}}{\cos\theta_B}  \sin\theta_B \end{pmatrix}$ =  $\begin{pmatrix} (1-z_A) P_T^{comb} \\ 0 \\ (1-z_A)P_T^{comb}  (\frac{z_A}{1-z_A}) \tan\theta_A \end{pmatrix}$

now have the new vectors in terms of the looked up variables $z_A$ and $\theta_A$.



## Follow-ups


## Links: 
[[Clustering Algebra]]
[[Splitting Templates]]
[[Jet DeClustering]]



202410191153
