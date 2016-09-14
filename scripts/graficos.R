source("scripts/input.R")
source("scripts/tc.R")

png("figuras/barplots.png")
par(mfrow = c(2,2))
barplot(sex.met, legend = (rownames(sex.met)), beside = T, main = "Metástase por sexo", col = c("lightblue", "red"))
barplot(hist.met, legend = (rownames(hist.met)), beside = T, main = "Metástase por tipo histológico", col = c("lightblue", "red"))
barplot(obt.met, legend = (rownames(obt.met)), beside = T, main = "Metástase por Óbito", col = c("lightblue", "red"))
barplot(causa.met, legend = (rownames(causa.met)), beside = T, main = "Metástase por Causa do Óbito", col = c("lightblue", "red"))
dev.off()

png("figuras/bp-obitos_hist.png")
barplot(obt.hist, beside = T, legend.text = rownames(obt.hist), main = "Óbitos por tipo histológico", col = c("lightblue", "red"))
dev.off()

rm(met.sex, met.hist, met.obt, met.causa, obt.hist)
source("scripts/cleanup.R")
