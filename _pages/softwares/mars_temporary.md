---
permalink: /mars_temporary/
title: "maRS"
author_profile: false
---
<p align="left">
  <img src="{{ '/images/logo_maRS.png' | relative_url }}" alt="maRS Logo" width="100">
</p>

**maRS is an R package with a user-friendly interface and tools for multivariate data analysis, including pattern recognition, classification, regression, and other related analytical applications.**

- **Data Management, Visualization, and Preprocessing**
  - File import (.xls, .xlsx, .txt, .dat, .csv)
  - Definition of calibration and test groups
  - Signal preprocessing (MSC, SNV, L1/L2 normalization, and Savitzky–Golay)
  - Class oversampling using the Synthetic Minority Over-sampling Technique (SMOTE)
  - Class oversampling using Adaptive Synthetic Sampling (ADASYN)
  - Interactive line and profile plots

- **Exploratory Analysis**
  - Hierarchical Cluster Analysis (HCA)
  - Single, Complete, and Average linkage methods in HCA
  - Cluster-based and k-group coloring in HCA
  - Principal Component Analysis (PCA)
  - Projection of supplementary rows and columns in PCA
  - 2D and 3D Scores, Loadings, and Biplot visualizations in PCA
  - Confidence ellipses in PCA

- **Multivariate Calibration**
  - Multiple Linear Regression (MLR)
  - Partial Least Squares Regression (PLS)
  - Interval PLS (iPLS), using Forward and Backward strategies
  - Backward Variable Elimination PLS (BVE-PLS)
  - Limit of Detection (LOD) calculation
  - Multiple regression performance metrics

- **Classification**
  - Soft Independent Modeling of Class Analogy (SIMCA, and DD-SIMCA)
  - MLR Discriminant Analysis (MLR-DA)
  - PLS Discriminant Analysis (PLS-DA)
  - iPLS Discriminant Analysis (iPLS-DA)
  - BVE-PLS Discriminant Analysis (BVE/PLS-DA)
  - Fisher Ratio calculation for variables
  - Multiple classification performance metrics

- **Auxiliary Features**
  - Sample set partitioning (Kennard–Stone, SPXY, randomized, and manual specification)
  - Cross-validation methods (Leave-One-Out (LOO), Venetian Blinds, and random k-fold)
  - y-randomization test
  - Automatic determination of the optimal number of components or latent variables using the Elbow Method
  - Outlier detection, model diagnostics, and variable importance plots
  - Prediction of new datasets
  - Plot export (PNG, JPEG, TIFF, BMP, SVG, EPS, and PPTX)

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

- **To use the graphical interface from the shortcut**, launch maRS by clicking the shortcut icon available in the Start Menu (Windows), Application Launcher (Linux), or the Applications folder within the user directory (macOS). On macOS, maRS can also be launched using Spotlight.

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

- On macOS, some graphs may require XQuartz to be displayed correctly. If plotting issues occur with an error message related to XQuartz, install it from [https://www.xquartz.org/](https://www.xquartz.org/) and restart maRS.

## Sample datasets
[Download sample datasets. →](/maRS/maRS_sample_datasets.zip)

## Contact
**Prof. Cleiton Nunes**  
Federal University of Lavras – UFLA  
cleiton.nunes@ufla.br
