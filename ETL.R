
library(readr)
library(dplyr)
PENSIONISTAS_112019 <- read_delim("Data/PENSIONISTAS_112019.csv", 
                      ";", escape_double = FALSE, locale = locale(decimal_mark = ",", 
                                                                  grouping_mark = ".", encoding = "LATIN1"), 
                      trim_ws = TRUE)

PENSIONISTAS_122019 <- read_delim("Data/PENSIONISTAS_122019.csv", 
                                  ";", escape_double = FALSE, locale = locale(decimal_mark = ",", 
                                                                              grouping_mark = ".", encoding = "LATIN1"), 
                                  trim_ws = TRUE)

PENSIONISTAS_112019$`DATA PROCESSAMENTO`<-"Nov/2019"
PENSIONISTAS_122019$`DATA PROCESSAMENTO`<-"Dez/2019"


pensionistas <- PENSIONISTAS_112019 %>%
  bind_rows(PENSIONISTAS_122019)


pensionistas$`NOME DO ORGAO`<- abjutils::rm_accent(pensionistas$`NOME DO ORGAO`)
pensionistas$`NOME DO SERVIDOR INSTITUIDOR` <- abjutils::rm_accent(pensionistas$`NOME DO SERVIDOR INSTITUIDOR`)
pensionistas$`NOME DO BENEFICIARIO`<- abjutils::rm_accent(pensionistas$`NOME DO BENEFICIARIO`)
pensionistas$`TIPO PENSAO`<- abjutils::rm_accent(pensionistas$`TIPO PENSAO`)
pensionistas$`TIPO DE BENEFICIARIO` <- abjutils::rm_accent(pensionistas$`TIPO DE BENEFICIARIO`)

pensionistas<-
pensionistas %>%
  mutate(`DATA DE NASCIMENTO` = paste0(substr(`DATA DE NASCIMENTO`,5,8),"-",substr(`DATA DE NASCIMENTO`,3,4),"-",substr(`DATA DE NASCIMENTO`,1,2)),
         `DATA INICIO DO BENEFICIO` = paste0(substr(`DATA INICIO DO BENEFICIO`,5,8),"-",substr(`DATA INICIO DO BENEFICIO`,3,4),"-",substr(`DATA INICIO DO BENEFICIO`,1,2)),
         `DATA FIM DO BENEFICIO` = paste0(substr(`DATA FIM DO BENEFICIO`,5,8),"-",substr(`DATA FIM DO BENEFICIO`,3,4),"-",substr(`DATA FIM DO BENEFICIO`,1,2)),
         `DATA FIM DO BENEFICIO`=ifelse(`DATA FIM DO BENEFICIO`=="0000-00-00",NA,`DATA FIM DO BENEFICIO`)
         )

save(list= "pensionistas", file = "pensionistas.RData")

class(pensionistas$`RENDIMENTO BRUTO`)
