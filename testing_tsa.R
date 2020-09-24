library(tidyr)

try(download.file(url = "https://dshs.texas.gov/coronavirus/TexasCOVID-19HospitalizationsOverTimebyTSA.xlsx",
                  destfile = "~/TexasCOVID-19HospitalizationsOverTimebyTSA.xlsx", mode="wb"), silent = TRUE)

h <- read_excel(path = "~/TexasCOVID-19HospitalizationsOverTimebyTSA.xlsx",
                skip =2, n_max = 255)

h$`TSA AREA`
for(i in 1:nrow(h)){
  df_tsa <- data.frame(TSA=h$`TSA AREA`a)
  
  
}


h %>% 
  filter(`TSA AREA`=="Dallas/Ft. Worth") %>%
  gather(key = "Date", value = "hospitalized", 3:ncol(h)) %>%
  ggplot(aes(x = Date, y=hospitalized)) +
  geom_point()