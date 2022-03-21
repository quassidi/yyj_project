install.packages("ggplot2")
library(ggplot2)
library(readr)
yyj <- read_delim("../yyj.txt", delim = "|", 
                  escape_double = FALSE, col_names = FALSE, 
                    trim_ws = TRUE)
View(yyj)