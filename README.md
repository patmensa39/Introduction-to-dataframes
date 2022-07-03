# Introduction-to-dataframes
### DATAFRAMES ###

worms<-read.table("worms.txt", header = TRUE)
View(worms) # this help to view the data 
attach(worms) #this helps to make the variables accessible by name within the R session 
names(worms) #this show the list of the variables names 
head(worms) #this show the first 6 observations of the data
tail(worms) #this shows the last 6 observations of the data

worms # to see the entire data 

summary(worms) # summarize all the continous variables 

worms[,"Vegetation"] # gives you the list of the items in the vegetation variable
