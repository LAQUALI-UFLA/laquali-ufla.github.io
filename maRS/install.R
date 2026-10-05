if ("maRSpkg" %in% loadedNamespaces()) {
  unloadNamespace("maRSpkg")
}

options(repos = c(CRAN = "https://cloud.r-project.org"))
if (!require("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_url("https://laquali-ufla.github.io/maRS/maRS_inst_pkg.zip", force = TRUE, upgrade = "always")

maRSpkg::create_shortcuts()

message(
  "########################################################## \n",
  "Installation completed successfully! maRS is ready to use. \n\n",
  "To use the graphical interface: \n",
  "launch maRS from the Start Menu/Application Launcher \n",
  "or run library(maRSpkg); mars_gui() in R.\n\n",
  "To use maRS as a traditional R package:\n",
  "run library(maRSpkg) and \n",
  "access its documentation with help(maRSpkg).\n",
  "##########################################################"
)
