source("scripts/input.R")

# Descrição do local do cancer
# round(prop.table(table(Localizacao)), digits = 3)*100

library(tableone)

tabela1 <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Presenca_Metastase", "Local_Recidiva", "Obito", "Localizacao", "Tipo_Cirurgia", "Estadiamento"))
print(tabela1, showAllLevels = T)

# Estratificação: Óbito ####
t <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Presenca_Metastase", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia", "Estadiamento"), strata = "Obito")
print(t, showAllLevels = T)
rm(t)

# Estratificação: Metástase ####
t <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Obito", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia", "Estadiamento"), strata = "Presenca_Metastase")
print(t, showAllLevels = T)
rm(t)

# Estratificação: Estadiamento ####
t <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Obito", "Presenca_Metastase", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia"), strata = "Estadiamento")
print(t, showAllLevels = T)
rm(t)

rm(tabela1)
source("scripts/cleanup.R")
