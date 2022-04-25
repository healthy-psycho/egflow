##================================================================
##               Global project variables go here               ==
##================================================================
root          <- rprojroot::is_git_root

##----------------------------------------------------------------
##                       Path aliases                           --
##----------------------------------------------------------------
assets_home   <- fs::path( "assets" )
data_home     <- fs::path( assets_home, "/data" )
images_home   <- fs::path( assets_home, "/images" )
models_home   <- fs::path( assets_home, "/models" )

##----------------------------------------------------------------
##                       External                              --
##----------------------------------------------------------------
config.pg_db_name    <- Sys.getenv( "PG_DB_NAME" )
config.airtable.base <- Sys.getenv( "AIRTABLE_BASE_ID" )

##----------------------------------------------------------------
##                       External                              --
##----------------------------------------------------------------
logger::log_layout( logger::layout_glue_colors )
logger::log_threshold( DEBUG )

