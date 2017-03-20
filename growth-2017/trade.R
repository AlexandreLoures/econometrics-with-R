df <- read.dta ("growth_tradeC_for_R_collapse.dta") ## but in fact I used the base of the COMTRADE Erik

### or to load the data directly from the folder

setwd ("C:\\Users\\Inspiron\\Documents\\MEGA\\thesis_project\\essay\\growth_trade\\graphics\\graphics_individual\\trade")

data <- df

data <- subset (data, year > 1986)

ar <- subset (data, ido == "ARG")
ar$trade [ar$trade == 0] <- 1
ar$ltrade <- log (ar$trade)

br <- subset (data, ido == "BRA")
br$trade [br$trade == 0] <- 1
br$ltrade <- log (br$trade)

cn <- subset (data, ido == "CHN")
cn$trade [cn$trade == 0] <- 1
cn$ltrade <- log (cn$trade)

co <- subset (data, ido == "COL")
co$trade [co$trade == 0] <- 1
co$ltrade <- log (co$trade)

ind <- subset (data, ido == "IND")
ind$trade [ind$trade == 0] <- 1
ind$ltrade <- log (ind$trade)

id <- subset (data, ido == "IDN")
id$trade [id$trade == 0] <- 1
id$ltrade <- log (id$trade)

my <- subset (data, ido == "MYS")
my$trade [my$trade == 0] <- 1
my$ltrade <- log (my$trade)

mx <- subset (data, ido == "MEX")
mx$trade [mx$trade == 0] <- 1
mx$ltrade <- log (mx$trade)

pe <- subset (data, ido == "PER")
pe$trade [pe$trade == 0] <- 1
pe$ltrade <- log (pe$trade)

ph <- subset (data, ido == "PHL")
ph$trade [ph$trade == 0] <- 1
ph$ltrade <- log (ph$trade)

za <- subset (data, ido == "ZAF")
za$trade [za$trade == 0] <- 1
za$ltrade <- log (za$trade)

th <- subset (data, ido == "THA")
th$trade [th$trade == 0] <- 1
th$ltrade <- log (th$trade)

tr <- subset (data, ido == "TUR")
tr$trade [tr$trade == 0] <- 1
tr$ltrade <- log (tr$trade)

library (ggplot2)
library (reshape2)
library (gridExtra)

arg <- ggplot (ar, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Argentina", size = 4.5)
brg <- ggplot (br, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Brasil", size = 4.5)
cng <- ggplot (cn, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "China", size = 4.5)
cog <- ggplot (co, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Colômbia", size = 4.5)
ing <- ggplot (ind, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Índia", size = 4.5)
idg <- ggplot (id, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Indonésia", size = 4.5)
myg <- ggplot (my, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Malásia", size = 4.5)
mxg <- ggplot (mx, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "México", size = 4.5)
peg <- ggplot (pe, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Peru", size = 4.5)
phg <- ggplot (ph, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Filipinas", size = 4.5)
zag <- ggplot (za, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "África do Sul", size = 4.5)
thg <- ggplot (th, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Tailândia", size = 4.5)
trg <- ggplot (tr, aes (year, trade, color = ido)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Turquia", size = 4.5)
 
grid.arrange (arg, brg, cng, cog, ing, idg, myg, mxg, peg, phg, zag, thg, trg, ncol = 4, nrow = 4)

### without footnote

g <- arrangeGrob (arg, brg, cng, cog, ing, idg, myg, mxg, peg, phg, zag, thg, trg, ncol = 4, nrow = 4)

### with footnote

g <- arrangeGrob (arg, brg, cng, cog, ing, idg, myg, mxg, peg, phg, zag, thg, trg, ncol = 4, nrow = 4, bottom =
"Fonte: UN Comtrade Database - COMTRADE\nDivisão de Estatística das Nações Unidas")

ggsave ("trade.pdf", g)

