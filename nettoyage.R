#nettoyage
#cleanEnfant(array,index)
#args: data frame, column index
cleanEnfant<-function(array,index){
  n<-nrow(array)
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

#cleanAccidentFait(array,index)
#args: data frame, column index
cleanAccidentFait<-function(array,index){
  n<-nrow(array)
  array[,index]<-as.character(array[,index])
  for(i in 1:n){
    if(array[i,index]=="1"){
      array[i,index]<-"Oui"
    }
    else if(array[i,index]=="0"){
      array[i,index]<-"Non"
    }
  }
  return(array)
}
