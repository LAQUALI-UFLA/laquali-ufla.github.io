if ("maRSpkg" %in% loadedNamespaces()) {
  unloadNamespace("maRSpkg")
}

if ("maRSpkg" %in% rownames(installed.packages())) {
  maRSpkg::uninstall_mars()
}

options(repos = c(CRAN = "https://cloud.r-project.org"))
if (!require("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_url("https://laquali-ufla.github.io/maRS/maRS_inst_pkg.zip", force = TRUE, upgrade = "always")
suppressPackageStartupMessages(library(maRSpkg))
maRSpkg::create_shortcuts()

message("Installation completed successfully! maRS is ready to use.")
