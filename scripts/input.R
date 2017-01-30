## Dados brutos ####
dados <- read.table("dataset/dataset.dat")

## Processamento ####
# Datas
dados$Data_Nascimento <- as.Date(dados$Data_Nascimento)
dados$Inicio_Sintomas <- as.Date(dados$Inicio_Sintomas)
dados$Data_Diagnostico <- as.Date(dados$Data_Diagnostico)
dados$Data_Tratamento <- as.Date(dados$Data_Tratamento)
dados$Data_Metastase <- as.Date(dados$Data_Metastase)
dados$Data_Obito <- as.Date(dados$Data_Obito)
dados$Data_Recidiva <- as.Date(dados$Data_Recidiva)

# Fatores
dados$Presenca_Metastase <- factor(dados$Presenca_Metastase, labels = c("Não", "Sim"))
dados$Obito <- factor(dados$Obito, labels = c("Não", "Sim"))
dados$Tipo_Histologico <- factor(dados$Tipo_Histologico, levels = c("G1", "G2", "G3", "D", "CC"))
dados$Estadiamento <- factor(dados$Estadiamento)
dados$tempo.diagnostico <- ordered(dados$tempo.diagnostico, levels = c("<3meses", "3 A 6 MESES", "6m a 1ano", "1 a 3 anos", ">3anos"))
dados$dt <- dados$Data_Tratamento - dados$Data_Diagnostico
dados$dt.diag <- dados$Data_Diagnostico - dados$Inicio_Sintomas
dados$dt.diag <- as.numeric(dados$dt.diag)
# cut(dados$dt.diag, breaks = c(0, 90, 180, 365, 1095, Inf), right = F, labels = c("<3meses", "3 A 6 MESES", "6m a 1ano", "1 a 3 anos", ">3anos"), ordered_result = T)

## Removendo variáveis não consideradas ####
dados <- dados[!names(dados) %in% c("Causa_Obito", "Hist_Obs", "Data_Recidiva")]

## ## protótipo de diferenças por mês ####
## d1 <- dados$Data_Diagnostico[9]
## d2 <- dados$Data_Tratamento[9]
## length(seq(d1,d2, "month")) - 1

## attach() ####
attach(dados)
