


library(readxl)
LungCapData <- read_excel("D:/DiagnostiekOnderzoek/RR and OR/LungCapData.xls")
Lung <- as.data.frame(LungCapData)
head(Lung, 10)
attach(Lung)
names(Lung)

TAB <- table(Gender, Smoke)
TAB
barplot(TAB, beside = T, legend = T)

epi.2by2(TAB, method="cohort.count", conf.level = 0.95)

TAB2 <- matrix(c(44,314, 33, 34), nrow=2, byrow=TRUE)
TAB2
colnames(TAB2) <- c("yes", "no")
TAB2
rownames(TAB2) <- c("female", "male")
TAB2

TAB3 <- cbind(TAB[,2], TAB[,1])
TAB3
colnames(TAB3) <- c("yes", "no")
TAB3

epi.2by2(TAB3, method="cohort.count")




