####################################################################
#' Get API (JSON) and Transform into data.frame
#' 
#' This function lets the user bring API data as JSON format and transform it 
#' into data.frame. Designed initially for Hubspot but may work on other API
#' 
#' @family Tools
#' @family Connections
#' @family API
#' @param url Character. API's URL
#' @param status Boolean. Display status message?
#' @export
bring_api <- function(url, status = TRUE) {
  
  get <- GET(url = url)
  if (status) message(paste0("Status: ", ifelse(get$status_code == 200, "OK", "ERROR"))) 
  char <- rawToChar(get$content)
  json <- fromJSON(char)
  
  if (length(json[[1]]) > 0) {
    import <- data.frame(json)
    import <- flatten(import)
    import <- data.frame(list.cbind(lapply(import, unlist(as.character))))
    import[import == "list()"] <- NA
    import[import == "integer(0)"] <- 0
    colnames(import) <- gsub("\\.", "_", colnames(import))
    import <- suppressMessages(type.convert(import))
    return(import)
  } else invisible(return())
}
