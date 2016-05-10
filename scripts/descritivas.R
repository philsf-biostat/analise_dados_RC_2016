dados <- read.table("dataset/dataset.dat")
attach(dados)
summary(dados)

# Descrição do local do cancer
round(prop.table(table(Local_Cancer)), digits = 3)*100

detach(dados)
rm(dados)
