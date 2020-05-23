#' Calculate the star sign from birthday
#'
#' @param birthday A date object in "m/y" format of Birthday whose want to calculate the
#'                 star sign.
#' @param format Character date string. If you want to use a date object "m-d" or "Y/m/d",
#'               change format.
#'
#' @examples
#' staRsign("12/25")
#' staRsign("2020/12/25", format = "%Y/%m/%d")
#'
#' @importFrom lubridate month
#' @importFrom lubridate day
#'
#' @export

staRsign <- function(birthday ,
                     format = "%m/%d"){
  # Extract number of month and date.
  m <- lubridate::month(as.Date(birthday, format))
  d <- lubridate::day(as.Date(birthday, format))

  # In case of uninterpretable data, return NA and exit.
  if(is.na(m) || is.na(d)){
    return(print(NA))
  }

  # Check the condition and return the birthday sign.
  if((m == 3 && d >= 21) || (m == 4 && d <= 19)){
    print("Aries")
  }else if((m == 4 && d >= 20) || (m == 5 && d <= 20)){
    print("Taurus")
  }else if((m == 5 && d >= 21) || (m == 6 && d <= 21)){
    print("Gemini")
  }else if((m == 6 && d >= 21) || (m == 7 && d <= 22)){
    print("Cancer")
  }else if((m == 7 && d >= 23) || (m == 8 && d <= 22)){
    print("Leo")
  }else if((m == 8 && d >= 23) || (m == 9 && d <= 22)){
    print("Virgo")
  }else if((m == 9 && d >= 23) || (m == 10 && d <= 23)){
    print("Libra")
  }else if((m == 10 && d >= 24) || (m == 11 && d <= 22)){
    print("Scorpio")
  }else if((m == 11 && d >= 23) || (m == 12 && d <= 21)){
    print("Sagittarius")
  }else if((m == 12 && d >= 22) || (m == 1 && d <= 19)){
    print("Capricorn")
  }else if((m == 1 && d >= 20) || (m == 2 && d <= 18)){
    print("Aquarius")
  }else if((m == 2 && d >= 19) || (m == 3 && d <= 20)){
    print("Pisces")
  }
}

#' Calculate the star sign in japanese from birthday
#'
#' @param birthday A date object in "m/y" format of Birthday whose want to calculate the
#'                 star sign.
#' @param format Character date string. If you want to use a date object "m-d" or "Y/m/d",
#'               you can change format.
#'
#' @examples
#' staRsign.ja("12/25")
#' staRsign.ja("2020/12/25", format = "%Y/%m/%d")
#'
#' @importFrom lubridate month
#' @importFrom lubridate day
#'
#' @export

staRsign.ja <- function(birthday ,
                        format = "%m/%d"){
  # Extract number of month and date.
  m <- lubridate::month(as.Date(birthday, format))
  d <- lubridate::day(as.Date(birthday, format))

  # In case of uninterpretable data, return NA and exit.
  if(is.na(m) || is.na(d)){
    return(print(NA))
  }

  # Check the condition and return the birthday sign in Japanese.
  if((m == 3 && d >= 21) || (m == 4 && d <= 19)){
    print("\u304a\u3072\u3064\u3058\u5ea7")
  }else if((m == 4 && d >= 20) || (m == 5 && d <= 20)){
    print("\u304a\u3046\u3057\u5ea7")
  }else if((m == 5 && d >= 21) || (m == 6 && d <= 21)){
    print("\u3075\u305f\u3054\u5ea7")
  }else if((m == 6 && d >= 21) || (m == 7 && d <= 22)){
    print("\u304b\u306b\u5ea7")
  }else if((m == 7 && d >= 23) || (m == 8 && d <= 22)){
    print("\u3057\u3057\u5ea7")
  }else if((m == 8 && d >= 23) || (m == 9 && d <= 22)){
    print("\u304a\u3068\u3081\u5ea7")
  }else if((m == 9 && d >= 23) || (m == 10 && d <= 23)){
    print("\u3066\u3093\u3073\u3093\u5ea7")
  }else if((m == 10 && d >= 24) || (m == 11 && d <= 22)){
    print("\u3055\u305d\u308a\u5ea7")
  }else if((m == 11 && d >= 23) || (m == 12 && d <= 21)){
    print("\u3044\u3066\u5ea7")
  }else if((m == 12 && d >= 22) || (m == 1 && d <= 19)){
    print("\u3084\u304e\u5ea7")
  }else if((m == 1 && d >= 20) || (m == 2 && d <= 18)){
    print("\u307f\u305a\u304c\u3081\u5ea7")
  }else if((m == 2 && d >= 19) || (m == 3 && d <= 20)){
    print("\u3046\u304a\u5ea7")
  }
}
