cleanAgeFait<-function(array,index){
  n<-nrow(array)
  for(i in 1:n){
    if(is.na(array[i,index])){
      array[i,index]<-0
    }
    else if(array[i,index] <= 49){
      array[i,index]<-0
    }
    else{
      array[i,index]<-1
    }
  }
  return(array)
}