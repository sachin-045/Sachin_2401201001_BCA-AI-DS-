#Stock Price Analysis using R 
install.packages("quantmod") 
install.packages("TTR") 
library(quantmod) 
library(TTR) 
getSymbols("AAPL",src="yahoo",from="2023-01
01",to=Sys.Date()) 
head(AAPL) 
AAPL$SMA50=SMA(Cl(AAPL),n=50) 
AAPL$SMA200=SMA(Cl(AAPL),n=200) 
chartSeries(AAPL,  
name="Apple Stock Price with Moving Averages", 
theme=chartTheme("white")) 
addSMA(n=50,col="blue") 
addSMA(n=200,col="red") 
