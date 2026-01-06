# MSc Data Science Portfolio

**University of Exeter | Graduated 2021**

This repository contains coursework, projects, and research outputs from my MSc in Data Science. It demonstrates practical application of statistical modelling, machine learning, Bayesian inference, and network analysis techniques across a range of real-world datasets.

---

## Skills & Techniques Demonstrated

### Programming Languages
- **Python**: pandas, NumPy, scikit-learn, Matplotlib, Seaborn, NetworkX, SciPy
- **R**: tidyverse, ggplot2, rstan, coda, bayesplot, MASS, effects

### Machine Learning
- Classification algorithms: Decision Trees, K-Nearest Neighbours, Neural Networks (MLP)
- Model evaluation: cross-validation, confusion matrices, accuracy/precision/recall metrics
- Hyperparameter tuning and model comparison
- Impact of noise on classifier performance

### Statistical Modelling
- Generalised Linear Models (GLMs): Poisson, Negative Binomial, Gaussian, Gamma, Inverse Gaussian, Binomial
- Maximum Likelihood Estimation (MLE) and numerical optimisation
- Model selection using AIC, Chi-squared tests, and residual analysis
- Survival analysis with censored data

### Bayesian Statistics
- Markov Chain Monte Carlo (MCMC) methods using Stan
- Prior specification and sensitivity analysis
- Posterior inference and Monte Carlo error estimation
- Bayesian logistic regression with k-fold cross-validation

### Network Analysis
- Graph metrics: degree distribution, centrality measures (closeness, eigenvector, betweenness)
- Community detection using the Louvain algorithm
- Power law and log-normal distribution fitting
- Epidemic modelling: SI and SIR models with simulations

### Data Analysis & Visualisation
- Exploratory data analysis and feature engineering
- Statistical hypothesis testing (z-tests, Kolmogorov-Smirnov)
- Publication-quality visualisations and interpretive reporting

---

## Repository Structure

```
msc-data-science/
├── Dissertation - EEG BCI Research Project/
│   └── Research Paper.pdf          # MSc dissertation on EEG Brain-Computer Interface
│
├── Learning From Data/
│   ├── Learning-From-Data-Sheet-1/ # Decision Tree classification (diabetes dataset)
│   ├── Learning-From-Data-Sheet-2/ # KNN, Neural Networks, noise impact analysis
│   ├── Data Science in Fraud Detection.pdf
│   └── Twitter Data Analysis.pdf
│
├── Network Analysis/
│   ├── Networks-Sheet-1/           # Network metrics, centrality, community detection
│   └── Networks-Sheet-2/           # Epidemic modelling (SI/SIR), Enron email network
│
└── Statistics/
    ├── Bayesian-Statistics-Sheet-1/    # Bayesian analysis of 2020 US Election data
    ├── Bayesian-Statistics-Sheet-2/    # Additional Bayesian coursework
    ├── Statistical Modelling 1/        # GLMs: dengue fever, AIDS cases, Titanic survival
    ├── Statistical Modelling 2/        # Advanced GLM applications
    └── TB-Risk-In-Brazil/              # Epidemiological analysis of TB risk factors
```

### Module Descriptions

| Folder | Description | Key Techniques |
|--------|-------------|----------------|
| **Dissertation** | MSc research project on EEG-based Brain-Computer Interfaces | Research methodology, signal processing |
| **Learning From Data** | Machine learning fundamentals and classifier comparison | Decision Trees, KNN, MLPClassifier, scikit-learn |
| **Network Analysis** | Social network analysis and epidemic spreading models | NetworkX, Louvain clustering, SI/SIR simulations |
| **Statistics** | Advanced statistical modelling and Bayesian inference | GLMs in R, Stan/MCMC, survival analysis |

---

## How to Explore

### Jupyter Notebooks (Python)
The `Learning From Data/` and `Network Analysis/` folders contain Jupyter notebooks (`.ipynb`) with:
- Documented code with markdown explanations
- Inline visualisations and output
- Step-by-step analysis workflows

To view notebooks without running them, GitHub renders `.ipynb` files directly, or use [nbviewer](https://nbviewer.org/).

### R Markdown Files
The `Statistics/` folder contains R Markdown files (`.Rmd`) alongside rendered PDF outputs. The PDFs provide the complete analysis with figures and commentary.

### PDF Reports
Each module includes PDF outputs containing the final submitted work with all figures, tables, and written analysis.

### Running the Code
Due to the age of this work (2020-2021), exact reproducibility may require older package versions. The notebooks and scripts should serve as references for methodology rather than production code.

---

## Notes on Data & Reproducibility

- **Datasets**: Some datasets may be excluded from the repository due to size or licensing. Original data sources are typically referenced within the notebooks.
- **File paths**: Hardcoded paths in the code may need adjustment for your environment.
- **Package versions**: This work was completed using Python 3.x and R 4.x with packages available in 2020-2021. Some syntax or functions may be deprecated in current versions.
- **Academic context**: This is coursework code written under time constraints for assessment, not production-ready software.

---

## Highlights

### Bayesian Analysis of the 2020 US Election
`Statistics/Bayesian-Statistics-Sheet-1/`

A Bayesian logistic regression analysis exploring how COVID-19 rates correlated with state-level election outcomes. Features Stan/MCMC implementation, sensitivity analysis on priors, and 86% classification accuracy using demographic and pandemic data.

### Network Epidemic Modelling
`Network Analysis/Networks-Sheet-2/`

Implementation of SI and SIR epidemic models on the Enron email network, including a "second wave" variant simulation. Demonstrates network-based disease spreading dynamics with Monte Carlo averaging across 100 simulations.

### GLM Model Comparison for Count Data
`Statistics/Statistical Modelling 1/`

Comparison of Poisson, Gaussian, and Negative Binomial GLMs for modelling AIDS case counts, demonstrating model selection via AIC, residual diagnostics, and handling of overdispersed data.

### Classifier Robustness to Noise
`Learning From Data/Learning-From-Data-Sheet-2/`

Systematic comparison of Decision Trees, KNN, and Neural Networks under increasing label noise (0-30%), revealing relative robustness characteristics of different algorithms.

### Community Detection in Social Networks
`Network Analysis/Networks-Sheet-1/`

Analysis of the Enron email network including degree distribution fitting, assortativity analysis, and community structure identification using the Louvain algorithm.

---

## Disclaimer

This repository contains academic coursework completed as part of an MSc in Data Science at the University of Exeter (2020-2021). The work reflects:

- The tools, libraries, and best practices available at the time
- Academic assessment requirements and constraints
- Learning-focused implementations rather than production code

Some approaches may not reflect current best practices or my current skill level.

---

## License / Usage

This work is shared for **educational and reference purposes**. You are welcome to:
- Review the code and methodology for learning
- Reference the approaches in your own academic work (with appropriate citation)

Please do not submit this work as your own for academic assessment.

---

*Repository maintained as a portfolio of MSc-level data science work.*
