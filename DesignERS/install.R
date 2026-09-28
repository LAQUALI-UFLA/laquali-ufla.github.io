if ("designers" %in% loadedNamespaces()) {
  unloadNamespace("designers")
}

options(repos = c(CRAN = "https://cloud.r-project.org"))
if (!require("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_url("https://laquali-ufla.github.io/DesignERS/DesignERS_inst_pkg.zip", force = TRUE, upgrade = "always")
suppressPackageStartupMessages(library(designers))
designers::create_shortcuts()

cat("\n========================================\n")
cat("  Installation completed successfully!\n")
cat("  DesignERS is ready to use.\n")
cat("========================================\n\n")
