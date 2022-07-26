knitr::include_graphics("img/laser-cycle.png")

library(tidyverse)

sci_data <- read_csv("data/sci-online-classes.csv")
sci_data

glimpse(sci_data)

sci_data |>
  select(student_id, FinalGradeCEMS, course_id, ) |> # select variables
  rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
  filter(final_grade > 70) |> # keep grades higher than 50% 
  drop_na() # remove rows with missing data

sci_data

glimpse(sci_data)

ggplot(sci_data, aes(x = final_grade)) +
  geom_histogram(fill = "blue")
