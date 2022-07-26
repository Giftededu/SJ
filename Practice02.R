library(tidyverse)

sci_data <- read_csv("data/sci-online-classes.csv") |> # read in data
  select(student_id, FinalGradeCEMS, course_id, TimeSpent) |> # select variables
  rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
  filter(final_grade > 70) |> # keep grades higher than 50% 
  drop_na() # remove rows with missing data

sci_data

glimpse(sci_data)

ggplot(sci_data, aes(x = TimeSpent, y=final_grade)) +
  geom_point()
