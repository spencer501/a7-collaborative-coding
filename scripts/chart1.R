# Function that returns the first chart\# Function that returns the first chart
library(plotly)
library(dplyr)

build_chart <- function(chart_one) {
  freshman  <- chart_one %>% filter(standing == "Freshman")
  sophomore <- chart_one %>% filter(standing == "Sophomore")
  junior    <- chart_one %>% filter(standing == "Junior")
  senior    <- chart_one %>% filter(standing == "Senior")
  
  chart <- plot_ly(y = freshman$`R Experience`, 
                   type = "box", 
                   name = "Freshmen") %>%
    add_trace(y = sophomore$`R Experience`, 
              type = "box", 
              name = "Sophomores") %>%
    add_trace(y = junior$`R Experience`, 
              type = "box", 
              name = "Juniors") %>%
    add_trace(y = senior$`R Experience`, 
              type = "box", 
              name = "Seniors") %>%
    layout(yaxis = list(title = "R Language Experience")
    )
  
  return(chart)
}