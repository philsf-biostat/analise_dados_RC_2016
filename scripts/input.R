## Dados brutos ####
dados <- read.table("dataset/dataset.dat")

## Processamento ####
dados$Data_Nascimento <- as.Date(dados$Data_Nascimento)
dados$Inicio_Sintomas <- as.Date(dados$Inicio_Sintomas)
dados$Data_Diagnostico <- as.Date(dados$Data_Diagnostico)
dados$Data_Tratamento <- as.Date(dados$Data_Tratamento)
dados$Data_Metastase <- as.Date(dados$Data_Metastase)
dados$Data_Obito <- as.Date(dados$Data_Obito)
dados$Tipo_Histologico <- factor(dados$Tipo_Histologico, levels = c("G1", "G2", "G3", "D", "CC"))
dados$dt <- dados$Data_Tratamento - dados$Data_Diagnostico

## attach() ####
attach(dados)




