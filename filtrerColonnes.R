colNames<-colnames(Base_Equipement)
filterColumns<-grep("Q2+|Q3+|Q6+|Q7+|Q8+|Q9+|Q10+|Q11+|Q12+|Q13+|Q14+|Q15+|Q16+|Q17+|Q19+|Q24+|Q25+|Q29+|Q30+|Q31+|Q32+|Q33+|Q34+|Q35+|Q36+|Q37+|Q38+|Q39+|Q40+|Q41+|Q42+|Q43+|Q44+|Q58+|Q59+|Q60+|Q61+|Q62+|Q63+|Q64+|Q65+|Q66+|Q67+|Q68+|Q69+|Q70+|Q71+|Q72+|Q73+|Q74+|Q75+|Q76+|Q82+|Q84+|Q85+|Q86+|Q87+|Q88+|Q89+|Q96+|Q97+|Q98+|Q99+|Q100+|Q101+|Q102+|Q103+|Q104+|Q105+|Q114+|Q115+|Q117+", colNames, perl = FALSE, value = TRUE)

Base_Equipement_Filtered<-Base_Equipement[filterColumns]
print(Base_Equipement_Filtered)
print("Filtering columns: done.")
