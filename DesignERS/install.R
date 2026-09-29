if ("designers" %in% loadedNamespaces()) {
  unloadNamespace("designers")
}

options(repos = c(CRAN = "https://cloud.r-project.org"))
if (!require("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_url("https://laquali-ufla.github.io/DesignERS/DesignERS_inst_pkg.zip", force = TRUE, upgrade = "always")

designers::create_shortcuts()

message("Installation completed successfully! DesignERS is ready to use.")
