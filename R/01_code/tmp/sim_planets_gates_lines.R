#### title: sim_planets_gates_lines.R ####
#### v: 2021-08-14T1551 AU



#### Simulate Gates ####

my_b_gates <- sim_planets_in_gates(planets, gates) # black
# my_b_gates # QC

my_r_gates <- sim_planets_in_gates(planets, gates) # red
# my_r_gates # QC




#### Simulate Lines ####

## sim lines
my_b_gates_lines <- sim_gates_lines(my_b_gates, lines)
my_r_gates_lines <- sim_gates_lines(my_r_gates, lines)




#### Output to data frame ####

my_b_df <- sim_df_planets_gates_lines(planets, my_b_gates_lines, 'b')
my_r_df <- sim_df_planets_gates_lines(planets, my_r_gates_lines, 'r')

## output: sim df planets gates lines
df <- rbind(my_b_df, my_r_df)
