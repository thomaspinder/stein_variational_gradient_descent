# Stein Variational Gradient Descent 

This is an implementation of SVGD, based on the [code of Dillin Wang](https://github.com/dilinwang820/Stein-Variational-Gradient-Descent). Within the Bayesian framework, variational inference is used as an alternative to Markov Chain Monte-Carlo whereby the complex problem of integration contained within the marginal likelihood is replaced by an optimisation task. SVGD minises the Kullback-Leibler divergence between the variational approximation and the true posterior by
iteratively finding a set of particles to represent the true posterior.
