##  ---------------------------------------------------------------------------------------------  ##
##  ---------------------------------------------------------------------------------------------  ##
##  ---  second article of the thesis - extensive margin of international trade for Mercosur  ---  ##
##  ---                      by Erik Figueiredo and Alexandre Loures                          ---  ##
##  ---                      Joao Pessoa, Paraiba, Brazil 2015/09/23                          ---  ##
##  ---------------------------------------------------------------------------------------------  ##
##  ---------------------------------------------------------------------------------------------  ##

## article available in: https://www.researchgate.net/publication/305485838

##  -----------------------------  ##
##  downloading package and basis  ##
##  -----------------------------  ##

library (foreign)

mydata <- read.dta (choose.files())

##  ----------------------  ##
##  creating variable year  ##
##  ----------------------  ##

y <- table (mydata$year)

ye <- as.data.frame (y)

year <- as.character (ye$Var1)

##  ---------------------  ##
##  creating variable ido  ##
##  ---------------------  ##

i <- table (mydata$ido)

id <- as.data.frame (i)

ido <- as.character (id$Var1)

##  ---------------------  ##
##  creating variable idd  ##
##  ---------------------  ##

i_d <- table (mydata$idd)

id_d <- as.data.frame (i_d)

idd <- as.character (id_d$Var1)

##  ---------------------  ##
##  creating variable HS4  ##
##  ---------------------  ##

H <- table (mydata$HS4)

HS <- as.data.frame (H)

HS4 <- as.character (HS$Var1)

##  -------------------  ##
##  expanding the basis  ##
##  -------------------  ##

expand <- expand.grid (year, ido, idd, HS4)

colnames (expand)[1:4] <- c('year', 'ido', 'idd', 'HS4')

##  ------------------------------------------------------------------------  ##
##  dropping equals observations (when the levels of the variable are equal)  ##
##  ------------------------------------------------------------------------  ##

expand <- expand [expand[,2] != expand[,3],]

##  ----------------------------------------------------------------------------  ##
##  dropping equals observations (when the levels of the variable are different)  ##
##  ----------------------------------------------------------------------------  ##

data <- expand
data$ido <- as.character (data$ido)
data$idd <- as.character (data$idd)

df <- subset (data, ido != idd)

##  -----------  ##
##  saving base  ##
##  -----------  ##

setwd ('C:\\Users\\Inspiron\\OneDrive\\quantitative_methods_applied\\thesis_project\\essay\\mercosur\\base')

write.dta (expand, 'expand.dta', convert.factors = 'string')

write.dta (df, 'df.dta', convert.factors = 'string')
