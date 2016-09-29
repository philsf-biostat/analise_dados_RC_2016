## Dados brutos ####
dados <- read.table("dataset/dataset.dat")

## Processamento ####
dados$Data_Nascimento <- as.Date(dados$Data_Nascimento)
dados$Inicio_Sintomas <- as.Date(dados$Inicio_Sintomas)
dados$Data_Diagnostico <- as.Date(dados$Data_Diagnostico)
dados$Data_Tratamento <- as.Date(dados$Data_Tratamento)
dados$Data_Metastase <- as.Date(dados$Data_Metastase)
dados$Data_Obito <- as.Date(dados$Data_Obito)
dados$Data_Recidiva <- as.Date(dados$Data_Recidiva)
dados$Tipo_Histologico <- factor(dados$Tipo_Histologico, levels = c("G1", "G2", "G3", "D", "CC"))
dados$Estadiamento <- factor(dados$Estadiamento)
dados$dt <- dados$Data_Tratamento - dados$Data_Diagnostico

## ## protótipo de diferenças por mês ####
## d1 <- dados$Data_Diagnostico[9]
## d2 <- dados$Data_Tratamento[9]
## length(seq(d1,d2, "month")) - 1

## attach() ####
attach(dados)




