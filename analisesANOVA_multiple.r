 
#install.packages("ggpubr")
#install.packages('dplyr')
library("ggpubr")
library("dplyr")
mydado = read.csv('/home/superusuario/Documents/sheila/dados.csv', sep=';')

summary(mydado)

# Show the levels
levels(mydado$inst)
levels(mydado$forca)
levels(mydado$med)
boxplot(mydado$queda ~ mydado$inst)
boxplot(mydado$forca ~ mydado$inst)
aov.mydado <- aov(mydado$queda ~ mydado$inst + mydado$forca + mydado$med + mydado$inst:mydado$forca + mydado$inst:mydado$med + mydado$forca:mydado$med)
summary(aov.mydado)

aov1.mydado <- aov(mydado$forca ~ mydado$inst + mydado$queda + mydado$med + mydado$inst:mydado$forca + mydado$inst:mydado$queda + mydado$forca:mydado$med)
summary(aov1.mydado)

TukeyHSD(aov.mydado)
kruskal.test(mydado$queda ~ mydado$inst , data=mydado)
kruskal.test(mydado$forca ~ mydado$inst , data=mydado)
kruskal.test(mydado$forca ~ mydado$queda , data=mydado)
kruskal.test(mydado$forca ~ mydado$med , data=mydado)
