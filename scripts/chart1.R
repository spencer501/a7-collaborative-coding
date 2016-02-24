# Function that returns the first chart\# Function that returns the first chart
library(plotly)
library(dplyr)

build_chart <- function(chart_data, scale_name) {
  
  chart <- plot_ly(
     x = scale_name$original,
#     y = c(15, 3, 5),
     y = chart_data %>% 
         filter(standing == 'freshman') %>% 
         filter(`R Experience` == 1) %>% 
         select(Responses),
     name = "Experience with 'R'",
     type = "bar"
  )
   
  return(chart)
}

plot_ly(
   x = c("giraffes", "orangutans", "monkeys"),
   y = c(20, 14, 23),
   name = "SF Zoo",
   type = "bar")

chart_data %>% 
   filter(standing == 'freshman') %>% 
   filter(`R Experience` == 1) %>% 
   select(Responses)