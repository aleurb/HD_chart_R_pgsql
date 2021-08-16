# t: __demo.R__
# v: 2021-08-16T1324 AU

gates <- 1L:64L
lines <- c(1L, 2L, 3L, 4L, 5L, 6L)
source('src/sim_planets_gates.R')
source('src/sim_gates_lines.R')
source('src/sim_df_planets_gates_lines.R')
#### RUN ####
source('src/sim_planets_gates_lines.R')
####

# source('src/load_lookup.R')
# source('src/lookup_descr.R')
# b_descr <- lookup_descr(gates_lines_b$GATES, lookup_df)
# r_descr <- lookup_descr(gates_lines_r$GATES, lookup_df)
# my_b <- cbind(color = 'b', planets, gates_lines_b, b_descr)
# my_r <- cbind(color = 'r', planets, gates_lines_r, r_descr)
# source('src/output_df.R')
