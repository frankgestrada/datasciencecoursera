correlation<-function(directory,id){
corr=numeric()
for(i in id){
datafile<-read.csv(paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep=""))
naremoved<-datafile[complete.cases(datafile),]
corr<-c(corr,cor(naremoved["sulfate"],naremoved["nitrate"]))
}
return(corr)
}
