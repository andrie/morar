\name{read.morar}
\alias{read.morar}
\title{Reads a csv file in Morar Consulting's format...}
\usage{read.morar(file)}
\description{Reads a csv file in Morar Consulting's format}
\arguments{\item{file}{the name of the data file}}
\examples{path <- file.path("f:","my dropbox","pentalibra","clients","Morar","Nandos","R")
brs_data <- file.path(path, "data", "2011-01-27 Restaurants 2010 - Winter - Numbers.csv")
h <- read.morar(brs_data)
str(h)}
