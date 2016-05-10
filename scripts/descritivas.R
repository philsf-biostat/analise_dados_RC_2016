dados <- read.table("dataset/dataset.dat")
attach(dados)
summary(dados)

detach(dados)
rm(dados)
