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

by(worms[,4], worms[,"Vegetation"], summary) # this will give you the length of each item, the class and mode.

by(worms[, 4],   worms[, -4], mean) #this will produce a loop  of the numeric varibles for each vegatation type 

# You can also fit models using by: here is worm density as a function of soil pH for each vegetation type:
by(worms, Vegetation, function(x) lm(Worm.density~Soil.pH, data = x))




