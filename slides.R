## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)
library(tidyverse)
library(ISLR)
if(FALSE){
  #rmarkdown::render("slides.Rmd", output_format = c("html_document", "ioslides_presentation"))
  rmarkdown::render("slides.Rmd", output_format = c("html_document"))
  knitr::purl("slides.Rmd")
}

