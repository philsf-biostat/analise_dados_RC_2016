## Planilha excel ####
library(xlsx)
dados <- read.xlsx("../Dados Epidemiologicos CONDROSSARCOMA apos INCA padronizado.xls",1)

## Anominizando ####
# dados <- dados[-c(1:6)]
dados <- dados[c("Data_Nascimento","Sexo","Inicio_Sintomas", "Local_Cancer", "Lateralidade", "Local_Obs", "Data_Diagnostico", "Tipo_Histologico", "Hist_Obs", "Data_Tratamento", "Presença_Metastase", "Data_Metástase", "Obito", "Data_Obito", "Causa_Obito")]

write.table(dados,"dataset/dataset.dat")
rm(dados)
