## Planilha excel ####
library(xlsx)
dados.raw <- read.xlsx("../Dados Epidemiologicos CONDROSSARCOMA 30_01_2017.xlsx",1)

## Anominizando ####
dados.raw <- dados.raw[-c(1)]

## Salvando ####
write.table(dados.raw,"dataset/dataset.dat")
rm(dados.raw)
