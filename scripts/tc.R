dados <- read.table("dataset/dataset.dat")
attach(dados)
summary(dados)

## Mestástase por sexo ####
sex_pres.met <- table(Presença_Metastase, Sexo)

## Metástase por tipo histológico
hist.met <- table(Presença_Metastase, Tipo_Histologico)

## Metástase por óbito
obt.met <- table(Presença_Metastase, Obito)

## Metástase por causa do óbito
causa.met <- table(Presença_Metastase, Causa_Obito)

# Obito por tipo histologico
obt.hist <- table(Obito, Tipo_Histologico)
barplot(obt.hist, beside = T, legend.text = rownames(obt.hist))

chisq.test(obt.hist)

detach(dados)
rm(sex_pres.met, hist.met, obt.met, causa.met, obt.hist)
rm(dados)
