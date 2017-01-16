cleanModKilo<-function(array,index){
  n<-nrow(array)
  for(i in 1:n){
    if(is.na(array[i,index])){array[i,index]<-"autres"}
    else if(array[i,index]<=1500){
      array[i,index]<-"moinsde1500"
    }
    else if(array[i,index]<=2500){
      array[i,index]<-"moinsde2500"
    }
    else if(array[i,index]<=5000){
      array[i,index]<-"moinsde5000"
    }
    else if(array[i,index]<=20000){
      array[i,index]<-"moinsde20000"
    }
    else if(array[i,index]>20000){
      array[i,index]<-"plusde20000"
    }
  }
  return(array)
}