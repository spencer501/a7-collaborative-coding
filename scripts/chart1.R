# Function that returns the first chart\# Function that returns the first chart
library(plotly)

build_chart <- function(dataf){
  chart1 <- plot_ly(data = info$dataf, 
                    x = info$dataf$command_line, 
                    y = info$dataf$r_language, 
                    mode = "markers",
                    color = info$dataf$standing,
                    colors = 
                    )
  return(chart1)
}

chart2 <- function (dataf){
  charts <- info$data %>% 
            count(r_language, standing) %>%
  plot_ly(x = r_language, y = n, type = "bar", color = info$dataf$standing)
  return(charts)
}