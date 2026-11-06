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

## Screenshots
[View maRS screenshots →](/mars_screenshots/)

## Installing maRS
maRS is an R-based application that works on Windows, Linux, and macOS.

1. Download and install R (version 4.4 or later) from [r-project.org](https://www.r-project.org/)
2. Open R and run:

```r
source("https://laquali-ufla.github.io/maRS/install.R")
```

## Running maRS
maRS can be accessed through either its graphical interface or as a regular R package.

- **To use with the graphical interface from the shortcut**, launch maRS by clicking the shortcut icon <img src="/images/logo_maRS.png" style="height: 22px; width: auto; vertical-align: middle;"> available in the Start Menu or Application Launcher.

- **To use with the graphical interface from R**, start it with:

```r
library(maRSpkg)
mars_gui()
```

- **To use as a regular R package**, load the package and access its documentation with:

```r
library(maRSpkg)
help(maRSpkg)
```

## Uninstalling maRS
Open R and run:

```r
maRSpkg::uninstall_mars()
```

## Important notes
- It is recommended to disable automatic translation plugins or browser extensions when using maRS. These tools may automatically translate elements of the graphical interface, potentially affecting the display and proper functioning of some application components.

- When maRS is running, your web browser may deactivate inactive tabs to reduce memory usage. If the maRS tab becomes inactive after a period without interaction, add the local maRS address to your browser's list of sites that should remain active (if this option is available).

  - **Google Chrome / Chromium / Microsoft Edge:** Open your browser, go to **Settings → Performance → Always keep these sites active → Add site**, and add `http://127.0.0.1`.
  - Other browsers may use different mechanisms for managing inactive tabs.

- On Linux, some R packages may be installed from source and may therefore require additional system libraries and development tools. If a package installation fails due to compilation errors or missing system libraries, refer to your Linux distribution's documentation to install the dependencies indicated in the error message, then try installing the package again. If you experience problems installing maRS, make sure that the `pls`, `scales`, `MASS`, `plot3D`, `car`, `Matrix`, `dendextend`, `shiny`, `readxl`, `writexl`, `officer`, `rvg`, `SMOTEWB`, and `DT` packages are installed in R before attempting to install maRS again.

## Contact
**Prof. Cleiton Nunes**  
Federal University of Lavras – UFLA  
cleiton.nunes@ufla.br
