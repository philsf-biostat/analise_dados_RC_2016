source("scripts/input.R")

## Mestástase por sexo ####
sex.met <- table(Presenca_Metastase, Sexo)

## Metástase por tipo histológico
hist.met <- table(Presenca_Metastase, Tipo_Histologico)

## Metástase por óbito
obt.met <- table(Presenca_Metastase, Obito)
met.obt <- table(Obito, Presenca_Metastase)

## Metástase por causa do óbito
causa.met <- table(Presenca_Metastase, Causa_Obito)

# Obito por sexo
sex.obt <- table(Obito, Sexo)

# Obito por tipo histologico
obt.hist <- table(Obito, Tipo_Histologico)
barplot(obt.hist, beside = T, legend.text = rownames(obt.hist))

chisq.test(obt.hist)

rm(sex.met, hist.met, obt.met, causa.met, obt.hist)
source("scripts/cleanup.R")
