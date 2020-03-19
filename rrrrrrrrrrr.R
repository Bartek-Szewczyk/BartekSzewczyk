dane <- c(zima=15, wiosna=26, lato=26, jesieñ=33)
dane
##   zima wiosna   lato jesieñ 
##     15     26     26     33 
barplot(dane, main = "Ulubiona pora roku", ylab = "Odsetek", 
col = c("lightblue", "lightgreen", "orange", "red"), border = c("lightblue", 
"lightgreen", "orange", "brown"), ylim = c(0, 35), names.arg = c("Zima", "Wiosna", "Lato", "Jesieñ"))


  



