# title: sim_df_planets_gates_lines.R ####
# v: 2021-08-14T1544 AU


sim_df_planets_gates_lines <-
  function(
    planets
    , gates_with_lines
    , color
  ) {
    
    my_df <-
      data.frame(
        gate = gates_with_lines
        , planet = planets
        , type = rep(color, length(planets))
      )
    
    return(my_df)
  }
