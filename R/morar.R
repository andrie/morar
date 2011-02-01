# TODO: Add comment
# 
# Author: Andrie
###############################################################################



#' Reads a csv file in Morar Consulting's format
#' 
#' @param file the name of the data file
#' @export
#' @examples
#' path <- file.path("f:","my dropbox","pentalibra","clients","Morar","Nandos","R")
#' brs_data <- file.path(path, "data", "2011-01-27 Restaurants 2010 - Winter - Numbers.csv")
#' h <- read.morar(brs_data)
#' str(h)
read.morar <- function(file){
	# read headers
	h <- read.csv(file=file, nrow=4, header=FALSE, stringsAsFactors=FALSE)

	h1 <- as.character(h[1, ])
	h2 <- as.character(h[2, ])
	h2[which(h2==h1)] <- ""
	h5 <- paste(h1, h2, sep="_")

	
	# read detail
	c <- read.csv(file=file, skip=4, header=FALSE, stringsAsFactors=FALSE)

	# append metadata as attributes	
	attr(c, "R1") <- as.character(h[1, ])
	attr(c, "R2") <- as.character(h[2, ])
	attr(c, "R3") <- as.character(h[3, ])
	attr(c, "R4") <- as.character(h[4, ])
	attr(c, "R5") <- as.character(h5)
	
	c
	
}



#path <- file.path("f:","my dropbox","pentalibra","clients","Morar","Nandos","R")
#brs_data <- file.path(path, "data", "2011-01-27 Restaurants 2010 - Winter - Numbers.csv")
#h <- read.morar(brs_data)
#str(h)

