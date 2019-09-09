# Hello, world!
#
# This is an example function named 'hello' 
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# define a function
dm <- function(x){
  col_label <- x[,1]
  x_matrix <- x[,-1]
  x_matrix_t <- t(x_matrix)
  x_matrix_t_order <- x_matrix_t[order(rownames(x_matrix_t)),]
  x_matrix_t <- t(x_matrix_t_order)
  rownames(x_matrix_t) <- col_label
  return(x_matrix_t)
}

