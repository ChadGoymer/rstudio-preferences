pref_url <- "https://raw.githubusercontent.com/ChadGoymer/rstudio-preferences/main"
app_data <- file.path("C:/Users", Sys.info()[["user"]], "AppData/Roaming/RStudio")

download_config <- TRUE
if (file.exists(file.path(app_data, "config-version"))) {
  current_version <- readLines(file.path(app_data, "config-version"))
  github_version  <- readLines(file.path(pref_url, "config-version"))
  if (identical(current_version, github_version)) {
    download_config <- FALSE
  }
}

if (download_config) {
  download.file(
    url      = file.path(pref_url, "rstudio-prefs.json"),
    destfile = file.path(app_data, "rstudio-prefs.json")
  )
  download.file(
    url      = file.path(pref_url, "config.json"),
    destfile = file.path(app_data, "config.json")
  )
  download.file(
    url      = file.path(pref_url, ".Renviron"),
    destfile = path.expand("~/.Renviron")
  )
  download.file(
    url      = file.path(pref_url, ".Rprofile"),
    destfile = path.expand("~/.Rprofile")
  )
  download.file(
    url      = file.path(pref_url, "config-version"),
    destfile = file.path(app_data, "config-version")
  )
}
