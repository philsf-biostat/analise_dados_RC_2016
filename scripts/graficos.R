source("scripts/input.R")
source("scripts/tc.R")

png("figuras/barplots.png")
par(mfrow = c(2,2))
barplot(met.sex, legend = (rownames(met.sex)), beside = T, main = "Metástase por sexo", col = c("lightblue", "red"))
barplot(met.hist, legend = (rownames(met.hist)), beside = T, main = "Metástase por tipo histológico", col = c("lightblue", "red"))
barplot(met.obt, legend = (rownames(met.obt)), beside = T, main = "Metástase por Óbito", col = c("lightblue", "red"))
barplot(met.cir, legend = (rownames(met.cir)), beside = T, main = "Metástase por tipo de cirurgia", col = c("lightblue", "red"))
dev.off()

png("figuras/bp-obitos_hist.png")
barplot(obt.hist, beside = T, legend.text = rownames(obt.hist), main = "Óbitos por tipo histológico", col = c("lightblue", "red"))
dev.off()

png("figuras/bp-obitos_cir.png")
barplot(obt.cir, beside = T, legend.text = rownames(obt.cir), main = "Óbitos por tipo de cirurgia", col = c("lightblue", "red"))
dev.off()

rm(met.sex, met.hist, met.obt, met.cir)
rm(obt.sex, obt.hist, obt.met, obt.cir)
source("scripts/cleanup.R")
