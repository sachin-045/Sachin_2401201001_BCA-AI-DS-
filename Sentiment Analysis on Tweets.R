#Sentiment Analysis on Tweets using R  
install.packages("dplyr")  
install.packages("tidytext")  
install.packages("ggplot2")  
library(dplyr)  
library(tidytext)  
library(ggplot2)  
tweets=data.frame( status_id=1:5, text=c( "I love to code!", "I am feeling so 
frustrating", "I hate cats", "My life is so easy", "Sachin is a good name" ) ) 
tweet_words=tweets%>%unnest_tokens(word,text) data("stop_words") 
clean_words=tweet_words%>%anti_join(stop_words) 
sentiment=clean_words%>%inner_join(get_sentiments("bing")) 
print(sentiment) 
sentiment%>% count(sentiment)%>% 
ggplot(aes(x=sentiment,y=n,fill=sentiment))+ geom_col()+ 
labs(title="Sentiment Analysis by Sachin", x="Sentiment", y="Word Count")+ 
theme_minimal() 
