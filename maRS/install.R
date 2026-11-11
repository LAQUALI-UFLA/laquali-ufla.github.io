if ("maRSpkg" %in% loadedNamespaces()) {
  unloadNamespace("maRSpkg")
}

options(repos = c(CRAN = "https://cloud.r-project.org"))
if (!require("remotes", quietly = TRUE)) install.packages("remotes")

# Try to download, install via URL, and create shortcuts with error handling
success <- tryCatch({
  remotes::install_url("https://laquali-ufla.github.io/maRS/maRS_inst_pkg.zip", force = TRUE, upgrade = "always")
  maRSpkg::create_shortcuts()
  TRUE
}, error = function(e) {
  message("\n[ERROR] Package installation failed: ", e$message)
  FALSE
})

# Display the success message only if installation succeeded and package is available
if (success && requireNamespace("maRSpkg", quietly = TRUE)) {
  message(
    "########################################################## \n",
    "Installation completed successfully! maRS is ready to use. \n\n",
    "To use the graphical interface: \n",
    "launch maRS from its shortcut \n",
    "or run library(maRSpkg); mars_gui() in R.\n\n",
    "To use maRS as a regular R package:\n",
    "run library(maRSpkg) and \n",
    "access its documentation with help(maRSpkg).\n",
    "##########################################################"
  )
}
