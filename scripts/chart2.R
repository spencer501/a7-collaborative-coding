# Function that returns the second chart
library(plotly)
library(dplyr)

build_second_chart <- function(dataf) {
  freshman  <- info$dataf %>% filter(standing == "Freshman")
  sophomore <- info$dataf %>% filter(standing == "Sophomore")
  junior    <- info$dataf %>% filter(standing == "Junior")
  senior    <- info$dataf %>% filter(standing == "Senior")
  
  chart <- plot_ly(y = freshman$countries, 
                   type = "box", 
                   name = "Freshmen") %>%
    add_trace(y = sophomore$countries, 
              type = "box", 
              name = "Sophomores") %>%
    add_trace(y = junior$countries, 
              type = "box", 
              name = "Juniors") %>%
    add_trace(y = senior$countries, 
              type = "box", 
              name = "Seniors") %>%
    layout(yaxis = list(title = "Countries Visited")
    )
  
  return(chart)
}
