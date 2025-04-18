#' @title Run the Takuzu Shiny App
#' @description This function launches the Shiny app included in the TakuzuKL package.
#'
#' @export
runTakuzuApp <- function() {
  appFile <- system.file("app.R", package = "TakuzuKL")
  if (appFile == "") {
    stop("Could not find the Shiny app file. Try re-installing the package.", call. = FALSE)
  }
  options(shiny.autoload.r = FALSE)  # Отключить автоматическую загрузку R/ подкаталога
  shiny::runApp(appFile, display.mode = "normal")
}
