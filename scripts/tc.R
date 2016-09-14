# source("scripts/input.R")

## Mestástase por sexo ####
sex.met <- table(Presenca_Metastase, Sexo)

## Metástase por tipo histológico
hist.met <- table(Presenca_Metastase, Tipo_Histologico)

## Metástase por óbito
obt.met <- table(Presenca_Metastase, Obito)

## Metástase por causa do óbito
causa.met <- table(Presenca_Metastase, Causa_Obito)

# Obito por sexo
sex.obt <- table(Obito, Sexo)

# Obito por tipo histologico
obt.hist <- table(Obito, Tipo_Histologico)

# source("scripts/cleanup.R")
