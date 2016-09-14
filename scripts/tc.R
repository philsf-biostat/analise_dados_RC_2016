source("scripts/input.R")

## Mestástase por sexo ####
sex_pres.met <- table(Presenca_Metastase, Sexo)

## Metástase por tipo histológico
hist.met <- table(Presenca_Metastase, Tipo_Histologico)

## Metástase por óbito
obt.met <- table(Presenca_Metastase, Obito)

## Metástase por causa do óbito
causa.met <- table(Presenca_Metastase, Causa_Obito)

# Obito por tipo histologico
obt.hist <- table(Obito, Tipo_Histologico)
barplot(obt.hist, beside = T, legend.text = rownames(obt.hist))

chisq.test(obt.hist)

rm(sex_pres.met, hist.met, obt.met, causa.met, obt.hist)
source("scripts/cleanup.R")
