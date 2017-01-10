#nettoyage
#cleanEnfant(n,array,index)
#args: row numbers, data frame, column index
cleanEnfant<-function(n,array,index){
  for(i in 1:n){
    thisText<-array[i,index]
    if(thisText=="3 enfants et plus"){
      array[i,index]<-"4"
    }
    else{
      splitArray<-unlist(strsplit(thisText, "[ ]"))
      array[i,index]<-splitArray[1]
    }
  }
  array[,index]<-as.numeric(array[,index])
  return(array)
}
