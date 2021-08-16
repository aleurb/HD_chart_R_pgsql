#### title: lookup_descr.R
# v: 2021-08-14T1646 AU


#### TEST INPUTS ####
# my_lines_df <- gates_lines_b$GATES
# my_lookup_df <- lookup_df

lookup_descr <- function(my_lines_df, my_lookup_df) {
  
  my_lines_df <- as.character(my_lines_df)
  
  results <- data.frame() # init storage
  
  for(gate_line in 1:length(as.character(my_lines_df))) {
    gate_line_split <-
      strsplit(
        my_lines_df[gate_line]
        , split = '.'
        , fixed = T # skip regex
      )
    # print(gate_line_split) # QC
    this_gate <- unlist(gate_line_split)[1]
    this_line <- unlist(gate_line_split)[2]
    this_X <- paste0('X',this_line,'L',sep='')
    this_Xp <- paste0('X',this_line,'p',sep='')
    this_Xs <- paste0('X',this_line,'s',sep='')
    
    this_X_name <-
      my_lookup_df[my_lookup_df$GATE==this_gate,this_X]
    this_Xp_name <-
      my_lookup_df[my_lookup_df$GATE==this_gate,this_Xp]
    this_Xs_name <-
      my_lookup_df[my_lookup_df$GATE==this_gate,this_Xs]
    
    this_result <-
      data.frame(
        gate = this_gate
        , line = this_line
        , line_name = this_X_name
        , line_neg = this_Xs_name
        , line_pos = this_Xp_name
      )
    
    results <-
      rbind(
        results
        , this_result
      )
  }
  
  return(results)
}




#### TESTING: PASS ####
# lookup_list <- c('35.3', '35.4')
# df <- lookup_descr(gates_lines_b$GATES, lookup_df)
# stopifnot(dim(df)[1]==2 && dim(df)[2]==5)
