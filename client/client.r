client <- function(){
  while(TRUE){
    con <- socketConnection(host="127.0.0.1", port = 6011, blocking=TRUE,
                            server=FALSE, open="r+")
    sendme="peter lu"
    write_resp <- writeLines(sendme, con)
    server_resp <- readLines(con, 1)
    print(paste("Your upper cased text:  ", server_resp))
    Sys.sleep(2)
    close(con)
  }
}
client()