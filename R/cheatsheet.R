csOptions <- function(){

  require(magrittr)

  csURL <- "https://github.com/rstudio/cheatsheets"
  csOpts <- csURL %>%
    xml2::read_html() %>%
    rvest::html_text() %>%
    stringr::str_extract_all(".+[.]pdf") %>%
    unlist() %>%
    trimws() %>%
    gsub(., pattern = ".pdf$", replacement = "")
  csOpts[!(csOpts %in% c("0-template", "Update quanteda", "New version of regex", "add stata2r"))]
}

cs <- function(sheetname = "base-r"){
  sheetname <- gsub(pattern = " ", replacement = "%20", x = sheetname)
  mdFile <- tempfile(pattern = "rmd", fileext = ".Rmd")
  writeLines(paste0('
---
title: "&nbsp;"
output: html_document
---

```{r image, echo = FALSE}
sheetURL <- "https://github.com/rstudio/cheatsheets/raw/main/', sheetname, '.pdf"
tempSheet <- tempfile(pattern = "temp", fileext = ".pdf")
download.file(sheetURL, tempSheet, mode = "wb", quiet = TRUE)
x <- suppressMessages(pdftools::pdf_convert(tempSheet, format = "png", verbose = FALSE, dpi = 300))
knitr::include_graphics(x)
```
'), con = mdFile)

  tempOut <- tempfile(pattern = "cheat", fileext = ".html")
  rmarkdown::render(mdFile, output_file = tempOut, quiet = TRUE)
  try(rstudioapi::viewer(tempOut), silent = TRUE)
}
