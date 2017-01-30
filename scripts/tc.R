## Input ####
# source("scripts/input.R")

## Metástase ####

## Mestástase por Genero
met.sex <- with(dados, table(Genero, Presenca_Metastase))

## Metástase por tipo histológico
met.hist <- with(dados, table(Tipo_Histologico, Presenca_Metastase))

## Metástase por óbito
met.obt <- with(dados, table(Obito, Presenca_Metastase))

## Metástase por tipo de cirurgia
met.cir <- with(dados, table(Tipo_Cirurgia, Presenca_Metastase))

## Óbito ####

# Obito por Genero
obt.sex <- with(dados, table(Genero, Obito))

# Obito por tipo histologico
obt.hist <- with(dados, table(Tipo_Histologico, Obito))

# Óbito por Metástase
obt.met <- with(dados, table(Presenca_Metastase, Obito))

## Metástase por tipo de cirurgia
obt.cir <- with(dados, table(Tipo_Cirurgia, Obito))

## Óbito por Estadiamento
obt.est <- with(dados, table(Estadiamento, Obito))

## Estadiamento ####

## Mestástase por Genero
est.sex <- with(dados, table(Genero, Estadiamento))

## Estadiamento por tipo histológico
est.hist <- with(dados, table(Tipo_Histologico, Estadiamento))

## Estadiamento por óbito
est.obt <- with(dados, table(Obito, Estadiamento))

## Estadiamento por tipo de cirurgia
est.cir <- with(dados, table(Tipo_Cirurgia, Estadiamento))

## Tipo de Cirurgia ####

## Tempo de diagnóstico
tmp.tip <- with(dados, table(tempo.diagnostico, Tipo_Cirurgia))
colnames(tmp.tip)[2] <- "intrales." # abreviando "intralesional"
colnames(tmp.tip)[5] <- "radio." # abreviando radioterapia
colnames(tmp.tip)[6] <- "sem trat." # abreviando "sem tratamento"
tmp.est <- with(dados, table(tempo.diagnostico, Estadiamento))
tmp.hist <- with(dados, table(tempo.diagnostico, Tipo_Histologico))
tmp.met <- with(dados, table(tempo.diagnostico, Presenca_Metastase))
tmp.obt <- with(dados, table(tempo.diagnostico, Obito))
