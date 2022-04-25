##' Use a starter .gitignore
##'
##' Drop a starter .gitignore in the current working directory, including
##' ignores for targets and capsule (renv).
##'
##' @title use_gitignore
##' @return nothing, creates a file.
##' @author Eric Gaudiello
##' @export
use_gitignore_egflow <- function() {
  if ( file.exists("./.gitignore") ) {
    message( "./.gitignore file already exists and was not overwritten." )
    invisible( return( NULL ) )
  }
  usethis::use_template(
    template = "_gitignore",
    package  = "egflow",
    save_as  = ".gitignore"
  )
}

##' Setup an egflow default project
##'
##' Creates files and directories according to the egflow project template.
##'
##' @title use_project_egflow
##' @return Nothing. Modifies your workspace.
##' @author Eric Gaudiello
##' @export
use_project_egflow <- function() {

  ## R setup, including targets
  usethis::use_directory("R")
  usethis::use_template("packages.R", package = "egflow")
  usethis::use_template("_targets.R", package = "egflow")
  usethis::use_template(
    template = "config.R",
    save_as  = "R/config.R",
    package  = "egflow"
  )
  usethis::use_template(
    template = "scratch_pad.Rmd",
    save_as  = "scratch_pad.Rmd",
    package  = "egflow"
  )
  ## TODO: only load this if egutil is not installed
  usethis::use_template(
    template = "simple_helpers.R",
    save_as  = "R/simple_helpers.R",
    package  = "egflow"
  )
  usethis::use_r("utils.R")

  # Meta config & env files
  use_gitignore_egflow()
  usethis::use_template(".env", package = "egflow")

  # Project structure
	usethis::use_directory("assets")
	usethis::use_directory("assets/data")
  usethis::use_directory("assets/data/documentation")
  usethis::use_directory("assets/images/")
  usethis::use_directory("assets/images/external")
  usethis::use_directory("assets/images/generated")
  usethis::use_directory("assets/models")
}
