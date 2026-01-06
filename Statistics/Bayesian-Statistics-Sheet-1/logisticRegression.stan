data {
  int<lower=0> N; //number of observations
  int<lower=0> p; //number of regressors
  matrix[N, p] X; //regression matrix, dataframe as a matrix
  int y[N];

  int<lower=0> N_new; //validation points
  matrix[N_new, p] X_new;
  // Hyperparameters
  real a; //Prior mean of alpha
  real<lower=0> Sigma_a; //Prior variance of alpha
  vector[p] beta0; //vector of prior means for beta
  vector[p] Sigma_b; //vector of prior sigmas for beta
}
parameters{
  real alpha; //intercept
  vector[p] beta; //coefficients
}
transformed parameters{
  vector[N] eta; //linear predictor
  eta = alpha + X*beta;
}
model {
  alpha ~ normal(a, Sigma_a);
  beta[1:p] ~ normal(beta0[1:p],Sigma_b[1:p]); //Prior for beta
  //y ~ bernoulli_logit(alpha+X*beta);
  y ~ bernoulli_logit(eta);
}
generated quantities{
  vector[N_new] eta_new;
  for(i in 1:N_new){
    eta_new[i] = alpha + X_new[i,]*beta;
    //bernoulli_logit_rng(alpha + X_new[i,]*beta);
  }
}
