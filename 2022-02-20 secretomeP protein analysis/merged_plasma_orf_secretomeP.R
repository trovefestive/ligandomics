
install.packages("openxlsx", dependencies = TRUE)
library(openxlsx)

orf <- read_excel("orf.xlsx")
secretomeP <- read_excel("secretomeP.xlsx")

merged.data <- merge(orf, secretomeP, by="Gene")

write.csv(merged.data,"merged_secretomeP_and_ORF.csv", row.names = FALSE)


write.xlsx(x = merged.data,                       
           file = "merged_secretomeP_and_ORF.xlsx",      
           sheetName = "secretomeP_merged")




