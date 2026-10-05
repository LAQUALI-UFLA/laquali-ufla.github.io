if ("designers" %in% loadedNamespaces()) {
  unloadNamespace("designers")
}

options(repos = c(CRAN = "https://cloud.r-project.org"))
if (!require("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_url("https://laquali-ufla.github.io/DesignERS/DesignERS_inst_pkg.zip", force = TRUE, upgrade = "always")

designers::create_shortcuts()

message(
  "########################################################## \n",
  "Installation completed successfully! DesignERS is ready to use. \n\n",
  "To use the graphical interface: \n",
  "launch DesignERS from the Start Menu/Application Launcher \n",
  "or run library(designers); designers_gui() in R.\n\n",
  "To use DesignERS as a regular R package:\n",
  "run library(designers) and \n",
  "access its documentation with help(designers).\n",
  "##########################################################"
)
