##  ---------------------------------------  ##
##              graphics ggplot2             ## 
##            by Alexandre Loures            ##
##   Joao Pessoa Para√≠ba Brasil 22/09/2015   ##
##  ---------------------------------------  ##

library(ggplot2)
library(gridExtra)

## arredondamento dos valores da rate

margens$rate<-round(margens$rate,digits=1)

## nomeando os paises

levels(margens$country)

levels(margens$country)<-c("Argentina","BolÌ≠via","Brasil","Chile","ColÙmbia","Equador","MÈxico","Nova Zel‚ndia","Peru","Paraguai","Uruguai","Venezuela")

##  grafico mostrando valores no eixo (fundo cinza)

margins<-ggplot(data=margens,aes(x=country,y=rate))+geom_bar(stat="identity",fill="grey",position=position_dodge(),colour="black")+xlab("PaÌ≠ses")+ylab("Percentual \nFonte: Base pour l'Analyse du Commerce International (BACI).")+geom_text(aes(label=rate,ymax=rate,hjust=ifelse(sign(rate)>0,1,0)),position=position_dodge(width=1))+coord_flip()

##  grafico sem mostrar valores no eixo (fundo cinza)

margins<-ggplot(data=margens,aes(x=country,y=rate))+geom_bar(stat="identity",fill="grey",position=position_dodge(),colour="black")+xlab("PaÌ≠ses")+ylab("Percentual \nFonte: Base pour l'Analyse du Commerce International (BACI).")+coord_flip()

##  grafico mostrando valores no eixo (fundo branco)

margins<-ggplot(data=margens,aes(x=country,y=rate))+geom_bar(stat="identity",fill="grey",position=position_dodge(),colour="black")+theme_bw()+xlab("PaÌ≠ses")+ylab("Percentual \nFonte: Base pour l'Analyse du Commerce International (BACI).")+geom_text(aes(label=rate,ymax=rate,hjust=ifelse(sign(rate)>0,1,0)),position=position_dodge(width=1))+coord_flip()

##  grafico sem mostrar valores no eixo (fundo branco)

margins<-ggplot(data=margens,aes(x=country,y=rate))+geom_bar(stat="identity",fill="grey",position=position_dodge(),colour="black")+theme_bw()+xlab("PaÌ≠ses")+ylab("Percentual \nFonte: Base pour l'Analyse du Commerce International (BACI).")+coord_flip()