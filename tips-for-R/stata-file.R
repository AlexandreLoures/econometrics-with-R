##  -----------------------------------------------------------------------------  ##
##  -----------------------------------------------------------------------------  ##
##  ---      manipulating a base extension dta, that is, extension Stata      ---  ##
##  ---                         by Alexandre Loures                           ---  ##
##  ---               Vicosa, Minas Gerais, Brazil 2017/11/05                 ---  ##
##  -----------------------------------------------------------------------------  ##
##  -----------------------------------------------------------------------------  ##


library (foreign)

## reading a file extension Stata

mydata <- read.dta ('data.dta')

## creating a subbase

newdata <- data.frame ('year' = mydata$year, 'ido' = mydata$ido, 'idd' = mydata$idd, 'trade' = mydata$trade)

## changing directory

setwd ('C:\\Users\\Inspiron\\OneDrive\\base')

## saving in extension for Stata

write.dta (newdata, 'newdata.dta', convert.factors = 'string')
