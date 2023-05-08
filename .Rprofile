local({

  options(
    scipen         = 999,
    warning.length = 8170,
    help_type      = "html",
    repos = c(
      RSPM = switch(
        as.character(getRversion()),
        "3.5.3" = "https://packagemanager.rstudio.com/cran/2019-05-07",
        "3.6.3" = "https://packagemanager.rstudio.com/cran/2020-06-29",
        "4.0.3" = "https://packagemanager.rstudio.com/cran/2021-02-16",
        "4.1.3" = "https://packagemanager.rstudio.com/cran/2022-04-01",
        "4.1.3" = "https://packagemanager.rstudio.com/cran/2023-04-03",
        "https://packagemanager.rstudio.com/cran/latest"
      )
    )
  )

})

cat("Package Repositories:\n  ")
cat(paste(getOption("repos"), collapse = "\n  "))
cat("\n\n")
cat("Package Libraries:\n  ")
cat(paste(.libPaths(), collapse = "\n  "))
cat("\n\n")
