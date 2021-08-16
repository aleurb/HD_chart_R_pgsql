#### title: sim_planets_in_gates.R ####
#### v: 2021-08-14R1554 AU




sim_planets_in_gates <- function(planets, gates) {
  
  results <- c() # init storage
  
  for(idx_planet in 1:length(planets)) {
    # cat(
    #   idx_planet, ': ', planets[idx_planet], '\n'
    #   ,  sep=''
    # )
    
    ## get `one gate`
    one_random_gate <- sample( gates, 1 )
    
    ## save `one gate` to a `list of gates`
    results <- c( results, one_random_gate )
  }
  
  return(results)
}


#### Test ####
# # inputs
# test_planets <- c('A','B','C','D','E','F','G','H')
# test_gates <- c(1:8)
# # run
# planets_in_gates <-
#   sim_planets_in_gates(
#     test_planets
#     , test_gates
#   )
# # check
# stopifnot(length(planets_in_gates)==length(test_planets))
# stopifnot(planets_in_gates%in%test_gates)
