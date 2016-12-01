## Input ####
# source("scripts/input.R")

## Metástase ####

## Mestástase por sexo
met.sex <- table(Presenca_Metastase, Sexo)

## Metástase por tipo histológico
met.hist <- table(Presenca_Metastase, Tipo_Histologico)

## Metástase por óbito
met.obt <- table(Presenca_Metastase, Obito)

## Metástase por tipo de cirurgia
met.cir <- table(Presenca_Metastase, Tipo_Cirurgia)

## Óbito ####

# Obito por sexo
obt.sex <- table(Obito, Sexo)

# Obito por tipo histologico
obt.hist <- table(Obito, Tipo_Histologico)

# Óbito por Metástase
obt.met <- table(Obito, Presenca_Metastase)

## Metástase por tipo de cirurgia
obt.cir <- table(Obito, Tipo_Cirurgia)

## Estadiamento ####

## Mestástase por sexo
est.sex <- table(Estadiamento, Sexo)

## Estadiamento por tipo histológico
est.hist <- table(Estadiamento, Tipo_Histologico)

## Estadiamento por óbito
est.obt <- table(Estadiamento, Obito)

## Estadiamento por tipo de cirurgia
est.cir <- table(Estadiamento, Tipo_Cirurgia)

## Cleanup ####
# source("scripts/cleanup.R")

## Tipo de Cirurgia ####

## Tempo de diagnóstico
tip.tmp <- table(Tipo_Cirurgia, tempo.diagnostico)
