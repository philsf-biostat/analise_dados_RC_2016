source("scripts/input.R", encoding = 'UTF-8')
source("scripts/tc.R", encoding = 'UTF-8')

mybarplot <- function(tab, main) {
  barplot(tab,
          legend.text = (rownames(tab)),
          beside = T,
          col = rainbow(length((rownames(tab))), .7, .7),
          main = main,
          args.legend = list(title = names(dimnames(tab))[1]),
          xlab = paste("p-valor:", format.pval(fisher.test(tab, workspace = 2e+6)$p.value, eps = .001, digits = 2)),
          ylab = "Número de pacientes")
}

png("figuras/barplots-metastase.png", width = 700, height = 700)
par(mfrow = c(2,2))
mybarplot(met.sex, main = "Metástase por Sexo")
mybarplot(met.hist, main = "Metástase por Tipo histológico")
mybarplot(met.obt, main = "Metástase por Óbito")
mybarplot(met.cir, main = "Metástase por Tipo de cirurgia")
dev.off()

png("figuras/bp-obitos_hist.png", width = 700, height = 700)
mybarplot(obt.hist, main = "Óbito por Tipo histológico")
dev.off()

png("figuras/bp-obitos_met.png", 700, 700)
mybarplot(obt.met, main = "Óbito por presença de metástase")
dev.off()

png("figuras/bp-obitos_estad.png", 700, 700)
mybarplot(obt.est, main = "Óbito por Estadiamento")
dev.off()

png("figuras/bp-obitos_cir.png", width = 700, height = 700)
mybarplot(obt.cir, main = "Óbito por Tipo de cirurgia")
dev.off()

png("figuras/barplots-estadiamento.png", width = 700, height = 700)
par(mfrow = c(2,2))
mybarplot(est.sex, main = "Estadiamento por Sexo")
mybarplot(est.hist, main = "Estadiamento por Tipo histológico")
mybarplot(est.obt, main = "Estadiamento por Óbito")
mybarplot(est.cir, main = "Estadiamento por Tipo de cirurgia")
dev.off()

png("figuras/barplots-tipo_tempo.png", width = 700, height = 700)
t <- tip.tmp; barplot(t, legend.text =  (rownames(t)), beside = T, main = "Tempo de Diagnóstico", args.legend = list(title = names(dimnames(t))[1]), xlab = paste("p-valor:", format.pval(fisher.test(t, workspace = 2e+6)$p.value, eps = .001, digits = 2)), col = rainbow(length((rownames(t))), .7, .7), ylab = "Número de pacientes")
rm(t)
dev.off()

rm(met.sex, met.hist, met.obt, met.cir)
rm(obt.sex, obt.hist, obt.met, obt.cir)
rm(est.sex, est.hist, est.obt, est.cir)
rm(tip.tmp)
source("scripts/cleanup.R")
