complete<-function(directory,id){
  nobs<-numeric()
  for(i in id){
    file<-read.csv(paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep=""))
    nobs<-c(nobs,sum(complete.cases(file)))
  }
  return(data.frame(id,nobs))
}
