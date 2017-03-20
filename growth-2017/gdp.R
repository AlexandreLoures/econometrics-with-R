setwd ("C:\\Users\\Inspiron\\Documents\\MEGA\\thesis_project\\essay\\growth_trade\\graphics\\graphics_individual\\gdp")
 
load ("mydata.RData")

ar <- subset (mydata, iso2c == "AR")
br <- subset (mydata, iso2c == "BR")
cn <- subset (mydata, iso2c == "CN")
co <- subset (mydata, iso2c == "CO")
ind <- subset (mydata, iso2c == "IN")
id <- subset (mydata, iso2c == "ID")
my <- subset (mydata, iso2c == "MY")
mx <- subset (mydata, iso2c == "MX")
pe <- subset (mydata, iso2c == "PE")
ph <- subset (mydata, iso2c == "PH")
za <- subset (mydata, iso2c == "ZA")
th <- subset (mydata, iso2c == "TH")
tr <- subset (mydata, iso2c == "TR")
 
library (ggplot2)
library (reshape2) 
library (gridExtra)

arg <- ggplot (ar, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Argentina", size = 4.5)
brg <- ggplot (br, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Brasil", size = 4.5)
cng <- ggplot (cn, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "China", size = 4.5)
cog <- ggplot (co, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Colômbia", size = 4.5)
ing <- ggplot (ind, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Índia", size = 4.5)
idg <- ggplot (id, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Indonésia", size = 4.5)
myg <- ggplot (my, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Malásia", size = 4.5)
mxg <- ggplot (mx, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "México", size = 4.5)
peg <- ggplot (pe, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Peru", size = 4.5)
phg <- ggplot (ph, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Filipinas", size = 4.5)
zag <- ggplot (za, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.2, y = -Inf, vjust = -2, label = "África do Sul", size = 4.5)
thg <- ggplot (th, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Tailândia", size = 4.5)
trg <- ggplot (tr, aes (year, NY.GDP.PCAP.KD, color = iso2c)) + geom_line (size = .8) + theme_bw () + scale_colour_grey () +
theme (legend.position = "none") + xlab ("") + ylab ("") + annotate ("text", x = Inf, hjust = 1.5, y = -Inf, vjust = -2, label = "Turquia", size = 4.5)

grid.arrange (arg, brg, cng, cog, ing, idg, myg, mxg, peg, phg, zag, thg, trg, ncol = 4, nrow = 4)

### without footnote

g <- arrangeGrob (arg, brg, cng, cog, ing, idg, myg, mxg, peg, phg, zag, thg, trg, ncol = 4, nrow = 4)

### with footnote

g <- arrangeGrob (arg, brg, cng, cog, ing, idg, myg, mxg, peg, phg, zag, thg, trg, ncol = 4, nrow = 4, bottom =
"Fonte: Indicadores de Desenvolvimento Mundial\nBanco Mundial.")

ggsave ("gdp.pdf", g)

