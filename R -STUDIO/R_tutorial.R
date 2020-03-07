employee <- c('John Doe','Peter Gynn','Jolie Hope')
employer<-c('GSK', 'GSK', 'ASTRA')
salary <- c(21000, 23400, 26800)
startdate <- as.Date(c('2010-11-1','2008-3-25','2007-3-14'))

dataframe_emplo <- data.frame(employee,employer, salary, startdate, stringsAsFactors = FALSE)

View(dataframe_emplo)


library(dplyr)


dataframe_emplo_counted<-dataframe_emplo%>%
  group_by(employer)%>%
  summarise(n=n())#


dataframe_emplo_counted$n<-as.numeric(dataframe_emplo_counted$n)


library(ggplot2)

ggplot(dataframe_emplo_counted, aes(x= dataframe_emplo_counted$employer,
                                    y=dataframe_emplo_counted$n))+  
  geom_bar(stat="identity")

