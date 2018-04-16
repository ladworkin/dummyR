
#' Storage type
#'
#' List of methods provided in query for loading data
get_storage <- function(){
  return(c("NoSQL", "MySQL", "SPSS", "Excel", "XML","Json"))}

#' NoSQL data
#'
#' Loading data from MongoDB
#'
#' @param path path where data resides
load_NoSQL <- function(path=NA){
  stop("unfinished package\n")
}

#' MySQL
#'
#' Loading data from MySQL
#'
#' @inheritParams load_NoSQL
load_MySQL <- function(path=NA){
  stop("unfinished package\n")
}

#' SPSS
#'
#' Loading data from SPSS
#'
#' @inheritParams load_NoSQL
load_SPSS <- function(path=NA){
  stop("unfinished package\n")
}

#' Excel
#'
#' Loading data from Excel
#'
#' @inheritParams load_NoSQL
load_Excel <- function(path=NA){
  stop("unfinished package\n")
}

#' XML
#'
#' Loading data from XML
#'
#' @inheritParams load_NoSQL
load_XML <- function(path=NA){
  stop("unfinished package\n")
}

#' json
#'
#' Loading data from json
#'
#' @inheritParams load_NoSQL
load_Json <- function(path=NA){
  stop("unfinished package\n")
}

#' Interactive Query
#'
#' Walking user through loading of data from multiple sources
#'
#' @param storage type of data storage user wishes to query
#' @inheritParams load_NoSQL
load_data <- function(storage=NA, path=NA){

  supported_storage <- get_storage()

  if(is.na(storage)){
    storage <- readline(cat(
      "How is your data stored?",
      "Please enter one of the following:",
      paste(supported_storage, collapse=", "),
      sep="\n"))}

  if(is.na(path)){
    path <- readline(cat(
      "Where is your data stored?",
      "Please enter the path to your data:",
      sep="\n"))}

  if(!storage %in% supported_storage){
    stop(cat("storage method: ", storage, " is not currently available\n"))} else
      {calling_storage <- eval(parse(text=paste0("load_", storage)))}

  # parse validity of supplied path here ####

  calling_storage(path)
}

