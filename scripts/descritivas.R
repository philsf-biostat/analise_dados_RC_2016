source("scripts/input.R")

# Descrição do local do cancer
round(prop.table(table(Localizacao)), digits = 3)*100

library(tableone)

tabela1 <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Presenca_Metastase", "Local_Recidiva", "Obito", "Causa_Obito", "Localizacao", "Tipo_Cirurgia", "Estadiamento"))
print(tabela1, showAlllevels = T)
summary(tabela1)

source("scripts/cleanup.R")
