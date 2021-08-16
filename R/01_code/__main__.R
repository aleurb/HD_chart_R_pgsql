# t: Human Design chart with `R` and `postgreSQL` ####
# v: 2021-08-16T1356 AU


#### Setup
rm(list=ls())
DEMO_MODE = FALSE
setwd(getwd())

## Load project files 
source('src/load_setup.R')



#### RUN ####
if(DEMO_MODE) source('src/__demo__.R')

if(!DEMO_MODE) {
  gates_lines_b <- load_chart('b')
  gates_lines_r <- load_chart('r')
  
  
  ## SQL
  {
    my_conn <- connect2pgsql()
    gates_lines_b_descr <- get_descr_pgsql(my_conn, gates_lines_b$GATES)
    gates_lines_r_descr <- get_descr_pgsql(my_conn, gates_lines_r$GATES)
    dbDisconnect(my_conn) # discard the connection
  }
  source('src/output_df.R')
}
