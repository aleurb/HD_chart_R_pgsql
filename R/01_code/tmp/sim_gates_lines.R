#### title: sim_planets_in_gates.R ####
#### v: 2021-08-12R1947 AU

sim_gates_lines <- function(gates, lines) {
  
  lines_in_gates <- c() # init storage
  
  for(idx_gate in 1:length(gates)) {
    ## print info
    # cat(idx_gate, ': ', gates[idx_gate])
    
    ## get `line for gate` - randomly
    this_gate_line <- sample(lines, 1)

    ## save to list
    lines_in_gates <- c(lines_in_gates, this_gate_line)
  }
  
  ## merge with lines
  gates_with_lines <- paste0(gates, '.', lines_in_gates)

  return(gates_with_lines)
}
