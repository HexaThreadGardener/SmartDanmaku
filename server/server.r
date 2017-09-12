require(slam)
require(wordcloud)
server <- function(){
  while(TRUE){
    writeLines("Listening...")
    con <- socketConnection(host="localhost", port = 6011, blocking=TRUE,
                            server=TRUE, open="r+")
    data <- readLines(con, 1)
    print(data)
    response <- toupper(data)
    writeLines(response, con) 
    close(con)
  }
}

jpeg("photo.jpg")
names=c("Peter Lu","Archer","YQY")
fre=c(5,4,3)
wordcloud(names,freq = fre,colors = rainbow(10),random.color = T)
dev.off()
