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

# Óbito por Metástase
obt.met <- table(Obito, Presenca_Metastase)

# Óbito por causa do óbito
obt.causa <- table(Obito, Causa_Obito)

## Cleanup ####
# source("scripts/cleanup.R")
