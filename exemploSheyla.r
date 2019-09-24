
#df = data.frame(
#    riscoqueda = c(1,2,3,2,3,4,1,4,2,4,1,1,1,1,1,1,1,1,1,1),
#    Indforca = c(4.25,3.625,3,3.375,3.25,3,3,3.5,3,3,4.75,5,5,5,5,4.75,5,5,4.75,5)
#)

#summary(df)
#boxplot(df$riscoqueda, df$Indforca, xlab = "riscoqueda",
#   ylab = "Indforca", main = "Plot Blox dos dados")


#t.test(df$riscoqueda, df$Indforca)

mydado = read.csv('/home/superusuario/Documents/sheila/dados.csv')
str (mydado)
summary(mydado)
attach (mydado)
#aov.mydado <- aov(production ~ age+altitude)
#anova (aov.orange_iii)