cleanModKilo<-function(array,index){
  n<-nrow(array)
  for(i in 1:n){
    if(is.na(array[i,index])){array[i,index]<-"autres"}
    if(array[i,index]<=5000){
      array[i,index]<-"moinsde5000"
    }
    else if(array[i,index]<=10000){
      array[i,index]<-"moinsde10000"
    }
    else if(array[i,index]<=15000){
      array[i,index]<-"moinsde15000"
    }
    else if(array[i,index]>15000){
      array[i,index]<-"plusde15000"
    }
  }
  return(array)
}