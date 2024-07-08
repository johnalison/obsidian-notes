## AI: A modern approach.  (Stuart Russell and Peter Norvig)

- Decent brought a lot together

- Was not until the 18C that the brain was thought to be the seat of consciousness. Before then, other candidates included the heart and spleen.

  #UsedToBelieve

- BF Skinner "Verbal Behavior" (Curiously a review of the book became as famous as the book itself and killed off behaviorism)

- In 2001, argument that improvement in image recognition from increasing size of data by 10-100 outweighs any improvement from teaching algorithm.

- It is better to design measures according to what you actually want to achieve rather than how you think the agent should behave.

- Rationality maximizes expected performance, perfection maximizes actual performance.

- Is life on earth a search algorithm?

- Things that are hard to learn end up in the genome, things that are easy to learn, need not.

 [[WhoWeAre]]

- When uncertainty enters, possibilities are multiplied enormously and forming detailed plans of action becomes pointless b/c the world is not going to play along.

- After humanity spent 1000s of years improving our tactics, computers tell humans they are completely wrong. I would go so far as to say not a single human has touched the edge of the truth of "Go"
   Alien type of intelligence re: alpha-zero.

 #AI

- Mu Zero operates without even being told the rules of the game. 

- n-queens is easy for local search b/c solutions are densely distributed throughout the state space (Better to start at random and improve). 

- An inference algorithms is complete if it can derive any sentence that is entailed.  "The world is everything that is the case".

- The problem of determining the satisfiability of sentences in propositional logic (SAT problem) was the 1st to be shown to be NP-complete. Many problems in computer science are really SAT problems. 

- Programming languages lack a general mechanism for deriving facts from other facts. 

- The whole of number theory (+ cryptology) can be built up from one constant, one function, one predicate and 4 axioms. 

- Entailment for 1st order logic is semi-decidable: algorithms exist to say yes to all entailed sentences, but no algorithm that says no to every non-entailed sentence ("Halting problem")

- Incompleteness theorem: there are true arithmetic statements that cannot be proved. 

- We can never prove all the theorems of mathematics with any given system of axioms

- DeepMath: system uses deepNN to select axioms that are most likely to lead to a proof when handed to a traditional theorem prover. 
  In a sense, NN plays the role of mathematicians intuition.

- One important aspect of learning is the ability to generalize eliminating detail that is specific to the problem instance. It seems inconceivable that humans could be as competent without such a mechanism.

- The decomposition of large probabilistic domains into weakly connected subsets through conditional independence is one of the most important developments in AI.

 #AI

- The utility of money is almost exactly proportional to the logarithm of the amount.

- One of the most important parts of decision making is know what questions to ask.

- Information has values to the extent that it is likely to cause a change of plan and to the extent that the new plan will be significantly better than the old.

 #Rationality

- If all perturbations of the parameters leave the optimal decision unchanged, then it is reasonable to assume its a good one. If however, the optimal decision changes considerably with the parameters of the model, then there is a good chance that the model may produce a decision that is substantially sub-optimal.

  #Rationality #MentalModels #Checklists

- Models of concurrent action have been a major focus of research in CS for decades, but no definitive model has prevailed. 

- Nash equilibrium: every player simultaneously playing best response given the choices of others. 

- Every game has at least one Nash eq. in mixed strategies (This is why Nash equilibrium are important)

- Outcome is Pareto optimal of no other outcome that would improve one player with out harming another.

- Voting: there will always be some circumstances under which a voter can benefit by misrepresenting their preferences. 

- Why ML ?| Designers cannot anticipate all future situations, or have no idea who to program a solution. 

- Decision Trees: often the first method tried (for classification) 
Pros: ease of understanding / scalability / discrete and continuous
Cons: Can have sub-optimal accuracy / if deep, expensive to run / unstable one new example can change whole tree)

- L1 regularization tends to produce sparse models. Takes the dimensional axes seriously, while L2 treats them as arbitrary. 

- Trick of locality-sensitivity Hash (LSH). Need has function g(x) with property that the probability  that two points have same hash is small if distance is large and high if distance is small. Create multiple random projections and combine. g_1, ... g_n. Fetch set of points in bin g_i(x_q) of each hash table and take the union to define candidates. 

- Locality weighted regression advantages of nearest neighbors w/o discontinuities.  Avoid discontinuities in h(x) by avoiding discontinuities in the set of example to estimate h(x). 
  Decrease weight over distance gradually (width matters more than shape)

- SUMS Combine advantages of non-parametric and parametric models.  Flexibility to represent complex functions, but are resistant to over-fitting. Logistic Regression finds some separating line, the exact location depends on ALL the example points. Key insight of SUMS is that some examples are more important that others and paying attention to these leads to better generalization. (ie: SUMS attempt to minimize GENERALIZED loss)

- The most important factor in success of ML projects is the features used. 

- Random Forrest: good when you have a lot of categorical features with many that are irrelevant. 

- Nonparametric: good when lot of data, no prior knowledge and dont want to worry about getting wrong features. 

- Log. Regression does well when the data are linearly separable

- SVM good when the data are not too large. 

- Decision trees and linear regression are highly interpretative. 

- If you need ML, then the problem is complex, you shouldn't expect a simple explanation.
  (Which would you trust: experimental aircraft never flown, but with a detailed explanation of why it is safe? or, an aircraft that completed 100 flights with no guaranteed explanation?)

  #AI

- Beta distributions B(T,a,b) = \alpha T^(a-b) (1-T)^b-1 is closed under Bayes updates.

- A sufficiently large NN can implement a lookup table

- One hot encoding generally better than mapping values to ints. (One hot ignores numerical adjacency)

  #AI

- When comparing networks with similar numbers of parameters, the deeper network typically generalizes better

- A linear auto-encoder is closely connected to Principle Component Analysis. 

- "The AI revolution will not be supervised"

- There is not much point learning about the best radio station when falling off a cliff.

- No single best approach to reinforcement learning.

- When deep network trained on abstracts up to 2008 and asked to pick compounds that are "thermo electric" but not yet in abstracts 3 of model top 5 pick were discovered to be thermometric in later papers.

- Why we see color: fruit is a bribes trees offer animal to carry their seeds. Signal the bribe with colors. Fruits starts green then changes to red or yellow when ripe.  Fruit eating animals need to see these changes.

[[WhoWeAre]]

- Have realized deep network better and over fitting fears overblown.

- Critics of weak AI objected to the very possibility of intelligent behavior (now seen as short sighted)

- Autonomous weapons scalable weapons of mass destruction. Scale of attack is proportional to amount of hardware one can afford. 
   | Leave property intact.  Can be applied selectively - possible untraceable

- k anonymity: a database is k-anonymous  if every record in the database is indistinguishable from at least k-1 others.

- Explanations are not decisions, they are stories about decisions

  #AI

- In 1900, 40% of US in agriculture, in 2000 only 2%, in 2010 25% played farmville.

- Almost any tech in the wrong hands can cause harm, but with AI the hands might be operating on their own.

  #AI

- Krakova 2018 (AI agents that have gamed the system)
https://deepmind.com/blog/article/Specification-gaming-the-flip-side-of-AI-ingenuity

 #AI

- Trying to write down all the rules so that the robot always does the right thing is almost certainly hopeless.  
   eg: trying to write loophole-free tax code for several thousand years without success. Better to make a robust sense of "I want to pay my taxes"

#AI #Leadership #Invert

- Some warn we have no experience controlling powerful non-human entities with superhuman capabilities. Not quite true, centuries of experience with nations and corporations. Our record of controlling these entities is not very encouraging. (Wars / Global warming ect)

#AI

- "Money is like gasoline during a road trip. You dont want to run out of gas on your trip, but your not doing a tour of gas stations. You have to pay attention to money, but it shouldn't be all about money."