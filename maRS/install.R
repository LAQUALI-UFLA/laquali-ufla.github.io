if ("maRSpkg" %in% loadedNamespaces()) {
  unloadNamespace("maRSpkg")
}

options(repos = c(CRAN = "https://cloud.r-project.org"))
if (!require("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_url("https://laquali-ufla.github.io/maRS/maRS_inst_pkg.zip", force = TRUE, upgrade = "always")
suppressPackageStartupMessages(library(maRSpkg))
maRSpkg::create_shortcuts()

cat("\n========================================\n")
cat("  Installation completed successfully!\n")
cat("  maRS is ready to use.\n")
cat("========================================\n\n")
