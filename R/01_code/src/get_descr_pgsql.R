# t: get_descr_pgsql.R
# v: 2021-08-16T1323 AU


get_descr_pgsql <- function(my_conn, my_gates_lines_list) {
  all_descr <- data.frame() # init storage
  # my_gates_lines_list <- gates_lines_b$GATES # qc
  
  ## iterate black gates
  for (idx_row in 1:length(my_gates_lines_list)) {
    # idx_row <- 8 # QC
    this_gate_line <- my_gates_lines_list[idx_row]
    
    cat(idx_row, '\t', this_gate_line, '\n', sep='')
    
    my_query <-
      paste0(
        "  SELECT line_name, line_detriment, line_exalted  "
        , "  FROM public.gates_lines_descr  "
        , "  WHERE gate_line_id = '", this_gate_line, "'"
        , ";"
      )
    
    this_gate_line_descr <-
      query_pgsql(
        my_conn
        , my_query
      )
    
    stopifnot(dim(this_gate_line_descr)[1] > 0 && dim(this_gate_line_descr)[2] > 0)
    
    all_descr <- 
      rbind(
        all_descr
        , this_gate_line_descr
      )
  }
  
  return(all_descr)
}
