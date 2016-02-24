# Function that returns the second chart
library(plotly)
library(dplyr)

build_second_chart <- function(dataset) {
  freshman  <- dataset %>% filter(What.is.your.current.class.standing. == "Freshman")
  sophomore <- dataset %>% filter(What.is.your.current.class.standing. == "Sophomore")
  junior    <- dataset %>% filter(What.is.your.current.class.standing. == "Junior")
  senior    <- dataset %>% filter(What.is.your.current.class.standing. == "Senior")
  
  chart <- plot_ly(y = freshman$How.many.countries.have.you.visited.in.your.life., 
                   type = "box", 
                   name = "Freshmen") %>%
    add_trace(y = sophomore$How.many.countries.have.you.visited.in.your.life., 
              type = "box", 
              name = "Sophomores") %>%
    add_trace(y = junior$How.many.countries.have.you.visited.in.your.life., 
              type = "box", 
              name = "Juniors") %>%
    add_trace(y = senior$How.many.countries.have.you.visited.in.your.life., 
              type = "box", 
              name = "Seniors") %>%
    layout(yaxis = list(title = "Countries Visited")
    )
  
  return(chart)
}
