Entropia <- function(p, n){
  entropia <- -((p/(p+n))*log2(p/(p+n)))-((n/(p+n))*log2(n/(p+n)))
  return(entropia)
}

