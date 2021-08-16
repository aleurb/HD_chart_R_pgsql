# t: load_planets.R
# v: 2021-08-15T1943 AU


load_planets <-
  function(
    path2file = '../02_raw-data/planets.csv'
  ) {
    
    planets <-
      read.csv(
        file=path2file
        , fileEncoding = "UTF-8-BOM"
      )
    
    return(planets)
    
  }
