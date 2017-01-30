source("scripts/input.R", encoding = 'UTF-8')
source("scripts/tc.R", encoding = 'UTF-8')

mybarplot <- function(tab, desfecho, preditor) {
  par(mar = c(7, 5, 4, 2) + 0.1) #add room for the rotated labels
  main <- paste(desfecho, "por", preditor)
  barplot(tab,
          legend.text = (rownames(tab)),
          beside = T,
          col = rainbow(length((rownames(tab))), .7, .7),
          main = main,
          cex.main = 2,
          cex.axis = 1.2,
          cex.lab = 1.6,
          cex.names = 1.5,
          cex.sub = 1.2,
          ylim = c(0, 1.2*max(tab)),
          args.legend = list(title = preditor),
          xlab = desfecho,
          ylab = "Número de pacientes")
  mtext(paste("p-valor:", format.pval(fisher.test(tab, workspace = 2e+6)$p.value, eps = .001, digits = 2)), cex = 1.3)
}

png("figuras/bp-metastase_genero.png", 700, 700)
mybarplot(met.sex, desfecho = "Metástase", preditor = "Gênero")
dev.off()

png("figuras/bp-metastase_hist.png", 700, 700)
mybarplot(met.hist, desfecho = "Metástase", preditor = "Tipo histológico")
dev.off()

png("figuras/bp-metastase_cirurg.png", 700, 700)
mybarplot(met.cir, desfecho = "Metástase", preditor = "Tipo de cirurgia")
dev.off()

png("figuras/bp-obitos_hist.png", width = 700, height = 700)
mybarplot(obt.hist, desfecho = "Óbito", preditor = "Tipo histológico")
dev.off()

png("figuras/bp-obitos_met.png", 700, 700)
mybarplot(obt.met, desfecho = "Óbito", preditor = "Metástase")
dev.off()

png("figuras/bp-obitos_estad.png", 700, 700)
mybarplot(obt.est, desfecho = "Óbito", preditor = "Estadiamento")
dev.off()

png("figuras/bp-obitos_cirurg.png", width = 700, height = 700)
mybarplot(obt.cir, desfecho = "Óbito", preditor = "Tipo de cirurgia")
dev.off()

png("figuras/bp-estad_genero.png", 700, 700)
mybarplot(est.sex, desfecho = "Estadiamento", preditor = "Gênero")
dev.off()

png("figuras/bp-estad_hist.png", 700, 700)
mybarplot(est.hist, desfecho = "Estadiamento", preditor = "Tipo histológico")
dev.off()

png("figuras/bp-estad_cirurg.png", 700, 700)
mybarplot(est.cir, desfecho = "Estadiamento", preditor = "Tipo de cirurgia")
dev.off()

png("figuras/bp-tempo_cirurg.png", width = 700, height = 700)
mybarplot(tmp.tip, desfecho = "Tipo de cirurgia", preditor = "Tempo de diagnóstico")
dev.off()

png("figuras/EDA-tempo.png", 700, 700)
dados <- as.data.table(dados)
with(dados, hist(as.numeric(dt.diag), main = "", xlab = "", ylab = ""))
title(main = "Tempo de diagnóstico", xlab = "Dias entre Início Sintomas e Data Diagnóstico", ylab = "Número de pacientes")
abline(v =   90, lwd = 2, col = "yellow")
abline(v =  180, lwd = 2, col = "green")
abline(v =  365, lwd = 2, col = "blue")
abline(v = 1095, lwd = 2, col = "red")
legend("topright", c("3 meses", "6 meses", "1 ano", "3 anos"), lwd = 2, col = c("yellow", "green", "blue", "red"))
dev.off()

rm(met.sex, met.hist, met.obt, met.cir)
rm(obt.sex, obt.hist, obt.met, obt.cir, obt.est)
rm(est.sex, est.hist, est.obt, est.cir)
rm(tmp.tip)
source("scripts/cleanup.R")
