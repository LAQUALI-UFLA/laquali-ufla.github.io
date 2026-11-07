---
permalink: /chemoface_changelog/
title: "Chemoface - Changelog"
author_profile: false
---

- **Version 1.77:**
  - Plots curvature and the mean on the Pareto chart.

- **Version 1.76:**
  - Fixed a bug when pasting response values into a Plackett–Burman design.
  - Fixed a bug when plotting the effects of a Plackett–Burman design.

- **Version 1.75:**
  - LDA was renamed to MLR-DA to align with the actual methodology.
  - Class-wise VIP was replaced by global VIP in PLS-DA.
  - Meaningless averages for TP, TN, FP, and FN were removed from the outputs.
  - Added mean and curvature effect calculations to DoE.
  - Added user control over 3-way effect calculations in full factorial.
  - Fixed a bug when pasting response values into the Plackett–Burman design.
  - Fixed a bug in coded/uncoded switching in the Plackett–Burman design.

- **Version 1.74:**
  - Improvement to provide sample labels when copying measured x predicted.

- **Version 1.73:**
  - Fixed 3D PCA plotting error when using color by class and identical samples.
  - Fixed a bug when computing confusion matrix for classes coded as 0 and 1.

- **Version 1.72:**
  - Fixed a bug when plotting 3D PCA scores using unordered classes.
  - Fixed a bug when using classes coded as 0 and 1 in PLS-DA.

- **Version 1.71:**
  - Fixed a bug when plotting regression coefficients of classification models

- **Version 1.70:**
  - Improvements in the pre-treatment process on the multivariate calibration module

- **Version 1.69:**
  - Enables plotting samples x PCA scores

- **Version 1.68:**
  - Fixed a bug when plotting variables x PCA loadings

- **Version 1.67:**
  - Fixed a bug when copying surface model table using SS-Residual
  - Generating PCA graphs with confidence ellipses
  - Supplementary samples and variables in PCA
  - Insert labels using comma, semicolon, space, or tab as delimiters
  - Specify the size of the test set using percentage
  - Separate the test set based on the size of each class
  - Specify a sample interval for the test set
  - Exclude samples or variables by range or by single selection
  - ‘+’ buttons removed
  - Non-editable tables
  - Improvements in saving/opening data or models
  - Improvements in copying statistical parameters from classification models
  - Improvements in the labeling of samples and variables in graphs

- **Version 1.66:**
  - Faster algorithm for MLR/LDA
  - New metrics for discriminant analysis
  - Outlier detection for the test set
  - Improved outlier detection
  - Construction of central composite design from axial points
  - Fixed bugs

- **Version 1.65:**
  - An option to select a randomized test set in the multivariate calibration has been added

- **Version 1.64:**
  - Fixed bugs
  - Improvements in internal functions

- **Version 1.63:**
  - Explainable R² has been changed to Adjusted R² in experimental designs
  - Graph improvements in mixture design surfaces
  - An option to plot measured x predicted in experimental designs has been added
  - Improvements in mixture design outputs

- **Version 1.62:**
  - Fixed calculation of p-value in mixture design models

- **Version 1.61:**
  - Fixed bugs in Multivariate calibration

- **Version 1.6:**
  - A tool for desirability function has been added in DoE module
  - A tool to plot variable importance for images in multivariate calibration has been added
  - A tool to plot Variable Importance in Projection (VIP) for PLS models has been added
  - An option to compute Error by Sum of Squares in DoE has been added
  - Classification success for each class in discriminant analysis has been added
  - An option of pretreatment by Standard Normal Variate (SNV) has been added
  - R²p has been changed to cR²p in multivariate calibration diagnostics
  - Improvements in DoE module
  - Improvements in PLS and PCR algorithms

- **Version 1.5:**
  - Fixed bugs for graph label in Data Plot
  - Improved options for sample labels in PCA biplot
  - User guide available

- **Version 1.4:**
  - Improved graphs for experimental design
  - Improved functions for Plackett-Burman design

- **Version 1.3:**
  - New contour graphs for experimental design
  - Improved graphics  for experimental design
  - Fixed bugs in screen resolution

- **Version 1.2:**
  - Fixed bugs in screen resolution
  - Full ANOVA table for experimental design models

- **Version 1.1:**
  - Fixed bugs in Multivariate calibration
  - New validation parameters for calibration models
