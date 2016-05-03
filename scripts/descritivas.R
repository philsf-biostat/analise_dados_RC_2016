dados <- read.table("dataset/dataset.dat")
attach(dados)
summary(dados)

## Mestástase por sexo ####
sex_pres.met <- table(Sexo, Presença_Metastase)
barplot(sex_pres.met, legend = (rownames(sex_pres.met)), beside = T, main = "Presença de Metástase, por sexo", col = c("pink", "blue"))

sex_pres.met <- table(Sexo, Presença_Metastase)
barplot(sex_pres.met, legend = (rownames(sex_pres.met)), beside = T, main = "Presença de Metástase, por sexo", col = c("pink", "blue"))

sex_hist <- table(Sexo, Tipo_Histologico)
barplot(sex_hist, legend = (rownames(sex_hist)), beside = T, main = "Presença de Metástase, por sexo", col = c("pink", "blue"))

# 

detach(dados)
rm(dados)
