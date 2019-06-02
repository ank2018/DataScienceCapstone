library(tm)

brd <- readRDS(file = "bigram.RData")
trd <- readRDS(file = "trigram.RData")
qrd <- readRDS(file = "quadgram.RData")

nextWordPredictor <- function(inputTxt) {
  
  if(nchar(inputTxt) > 0) {
    #clean input
    inputTxt <- tolower(inputTxt)
    inputTxt <- removeNumbers(inputTxt)
    inputTxt <- removePunctuation(inputTxt)
    inputTxt <- stripWhitespace(inputTxt)
    
    #split into words
    inputList <- unlist(strsplit(inputTxt, " "))
    
    print(inputList)
    print("test1")
    
    wcnt <- length(inputList)
    
    print(wcnt)
    
    runBigram <- function(words){
      brd[brd$word1 == words,]$word2
    }
    
    runTrigram <- function(words){
      trd[trd$word1 == words[1] &  trd$word2 == words[2],]$word3
    }
    
    runFourgram <- function(words) {
      qrd[qrd$word1 == words[1] &
            qrd$word2 == words[2] &
            qrd$word3 == words[3],]$word4
    }
    
    if(wcnt == 1) {
      print("running bigram")
      predList <- runBigram(inputList[1])
    }else if (wcnt == 2) {
      print("running trigram")
      word1 <- inputList[1]
      word2 <- inputList[2]
      predList <- runTrigram(c(word1, word2))
      
      if(length(predList) == 0){
        print("Trigram failed running bigram")
        predList <- runBigram(word2)
      }
    }else {
      print("running fourgram")
      word1 <- inputList[wcnt-2]
      word2 <- inputList[wcnt-1]
      word3 <- inputList[wcnt]
      predList <- runFourgram(c(word1, word2, word3))
      
      if(length(predList) == 0){
        print("fourgram failed running trigram")
        predList <- runTrigram(c(word2,word3))
      }
      
      if(length(predList) == 0){
        print("trigram failed running bigram")
        predList <- runBigram(word3)
      }
    }
    
    #Return top n predictors
    n <- 4
    tp <- length(predList)
    
    if( tp >= n){
      predList <- predList[1:n]
    }
    
    as.character(predList)
  }else{
    ""
  }
}
