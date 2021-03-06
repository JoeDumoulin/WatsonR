#' WatsonR - Alchemy Language Test
#'
#' Alchemy Language Functions - Light Test
#' @param creds json file containing the alchemy api key to use for this call
#' @return NOTHING - just prints the response (hopefully 200 & API response) on screen
#' @export


watson.alchemy.test <- function(creds) {
  print("Short Test of Alchemy - Hitting Endpoint; Checking Credentials OK and Transactions Consumed ")
  # httr::GET(url=paste("http://gateway-a.watsonplatform.net/calls/info/GetAPIKeyInfo?apikey=",username_password_ALCH,"&outputMode=json",sep=""))
  apikey <- fromJSON(, creds)$apikey
  httr::GET(url=paste("http://gateway-a.watsonplatform.net/calls/info/GetAPIKeyInfo?apikey=",apikey,"&outputMode=json",sep=""))
}


#' WatsonR - Alchemy Language COMBINED Calles
#'
#' Alchemy Language Functions -- Receives text and returns MULTPLE Features like keyword, entity, sentiment, tone
#' @param utterance String to be Analyzed by Alchemy's combined call
#' @param creds json file containing the alchemy api key to use for this call
#' @return JSON formatted like this http://www.alchemyapi.com/api/combined/textc.html
#' @export

watson.alchemy.combined <- function(creds, utterance) {
  print("Alchemy combined call- running multiple Alchemy Language calls")

  alchemy_url <- "http://gateway-a.watsonplatform.net/calls/text/"
  api_feature <- "TextGetCombinedData"
  output_mode <- "json"
  utterance <- URLencode(utterance) #in case we have spaces, we need %20

  apikey <- fromJSON(, creds)$apikey
  query <- paste(alchemy_url,api_feature,"?extract=keyword,entity,taxonomy,concept,doc-sentiment,doc-emotion&apikey=",apikey,"&text=",utterance,"&outputMode=",output_mode, sep="")
  query
  response <- httr::POST(query)
  print(response)
  return(httr::content(response))
}


