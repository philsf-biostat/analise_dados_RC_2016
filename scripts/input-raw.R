## Planilha excel ####
library(xlsx)
dados.raw <- read.xlsx("../Dados Epidemiologicos CONDROSSARCOMA 28_09_2016.xlsx",1)

## Anominizando ####
dados.raw <- dados.raw[-c(1)]

## Salvando ####
write.table(dados.raw,"dataset/dataset.dat")
rm(dados.raw)
