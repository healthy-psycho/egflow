##----------------------------------------------------------------
##                    Source project R files                     -
##----------------------------------------------------------------
source( "./packages.R" )
lapply(list.files( "./R", full.names = TRUE), source )

##----------------------------------------------------------------
##            Setup connection to external resources             -
##----------------------------------------------------------------
db_con <- DBI::dbConnect(
  RPostgres::Postgres(),
  dbname = config.pg_db_name
)

pipeline <- tar_plan(

)

