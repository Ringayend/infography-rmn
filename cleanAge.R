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

cleanCSPFait<-function(array,index){
  n<-nrow(array)
  for(i in 1:n){
    if(array[i,index] ==  "Etudiants" | array[i,index] ==  "En recherche d'emploi"){
      array[i,index]<-"sans emplois"
    }
    else if(array[i,index] ==  "Employés"){
      array[i,index]<-"employes"
    }
    else if(array[i,index] ==  "Cadres"){
      array[i,index]<-"cadres"
    }
    else if(array[i,index] ==  "Ouvriers"){
      array[i,index]<-"ouvriers"
    }
    else if(array[i,index] ==  "Retraités"){
      array[i,index]<-"retraites"
    }
    else if(array[i,index] ==  "Chefs d'entrepirses de 10 salariés de plus"){
      array[i,index]<-"patrons"
    }
    else{
      array[i,index]<-"autres"
    }
  }
  return(array)
}