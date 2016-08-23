source("scripts/input.R")

modelo.logistico <- glm(Presenca_Metastase ~ dt, family = binomial)
summary(modelo.logistico)

summary(glm(Obito ~ dt, family = binomial))

summary(glm(Obito ~ Tipo_Histologico, family = binomial))

summary(glm(Presenca_Metastase ~ Tipo_Histologico, family = binomial))

summary(glm(Presenca_Metastase ~ dt + Tipo_Cirurgia , family = binomial))

summary(glm(Obito ~ dt * Tipo_Histologico, family = binomial))

source("scripts/cleanup.R")
