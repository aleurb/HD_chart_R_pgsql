#### title: load_lookup.R
# v: 2021-08-14T1549 AU



lookup_df <-
  read.csv(
    file = '../02_raw-data/gates-lines_raw-pdf_py_xlsx/GATES-LINES_ICHING.csv'
    , quote = "\""
    , fileEncoding = "UTF-8-BOM"
  )

## example
# head(lookup_df$X6L[lookup_df$GATE==34])
# head(lookup_df$X6p[lookup_df$GATE==34])
# head(lookup_df$X6s[lookup_df$GATE==34])
