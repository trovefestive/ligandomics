
install.packages("openxlsx", dependencies = TRUE)
library(openxlsx)

install.packages("readxl")
library("readxl")

orf <- read_excel("orf.xlsx")
plasmaP <- read_excel("protein_class_Plasma.xlsx")

merged.data <- merge(orf, plasmaP, by="Gene")

write.csv(merged.data,"merged_plasmaP_and_ORF.csv", row.names = FALSE)


write.xlsx(x = merged.data,                       
           file = "merged_plasmaP_and_ORF.xlsx",      
           sheetName = "plasmaP_merged")




