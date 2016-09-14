## Input ####
# source("scripts/input.R")

## Metástase ####

## Mestástase por sexo
met.sex <- table(Presenca_Metastase, Sexo)

## Metástase por tipo histológico
met.hist <- table(Presenca_Metastase, Tipo_Histologico)

## Metástase por óbito
met.obt <- table(Presenca_Metastase, Obito)

## Metástase por causa do óbito
met.causa <- table(Presenca_Metastase, Causa_Obito)

## Óbito ####

# Obito por sexo
obt.sex <- table(Obito, Sexo)

# Obito por tipo histologico
obt.hist <- table(Obito, Tipo_Histologico)

## Cleanup ####
# source("scripts/cleanup.R")
