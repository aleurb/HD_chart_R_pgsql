# t: load_setup.R
# v: 2021-08-16T1352 AU

## load libraries
library('devtools') # OK
library('remotes') # OK
library('Rcpp') # OK
library('RPostgres') # OK
library('DBI') # OK

## load functions
source('src/connect2pgsql.R')
source('src/query_pgsql.R')
source('src/get_descr_pgsql.R')
source('src/load_planets.R')
source('src/load_chart.R')

## load constants
planets <- load_planets()
