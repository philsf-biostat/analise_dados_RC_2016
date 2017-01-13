source("scripts/input.R", encoding = 'UTF-8')
source("scripts/tc.R", encoding = 'UTF-8')

mybarplot <- function(tab, desfecho, preditor) {
  main <- paste(desfecho, "por", preditor)
  barplot(tab,
          legend.text = (rownames(tab)),
          beside = T,
          col = rainbow(length((rownames(tab))), .7, .7),
          main = main,
          ylim = c(0, 1.2*max(tab)),
          args.legend = list(title = desfecho),
          xlab = paste("p-valor:", format.pval(fisher.test(tab, workspace = 2e+6)$p.value, eps = .001, digits = 2)),
          ylab = "Número de pacientes")
}

png("figuras/bp-metastase_sexo.png", 700, 700)
mybarplot(met.sex, main = "Metástase por Sexo")
dev.off()

png("figuras/bp-metastase_hist.png", 700, 700)
mybarplot(met.hist, main = "Metástase por Tipo histológico")
dev.off()

png("figuras/bp-metastase_cirurg.png", 700, 700)
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

png("figuras/bp-obitos_cirurg.png", width = 700, height = 700)
mybarplot(obt.cir, main = "Óbito por Tipo de cirurgia")
dev.off()

png("figuras/bp-estad_sexo.png", 700, 700)
mybarplot(est.sex, main = "Estadiamento por Sexo")
dev.off()

png("figuras/bp-estad_hist.png", 700, 700)
mybarplot(est.hist, main = "Estadiamento por Tipo histológico")
dev.off()

png("figuras/bp-estad_cirurg.png", 700, 700)
mybarplot(est.cir, main = "Estadiamento por Tipo de cirurgia")
dev.off()

png("figuras/bp-tempo_cirurg.png", width = 700, height = 700)
mybarplot(tip.tmp, main = "Tempo de diagnóstico por tipo de cirurgia")
dev.off()

rm(met.sex, met.hist, met.obt, met.cir)
rm(obt.sex, obt.hist, obt.met, obt.cir)
rm(est.sex, est.hist, est.obt, est.cir)
rm(tip.tmp)
source("scripts/cleanup.R")
