---
permalink: /designers_temporary/
title: "DesignERS"
author_profile: false
---
<p align="left">
  <img src="{{ '/images/logo_DesignERS.png' | relative_url }}" alt="DesignERS Logo" width="100">
</p>

**DesignERS is an R package with a user-friendly interface and tools for generating and analyzing experimental designs for screening, response surface methodology, and mixture experiments.**

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
- 2D and 3D response surface visualization
- Plot export (PNG, JPEG, TIFF, BMP, SVG, EPS, and PPTX)

## Screenshots
[View DesignERS screenshots →](/designers_screenshots/)

## Installing DesignERS
DesignERS is an R-based application that works on Windows, Linux, and macOS.

1. Download and install R (version 4.4 or later) from [r-project.org](https://www.r-project.org/)
2. Open R and run:

```r
source("https://laquali-ufla.github.io/DesignERS/install.R")
```

## Running DesignERS
DesignERS can be accessed through either its graphical interface or as a regular R package.

- **To use the graphical interface from the shortcut**, launch DesignERS by clicking the shortcut icon available in the Start Menu (Windows), Application Launcher (Linux), or the Applications folder within the user directory (macOS). On macOS, DesignERS can also be launched using Spotlight.

- **To use with the graphical interface from R**, start it with:

```r
library(designers)
designers_gui()
```

- **To use as a regular R package**, load the package and access its documentation with:

```r
library(designers)
help(designers)
```

## Uninstalling DesignERS
Open R and run:

```r
designers::uninstall_designers()
```

## Important notes
- It is recommended to disable automatic translation plugins or browser extensions when using DesignERS. These tools may automatically translate elements of the graphical interface, potentially affecting the display and proper functioning of some application components.

- When DesignERS is running, your web browser may deactivate inactive tabs to reduce memory usage. If the DesignERS tab becomes inactive after a period without interaction, add the local DesignERS address to your browser's list of sites that should remain active (if this option is available).

  - **Google Chrome / Chromium / Microsoft Edge:** Open your browser, go to **Settings → Performance → Always keep these sites active → Add site**, and add `http://127.0.0.1`.
  - Other browsers may use different mechanisms for managing inactive tabs.

- On Linux, some R packages may be installed from source and may therefore require additional system libraries and development tools. If a package installation fails due to compilation errors or missing system libraries, refer to your Linux distribution's documentation to install the dependencies indicated in the error message, then try installing the package again. If you experience problems installing DesignERS, make sure that the `shiny`, `rhandsontable`, and `htmlwidgets` packages are installed in R before attempting to install DesignERS again.

- On macOS, some graphs may require XQuartz to be displayed correctly. If plotting issues occur with an error message related to XQuartz, install it from [https://www.xquartz.org/](https://www.xquartz.org/) and restart DesignERS.

## Contact
**Prof. Cleiton Nunes**  
Federal University of Lavras – UFLA  
cleiton.nunes@ufla.br
