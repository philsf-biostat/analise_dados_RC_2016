## Input ####
# source("scripts/input.R")

## Metástase ####

## Mestástase por Genero
met.sex <- table(Genero, Presenca_Metastase)

## Metástase por tipo histológico
met.hist <- table(Tipo_Histologico, Presenca_Metastase)

## Metástase por óbito
met.obt <- table(Obito, Presenca_Metastase)

## Metástase por tipo de cirurgia
met.cir <- table(Tipo_Cirurgia, Presenca_Metastase)

## Óbito ####

# Obito por Genero
obt.sex <- table(Genero, Obito)

# Obito por tipo histologico
obt.hist <- table(Tipo_Histologico, Obito)

# Óbito por Metástase
obt.met <- table(Presenca_Metastase, Obito)

## Metástase por tipo de cirurgia
obt.cir <- table(Tipo_Cirurgia, Obito)

## Óbito por Estadiamento
obt.est <- table(Estadiamento, Obito)

## Estadiamento ####

## Mestástase por Genero
est.sex <- table(Genero, Estadiamento)

## Estadiamento por tipo histológico
est.hist <- table(Tipo_Histologico, Estadiamento)

## Estadiamento por óbito
est.obt <- table(Obito, Estadiamento)

## Estadiamento por tipo de cirurgia
est.cir <- table(Tipo_Cirurgia, Estadiamento)

## Cleanup ####
# source("scripts/cleanup.R")

## Tipo de Cirurgia ####

## Tempo de diagnóstico
tip.tmp <- table(Tipo_Cirurgia, tempo.diagnostico)
