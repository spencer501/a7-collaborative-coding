# Function that returns the first chart\# Function that returns the first chart
library(plotly)

build_chart <- function(data){
  chart1 <- plot_ly(data = info$dataf, 
                    x = info$dataf$command_line, 
                    y = info$dataf$r_language, 
                    mode = "markers",
                    color = info$dataf$standing,
                    colors = 
                    )
  return(chart1)
}


# Stacked Bar Plot with Colors and Legend
#counts <- table(mtcars$vs, mtcars$gear)
#barplot(counts, main="Car Distribution by Gears and VS",
        #xlab="Number of Gears", col=c("darkblue","red"),
        #legend = rownames(counts))

chart2 <- function (dataf){
  charts <- info$data %>% 
            count(r_language, standing) %>%
  plot_ly(x = r_language, y = n, type = "bar", color = info$dataf$standing)
  return(charts)
}