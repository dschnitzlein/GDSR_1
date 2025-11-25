
## Vorbereitung

rm(list=ls())   # Entfernt alle Objekte (Datensätze, Variablen usw.) aus dem Speicher

setwd("~/Documents/THD/Lehre/Wuerzburg/GDSR_1_Loesung")

housing_df <- read.csv("~/Documents/THD/Lehre/Wuerzburg/GDSR_1_Loesung/WestRoxbury.csv", stringsAsFactors=TRUE)

## Analyse

housing_df[1:10,] # Erste 10-Zeilen
housing_df[2,1] # Wert der weiten Wohnung

housing_reduced_df <- housing_df[,c(1,4,14)]

table(housing_reduced_df$REMODEL)

dim(housing_df)

length(housing_df$TOTAL.VALUE)
length(names(housing_df))

mean(housing_df$TOTAL.VALUE)
var(housing_df$TOTAL.VALUE)

pdf("Abbildung1.pdf")
plot(x=housing_df$LIVING.AREA, y=housing_df$TOTAL.VALUE,
     xlab="Wohnfläche",
     ylab="Gesamtwert",
     main="Zusammenhang zwischen Wohnungswert und Wohnungsgröße")
dev.off()

plot(x=as.factor(housing_df$REMODEL), y=housing_df$TOTAL.VALUE, 
     xlab="Wert",
     ylab="Renovierungszustand",
     main="Zusammenhang zwischen Renovierungszustand und Wohnungswert")

summary(housing_df)
