#' Calculate oriental zodiac from year or date inclued year data
#'
#' @param year A numeric of year or date object format "year/month/day" or objects of class "Date".
#' @param format Character data string. If you want to use a date object "m-d" or "Y/m/d",
#'               change format.
#'
#' @examples
#' oRiental_zodiac(2020)
#' oRiental_zodiac("2020/12/25")
#'
#' @export

oRiental_zodiac <- function(year, format = "%Y/%m/%d"){
  stopifnot(length(year) == 1)
  # Extract number of month and date.
  if(!is.numeric(year)){
    y <- lubridate::year(as.Date(year, format))
  }else{
    y <- year
  }

  # In case of uninterpretable data, return NA and exit.
  if(is.na(y)){
    return(NA)
  }

  # Calculate the oriental zodiac with too much y divided by 12.
  y <- y %% 12
  if(y == 0){
    oz <- "Monkey"
  }else if(y == 1){
    oz <- "Rooster"
  }else if(y == 2){
    oz <- "Dog"
  }else if(y == 3){
    oz <- "pig"
  }else if(y == 4){
    oz <- "Rat"
  }else if(y == 5){
    oz <- "Ox"
  }else if(y == 6){
    oz <- "Tiger"
  }else if(y == 7){
    oz <- "Rabbit"
  }else if(y == 8){
    oz <- "Dragon"
  }else if(y == 9){
    oz <- "Snake"
  }else if(y == 10){
    oz <- "Horse"
  }else if(y == 11){
    oz <- "Goat"
  }else{
    # Return NA if y divided by 12 and not too much is not an integer.
    return(NA)
  }

  # retrun answer.
  oz
}

#' Calculate oriental zodiac in japanese from year or date inclued year data
#'
#' @param year A numeric of year or date object format "year/month/day" or object of class "Date".
#' @param format Character data string. If you want to use a date object "m-d" or "Y/m/d",
#'               change format.
#'
#' @examples
#' oRiental_zodiac.ja(2020)
#' oRiental_zodiac.ja("2020/12/25")
#'
#' @export

oRiental_zodiac.ja <- function(year, format = "%Y/%m/%d"){
  stopifnot(length(year) == 1)
  # Extract number of month and date.
  if(!is.numeric(year)){
    y <- lubridate::year(as.Date(year, format))
  }else{
    y <- year
  }

  # In case of uninterpretable data, return NA and exit.
  if(is.na(y)){
    return(NA)
  }

  # Calculate the oriental zodiac with too much y divided by 12.
  y <- y %% 12
  if(y == 0){
    oz <- "\u7533"
  }else if(y == 1){
    oz <- "\u9149"
  }else if(y == 2){
    oz <- "\u620c"
  }else if(y == 3){
    oz <- "\u4ea5"
  }else if(y == 4){
    oz <- "\u5b50"
  }else if(y == 5){
    oz <- "\u4e11"
  }else if(y == 6){
    oz <- "\u5bc5"
  }else if(y == 7){
    oz <- "\u536f"
  }else if(y == 8){
    oz <- "\u8fb0"
  }else if(y == 9){
    oz <- "\u5df3"
  }else if(y == 10){
    oz <- "\u5348"
  }else if(y == 11){
    oz <- "\u672a"
  }else{
    # Return NA if y divided by 12 and not too much is not an integer.
    return(NA)
  }

  # retrun answer.
  oz
}
