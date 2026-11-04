---
permalink: /mars_temporary/
title: "maRS"
author_profile: false
---
<p align="left">
  <img src="{{ '/images/logo_maRS.png' | relative_url }}" alt="maRS Logo" width="100">
</p>

**maRS is an R package with a user-friendly interface and tools for multivariate data analysis, including pattern recognition, classification, regression, and other related analytical applications.**

## Main Features
- Signal preprocessing (MSC, SNV, L1/L2 normalization, and Savitzky–Golay)
- Class oversampling for imbalanced datasets (SMOTE and ADASYN)
- Hierarchical Cluster Analysis (HCA)
- Principal Component Analysis (PCA) with 2D and 3D visualization
- Projection of supplementary rows and columns in PCA
- One-class classification (SIMCA, DD-SIMCA, and Robust DD-SIMCA)
- Multiple Linear Regression Discriminant Analysis (MLR-DA)
- Partial Least Squares Discriminant Analysis (PLS-DA)
- Multiple Linear Regression (MLR)
- Partial Least Squares Regression (PLS)
- Variable selection algorithms (iPLS/iPLS-DA and BVE-PLS/BVE-PLS-DA)
- Sample set partitioning (Kennard–Stone, SPXY, and random selection)
- Model diagnostics, predicted-versus-observed plots, and variable importance
- External sample prediction and model export
- Interactive plots

## Installation
maRS is an R-based application that works on Windows, Linux, and macOS.

1. Download and install R (version 4.4 or later) from https://www.r-project.org/
2. Open R and run:

```r
source("https://laquali-ufla.github.io/maRS/install.R")
```

## Running maRS
maRS can be accessed through either its graphical interface or as a regular R package.

**To use with the graphical interface:** Launch maRS from the shortcut icon <img src="/images/logo_maRS.png" style="height: 22px; width: auto; vertical-align: middle;"> available in the Start Menu or Application Launcher, or start the graphical interface from R with:

```r
library(maRSpkg)
mars_gui()
```
> **Note:**  
> When maRS is running, your web browser may deactivate inactive tabs to reduce memory usage. If the maRS tab becomes inactive after a period without interaction, add the local maRS address to your browser's list of sites that should remain active (if this option is available).
> 
> - **Google Chrome / Chromium / Microsoft Edge:** Open your browser, go to **Settings → Performance → Always keep these sites active → Add site**, and add `http://127.0.0.1`.
> - Other browsers may use different mechanisms for managing inactive tabs.

**To use as a regular R package:** Use maRS as a regular R package and access its documentation with:

```r
library(maRSpkg)
help(maRSpkg)
```

## Uninstall maRS
Open R and run:

```r
maRSpkg::uninstall_mars()
```

## Contact
**Prof. Cleiton Nunes**  
Federal University of Lavras – UFLA  
cleiton.nunes@ufla.br
