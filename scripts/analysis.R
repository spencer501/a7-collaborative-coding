# Calculates summary information to be included in report


# needed libraries
library(dplyr)

info_function <- function(data) {

# List to return
ret <- list()

# Find dimensions of data
ret$length <- ncol(data)
ret$observations <- nrow(data)

# Equivalency lists:
## - Create tables to convert responses from the original data frame to responses that are more succinct / numerically
##   significant
equiv <- list()

equiv$scale3 <- data.frame(
   'original' = c("Never used it",
                  "Have used it a few times",
                  "Intermediate user"),
   'new' = c(1:3)
   )

equiv$programming <- data.frame(
   'original' = c(
      "Never written code",
      "Experimented a bit with simple programming",
      "Moderate experience with a scripting language (Python, R, JavaScript, Java, etc.)",
      "Lots of experience with a scripting language (Python, R, JavaScript, Java, etc.)"
   ),
   'new' = c(1:4)
   )

equiv$pet <- data.frame(
   'original' = c("A dog person...",
                  "A cat person....",
                  "Both!",
                  "Neither"),
   'new' = c("dog",
             "cat",
             "both",
             "neither")
   )

equiv$seahawks <- data.frame(
   'original' = c("No",
                  "Yes",
                  "YES!"),
   'new' = c(1:3)
   )

                                     
# Format data:
## - Renames all the columns to more succinct names
## - Change responses that are part of a scale (ex: experiece with git, command line, r, ect.) to have actual numeric
##   value
f_data <- data %>%
   rename(
      "standing" = What.is.your.current.class.standing.,
      "applying" = Are.you.interested.in.applying.to.the.Informatics.major.,
      "os" = What.operating.system.do.you.typically.use.,
      "command_line" = Using.the.command.line...terminal,
      "git" = What.is.your.familiarity.with..using.git.for.version.control,
      "markdown" = What.is.your.familiarity.with..Creating.documents.with.Markdown,
      "r_language" = What.is.your.familiarity.with..Using.the.R.programming.language,
      "programming" = What.is.your.programming.experience.,
      "countries" = How.many.countries.have.you.visited.in.your.life.,
      "cat_v_dog" = Do.you.consider.yourself.,
      "seahawks" = Are.you.a.Seahawks.fan.
   )

#### NOTE: This is the desired functionality. However, do to what I believe is an error in 'dplyr'
#### (found at https://github.com/hadley/dplyr/issues/1400), this produces the error 'invalid subscript type 'closure''.
#### For now, even though it is not the best practice, these mutations will be run line by line.
f_data$command_line = equiv$scale3$new[match(f_data$command_line, equiv$scale3$original)]
f_data$git = equiv$scale3$new[match(f_data$git, equiv$scale3$original)]
f_data$markdown = equiv$scale3$new[match(f_data$markdown, equiv$scale3$original)]
f_data$r_language = equiv$scale3$new[match(f_data$r_language, equiv$scale3$original)]
f_data$programming = equiv$programming$new[match(f_data$programming, equiv$programming$original)]
f_data$cat_v_dog = equiv$pet$new[match(f_data$cat_v_dog, equiv$pet$original)]
f_data$seahawks = equiv$seahawks$new[match(f_data$seahawks, equiv$seahawks$original)]

ret$dataf <- f_data

return(ret)

}


