# Function that returns the first chart\# Function that returns the first chart
library(plotly)

build_chart <- function(data){
  chart1 <- plot_ly( 
                    x = class_standing$r_language, 
                    y = n, 
                    name = "Freshman",
                    type = "bar",
                    )
  return(chart1)
}


#counts <- table(mtcars$vs, mtcars$gear)
#barplot(counts, main="Car Distribution by Gears and VS",
        #xlab="Number of Gears", col=c("darkblue","red"),
        #legend = rownames(counts))

