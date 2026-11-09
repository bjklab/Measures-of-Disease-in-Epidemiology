#' load libraries and set seed
library(tidyverse)
library(xaringan)
library(xaringanExtra)
library(pagedown)

set.seed(16)



#' print slides to PDF
pagedown::chrome_print(input = "measures_of_disease_in_epidemiology_2026_bjk.html",
                       output = "measures_of_disease_in_epidemiology.pdf",
                       wait = 30,
                       timeout = 180)
