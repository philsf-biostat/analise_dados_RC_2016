source("scripts/input.R")

modelo.logistico <- glm(Presenca_Metastase ~ dt, family = binomial)
summary(modelo.logistico)

summary(glm(Obito ~ Tipo_Histologico, family = binomial))

source("scripts/cleanup.R")
