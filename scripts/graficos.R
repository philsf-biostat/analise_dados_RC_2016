source("scripts/input.R")
source("scripts/tc.R")

png("figuras/barplots.png", width = 700, height = 700)
par(mfrow = c(2,2))
barplot(met.sex, legend.text = (rownames(met.sex)), beside = T, main = "Metástase por sexo", col = c("lightblue", "red"), xlab = "Sexo", args.legend = list(title = "Metástase"))
barplot(met.hist, legend.text =  (rownames(met.hist)), beside = T, main = "Metástase por tipo histológico", col = c("lightblue", "red"), xlab = "Tipo histológico", args.legend = list(title = "Metástase"))
barplot(met.obt, legend.text =  (rownames(met.obt)), beside = T, main = "Metástase por Óbito", col = c("lightblue", "red"), xlab = "Óbito", args.legend = list(title = "Metástase"))
barplot(met.cir, legend.text =  (rownames(met.cir)), beside = T, main = "Metástase por tipo de cirurgia", col = c("lightblue", "red"), xlab = "Tipo de cirurgia", args.legend = list(title = "Metástase"))
dev.off()

png("figuras/bp-obitos_hist.png", width = 700, height = 700)
barplot(obt.hist, beside = T, legend.text = rownames(obt.hist), main = "Óbitos por tipo histológico", col = c("lightblue", "red"), xlab = "Tipo histológico", args.legend = list(title = "Óbito"))
dev.off()

png("figuras/bp-obitos_cir.png", width = 700, height = 700)
barplot(obt.cir, beside = T, legend.text = rownames(obt.cir), main = "Óbitos por tipo de cirurgia", col = c("lightblue", "red"), xlab = "Tipo de cirurgia", args.legend = list(title = "Óbito"))
dev.off()

rm(met.sex, met.hist, met.obt, met.cir)
rm(obt.sex, obt.hist, obt.met, obt.cir)
source("scripts/cleanup.R")
