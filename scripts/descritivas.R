source("scripts/input.R")

# Descrição do local do cancer
# round(prop.table(table(Localizacao)), digits = 3)*100

library(pander)
panderOptions('table.style', 'rmarkdown')
panderOptions('table.split.table',90)

library(tableone)

tabela1 <- CreateTableOne(data = dados, vars = c("Genero", "Tipo_Histologico", "Presenca_Metastase", "Local_Recidiva", "Obito", "Localizacao", "Tipo_Cirurgia", "Estadiamento", "tempo.diagnostico"))
tabela1 <- print(tabela1, showAllLevels = T, printToggle = F, quote = F)
write.csv2(tabela1, "resultados/tabela1.csv")
pander(tabela1)
rm(tabela1)

# Estratificação: Óbito ####
t <- CreateTableOne(data = dados, vars = c("Genero", "Tipo_Histologico", "Presenca_Metastase", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia", "Estadiamento", "tempo.diagnostico"), strata = "Obito", testExact = fisher.test, argsExact = list(workspace = 2 * 10^6))
t <- print(t, showAllLevels = T, exact = T, printToggle = F, quote = F)
t <- subset(t, select = -c(test))
write.csv2(t, "resultados/tabela_obito.csv")
pander(t)
rm(t)

# Estratificação: Metástase ####
t <- CreateTableOne(data = dados, vars = c("Genero", "Tipo_Histologico", "Obito", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia", "Estadiamento", "tempo.diagnostico"), strata = "Presenca_Metastase", testExact = fisher.test, argsExact = list(workspace = 2 * 10^6))
t <- print(t, showAllLevels = T, exact = T, strata = "Presenca_Metastase", printToggle = F, quote = F)
t <- subset(t, select = -c(test))
write.csv2(t, "resultados/tabela_met.csv")
pander(t)
rm(t)

# Estratificação: Estadiamento ####
t <- CreateTableOne(data = dados, vars = c("Genero", "Tipo_Histologico", "Obito", "Presenca_Metastase", "Local_Recidiva", "Localizacao", "Tipo_Cirurgia"), strata = "Estadiamento", testExact = fisher.test, argsExact = list(workspace = 2 * 10^6))
t <- print(t, showAllLevels = T, exact = T, printToggle = F, quote = F)
t <- subset(t, select = -c(test))
write.csv2(t, "resultados/tabela_estadiam.csv")
pander(t)
rm(t)

# Estratificação: Tempo de Diagnóstico ####
t <- CreateCatTable(vars = c("Estadiamento", "Tipo_Histologico", "Presenca_Metastase", "Obito"), strata = "tempo.diagnostico", data = dados, argsExact = list(workspace = 2 * 10^6))
t <- print(t, exact = T, printToggle = F, quote = F)
t <- subset(t, select = -c(test))
write.csv2(t, "resultados/tabela_tempodiag.csv")
pander(t)
rm(t)
