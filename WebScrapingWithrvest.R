

install.packages('rvest') #install rvest package
library(rvest) #load rvest package

#assign URL that you want to scrape from to a variable
URL <- 'https://www.huffpost.com/entry/i-have-a-dream-speech-text_n_809993'

speech_text <- read_html(URL) %>% #read_html() reads all content from the webpage
  html_nodes('blockquote') %>% #html_nodes() scrapes the html nodes associated with specific information. Find HTML nodes with SelectorGadget Chrome Extension. 
  html_text() #html_text() converts nodes to text

speech_text 


