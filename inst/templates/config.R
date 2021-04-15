##================================================================
##               Global project variables go here               ==
##================================================================
root <- rprojroot::is_git_root

##----------------------------------------------------------------
##               Default file names and locations               --
##----------------------------------------------------------------
config.pg_db_name    <- Sys.getenv("PG_DB_NAME")
config.airtable.base <- Sys.getenv("AIRTABLE_BASE_ID")
config.raw_dir <- fs::path("raw")

##----------------------------------------------------------------
##                        Logging                               --
##----------------------------------------------------------------
logger::log_layout(logger::layout_glue_colors)
logger::log_threshold(DEBUG)
