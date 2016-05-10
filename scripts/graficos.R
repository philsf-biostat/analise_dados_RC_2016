png("figuras/barplots.png")
par(mfrow = c(2,2))
barplot(sex_pres.met, legend = (rownames(sex_pres.met)), beside = T, main = "Metástase por sexo", col = c("lightblue", "red"))
barplot(hist.met, legend = (rownames(hist.met)), beside = T, main = "Metástase por tipo histológico", col = c("lightblue", "red"))
barplot(obt.met, legend = (rownames(obt.met)), beside = T, main = "Metástase por Óbito", col = c("lightblue", "red"))
barplot(causa.met, legend = (rownames(causa.met)), beside = T, main = "Metástase por Causa do Óbito", col = c("lightblue", "red"))
dev.off()

