##  ---------------------------------------------------------------------------------------------  ##
##  ---------------------------------------------------------------------------------------------  ##
##  ---  second article of the thesis - extensive margin of international trade for Mercosur  ---  ##
##  ---                      by Erik Figueiredo and Alexandre Loures                          ---  ##
##  ---                      Joao Pessoa, Paraiba, Brazil 2015/09/23                          ---  ##
##  ---------------------------------------------------------------------------------------------  ##
##  ---------------------------------------------------------------------------------------------  ##

## article available in: https://www.researchgate.net/publication/305485838


##  -------------------  ##
##  graph 3 on page 310  ##
##  -------------------  ##

library(reshape2)
library(ggplot2)

##  ano base 1992

datalong<-melt(mydata,id="year")   ## considerei como ano base 1992

ggplot(datalong,aes(year,value,colour=variable))+geom_line(size=.8)+xlab("Ano \nFonte: Base pour l'Analyse du Commerce International (BACI).")+ylab("Percentual (base 1992)")+theme(legend.title=element_blank())+geom_vline(xintercept=1992,colour="orange",linetype="longdash")+geom_text(data=NULL,x=1993,y=1.025,label="1992",colour="red")+theme(legend.background=element_rect(fill="gray90",size=.5,linetype="dotted"))+geom_point(aes(shape=variable),size=4)+scale_shape_manual(values=c(15,16,17,8))

## ano base 1991

baselong<-melt(data,id="year")   ## considerei como ano base 1991

ggplot(baselong,aes(year,value,colour=variable))+geom_line(size=.8)+xlab("Ano \nFonte: Base pour l'Analyse du Commerce International (BACI).")+ylab("Percentual (base 1991)")+theme(legend.title=element_blank())+geom_vline(xintercept=1991,colour="orange",linetype="longdash")+geom_text(data=NULL,x=1992,y=1.025,label="1991",colour="red")+theme(legend.background=element_rect(fill="gray90",size=.5,linetype="dotted"))+geom_point(aes(shape=variable),size=4)+scale_shape_manual(values=c(15,16,17,8))

## ano base 1991 e escala de cinza

baselong<-melt(sur,id="year")   ## considerei como ano base 1991

## fundo cinza ##

ggplot(baselong,aes(year,value,colour=variable))+geom_line(size=.8)+xlab("Ano \nFonte: Base pour l'Analyse du Commerce International (BACI).")+ylab("Percentual (base 1991)")+theme(legend.title=element_blank(),legend.position = c(.9,.885),legend.text = element_text(size = 15))+geom_vline(xintercept=1991,size=1)+geom_text(data=NULL,x=1992,y=1.025,label="1991",colour="black")+theme(legend.background=element_rect(fill="gray90",size=.5,linetype="dotted"))+geom_point(aes(shape=variable),size=4)+scale_shape_manual(values=c(8,16,17,15))+scale_colour_grey()

## fundo branco ##

ggplot(baselong,aes(year,value,colour=variable))+geom_line(size=.8)+xlab("Ano \nFonte: Base pour l'Analyse du Commerce International (BACI).")+ylab("Percentual (base 1991)")+theme_bw()+theme(legend.title=element_blank(),legend.position = c(.9,.885),legend.text = element_text(size = 15))+geom_vline(xintercept=1991,size=1)+geom_text(data=NULL,x=1992,y=1.025,label="1991",colour="black")+theme(legend.background=element_rect(size=.5,linetype="dotted"))+geom_point(aes(shape=variable),size=4)+scale_shape_manual(values=c(8,16,17,15))+scale_colour_grey()
