# t: connect2pgsql.R ####
# v: 2021-08-15T1955 AU


connect2pgsql <- function() {
  db_connection <-
    RPostgres::dbConnect(
      drv=Postgres()
      , user=rstudioapi::askForPassword("user:")
      , password=rstudioapi::askForPassword("pass:")
      , host="localhost"
      , dbname="postgres"
      , port=5432
    )
  
  return(db_connection)
}

#### TESTING ####
## QC: list all the tables
# stopifnot(length(dbListTables(connect2pgsql())) >= 1)
