# source("scripts/input.R")

## Mestástase por sexo ####
met.sex <- table(Presenca_Metastase, Sexo)

## Metástase por tipo histológico
met.hist <- table(Presenca_Metastase, Tipo_Histologico)

## Metástase por óbito
met.obt <- table(Presenca_Metastase, Obito)

## Metástase por causa do óbito
met.causa <- table(Presenca_Metastase, Causa_Obito)

# Obito por sexo
obt.sex <- table(Obito, Sexo)

# Obito por tipo histologico
obt.hist <- table(Obito, Tipo_Histologico)

# source("scripts/cleanup.R")
