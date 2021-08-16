# t: load_chart.R ####
# v: 2021-08-14T1606 AU



load_chart <- function(color) {
  df <-
    read.csv(
      file = paste0('../02_raw-data/gates_', color, '.csv')
      , fileEncoding = "UTF-8-BOM"
    )
  
  return(df)
}


#### TEST ####
# gates_b <- load_chart('b')
# gates_r <- load_chart('r')
