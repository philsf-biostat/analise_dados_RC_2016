source("scripts/input.R")

# Descrição do local do cancer
# round(prop.table(table(Localizacao)), digits = 3)*100

library(pander)
panderOptions('table.style', 'rmarkdown')
panderOptions('table.split.table',Inf)

library(tableone)

tabela1 <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Presenca_Metastase", "Local_Recidiva", "Obito", "Localizacao", "Tipo_Cirurgia", "Estadiamento"))
pander(print(tabela1, showAllLevels = T))

# Estratificação: Óbito ####
t <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Presenca_Metastase", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia", "Estadiamento"), strata = "Obito", testExact = fisher.test, argsExact = list(workspace = 2 * 10^6))
pander(print(t, showAllLevels = T, exact = T))
rm(t)

# Estratificação: Metástase ####
t <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Obito", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia", "Estadiamento"), strata = "Presenca_Metastase", testExact = fisher.test, argsExact = list(workspace = 2 * 10^6))
pander(print(t, showAllLevels = T, exact = T, strata = "Presenca_Metastase"))
rm(t)

# Estratificação: Estadiamento ####
t <- CreateTableOne(data = dados, vars = c("Sexo", "Tipo_Histologico", "Obito", "Presenca_Metastase", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia"), strata = "Estadiamento", testExact = fisher.test, argsExact = list(workspace = 2 * 10^6))
pander(print(t, showAllLevels = T, exact = T))
rm(t)

rm(tabela1)
source("scripts/cleanup.R")
