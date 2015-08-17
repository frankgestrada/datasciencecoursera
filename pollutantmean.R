pollutantmean<-function(directory,pollutant,id){
pollutantdata<-numeric()
for(i in id){
pollutantfile<-read.csv(paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep=""))
pollutantdata<-c(pollutantdata,pollutantfile[[pollutant]])
}
return(mean(pollutantdata,na.rm=TRUE))
}
