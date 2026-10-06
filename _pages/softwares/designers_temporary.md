---
permalink: /designers_temporary/
title: "DesignERS"
author_profile: false
---
<p align="left">
  <img src="{{ '/images/logo_DesignERS.png' | relative_url }}" alt="DesignERS Logo" width="100">
</p>

**DesignERS provides tools for generating and analyzing experimental designs for screening, response surface methodology, and mixture studies.**

## Main Features
- Full Factorial Design
- Fractional Factorial Design
- Plackett–Burman Design
- Face-Centered Design
- Central Composite Design
- Three-factor Mixture Designs
- Multi-objective desirability function
- Statistical modeling
- Model refinement
- ANOVA evaluation
- Diagnostic plotting
- Response surface visualization

## Installation
DesignERS is an R-based application that works on Windows, Linux, and macOS.

1. Download and install R (version 4.4 or later) from https://www.r-project.org/
2. Open R and run:

```r
source("https://laquali-ufla.github.io/DesignERS/install.R")
```

## Running DesignERS
DesignERS can be accessed through either its graphical interface or as a regular R package.

**Graphical interface:** Launch DesignERS from the shortcut (<img src="/images/logo_DesignERS.png" style="height: 22px; width: auto; vertical-align: middle;">) available in the Start Menu or Application Launcher, or start the graphical interface from R with:

```r
library(designers)
designers_gui()
```
> **Note:**  
> When DesignERS is running, your web browser may deactivate inactive tabs to reduce memory usage. If the DesignERS tab becomes inactive after a period without interaction, add the local DesignERS address to your browser's list of sites that should remain active (if this option is available).
> 
> - **Google Chrome / Chromium / Microsoft Edge:** Open your browser, go to **Settings → Performance → Always keep these sites active → Add site**, and add `http://127.0.0.1`.
> - Other browsers may use different mechanisms for managing inactive tabs.

**Regular R package:** Use DesignERS as a regular R package and access its documentation with:

```r
library(designers)
help(designers)
```

## Uninstall DesignERS
Open R and run:

```r
designers::uninstall_designers()
```

## Contact
**Prof. Cleiton Nunes**  
Federal University of Lavras – UFLA  
cleiton.nunes@ufla.br
