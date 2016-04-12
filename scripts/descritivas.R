dados <- read.table("dataset/dataset.dat")
attach(dados)
summary(dados)

## Mestástase por sexo ####
counts <- table(Sexo, Presença_Metastase)
barplot(counts, legend = (rownames(counts)), beside = T, main = "Presença de Metástase, por sexo", col = c("pink", "blue"))

# 

detach(dados)
