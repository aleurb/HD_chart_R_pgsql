# t: query_pgsql.R
# v: 2021-08-15T1952 AU


query_pgsql <- function(my_connection, my_query) {
  my_df <-
    dbGetQuery(
      my_connection
      , my_query
    )
  
  return(my_df)
}


### TESTING
# my_query <- "SELECT * FROM public.gates_lines;"
# my_con <- connect2pgsql()
# my_df <- query_pgsql(my_con, my_query)
