# t: output_df.R
# v: 2021-08-16T1328 AU

my_b <- cbind(gates_lines_b, gates_lines_b_descr)
my_r <- cbind(gates_lines_r, gates_lines_r_descr)

df <- rbind(my_b, my_r)

write.csv(
  file='../04_data/output.csv'
  , x = df
  , row.names = F
)
