
install.packages("openxlsx", dependencies = TRUE)
library(openxlsx)

install.packages("xlsx")
library("xlsx")   

install.packages("readxl")
library("readxl")

orf <- read_excel("orf.xlsx")
signalP <- read_excel("protein_class_SignalP.xlsx")

merged.data <- merge(orf, signalP, by="Gene")


write.xlsx(x = merged.data,                       
           file = "merged_signalP_and_ORF.xlsx",      
           sheetName = "signalP_merged")


install.packages('data.table')
library(data.table)
x<-read.table("CCDS.current.txt", header=FALSE)


install.packages("readr")
library("readr")
my_data <- read_tsv("CCDS.current.txt")
View(my_data)
