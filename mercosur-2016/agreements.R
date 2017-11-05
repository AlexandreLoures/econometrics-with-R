##  ---------------------------------------------------------------------------------------------  ##
##  ---------------------------------------------------------------------------------------------  ##
##  ---  second article of the thesis - extensive margin of international trade for Mercosur  ---  ##
##  ---                      by Erik Figueiredo and Alexandre Loures                          ---  ##
##  ---                      Joao Pessoa, Paraiba, Brazil 2015/09/23                          ---  ##
##  ---------------------------------------------------------------------------------------------  ##
##  ---------------------------------------------------------------------------------------------  ##

## article available in: https://www.researchgate.net/publication/305485838


##  -------------------  ##
##  graph 1 on page 306  ##
##  -------------------  ##

## barplot

barplot(mydata$acumulated,mydata$year,name=mydata$year,col="blue",ylim=c(0,300),axis.lty=1,offset=4,xlab="Ano",ylab="Número de acordos em vigor",main="Acordos em vigor por ano")

## plot

plot(mydata$year,mydata$acumulated,type="l",xlab="Ano",ylab="Número de acordos em vigor",lwd=2,col="blue",sub="Fonte: Organização Mundial do Comércio (OMC).")

abline(v=1992,col="orange",lty=2,lwd=2)

legend(1990,250,"1993",lwd=2)

##  --------------------------  ##
##  graph in line with ggplot2  ##
##  --------------------------  ##

library(reshape2)
library(ggplot2)

p<-ggplot(data=mydata,aes(x=year,y=acumulated))+geom_line(size=.8,colour="blue")+geom_vline(xintercept=1992,colour="orange",linetype="longdash")+xlab("Ano \nFonte: Organização Mundial do Comércio (OMC)")+ylab("Número de acordos em vigor")+geom_text(data=NULL,x=1996,y=30,label="1992",colour="red")


## ggplot2

ggplot(data=mydata,aes(x=year,y=force,fill=force))+geom_bar(stat="identity")+xlab("Ano \nFonte: Organização Mundial do Comércio (OMC)")+ylab("Acordos em vigor")


## area

ggplot(data=mydata,aes(x=year,y=acumulated))+geom_area(alpha=.5)+geom_vline(xintercept=1992,size=1)+theme_bw()+xlab("Ano \nFonte: Organização Mundial do Comércio (OMC)")+ylab("Número de acordos em vigor")+geom_text(data=NULL,x=1990,y=38,label="1992",angle=90,size=5)


## sem area

ggplot(data=mydata,aes(x=year,y=acumulated))+geom_area(alpha=.5)+geom_line(size=.8)+geom_vline(xintercept=1992,size=1)+theme_bw()+xlab("Ano \nFonte: Organização Mundial do Comércio (OMC)")+ylab("Número de acordos em vigor")+geom_text(data=NULL,x=1990,y=38,label="1992",angle=90,size=5)
