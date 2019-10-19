\name{cs}
\alias{cs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to display Cheat Sheets in the RStudio Viewer pane
}
\description{
This function downloads cheat sheets from the RStudio GitHub (https://github.com/rstudio/cheatsheets) and displays them in the Viewer pane.
}
\usage{
cs(sheetname = "base-r")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sheetname}{
A string of length 1. See Details section for a list of sheet names. Also see the \code{\link{csOptions}} function to print a list of all cheatsheet options.
}
}
\details{
sheetname options are taken directly from the Rstudio GitHub (https://github.com/rstudio/cheatsheets) and include the following:

"Machine Learning Modelling in R", "base-r", "caret", "cartography",
"data-import", "data-transformation", "data-visualization-2.1",
"datatable", "declaredesign", "distr6", "estimatr", "eurostat",
"factors", "gganimate", "golem", "gwasrapidd", "h2o", "how-big-is-your-graph",
"keras", "leaflet", "lubridate", "mlr", "mosaic", "nardl", "package-development",
"parallel_computation", "purrr", "quanteda",
"randomizr", "regex", "reticulate", "rmarkdown-2.0",
"rphylopic", "rstudio-ide", "sf", "shiny", "sjmisc", "sparklyr",
"strings", "survminer", "syntax", "teachR", "tidyeval", "tsbox",
"vtree", "xplain"

Note that if the original cheatsheets do not have some or all fonts embedded, users will see "Fontconfig error: Cannot load default config file" and the cheatsheet will fail to display properly within RStudio.

}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Brandon Gavett \email{brandon.gavett@uwa.edu.au}
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{csOptions}}
}
\examples{
cs("data-visualization-2.1")
}
