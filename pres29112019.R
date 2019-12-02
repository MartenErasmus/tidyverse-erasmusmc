library(XML)
library(textreadr)
library(dplyr)
library(tidyr)


str(parse_logical(c("TRUE", "FALSE", "NA")))
str(parse_logical(c("1","1","0")))
str(parse_logical(c("1","1","10")))

temp <- parse_logical(c("1","1","10"))
temp
problems(temp)

parse_double("1.23")
#> [1] 1.23
parse_double("1,23", locale = locale(decimal_mark = ","))

hurricanes <- read_csv(file = "https://people.sc.fsu.edu/~jburkardt/data/csv/hurricanes.csv")
readr::write_csv(hurricanes, "./hurricanes_normal.csv")
readr::write_csv2(hurricanes , "./hurricanes_eu.csv")

hurricanes_test <- read.csv("./hurricanes_normal.csv")
hurricanes_test2 <- read.csv("./hurricanes_eu.csv")

hurricanes_test3 <- read.csv("./hurricanes_eu.csv")
hurricanes_test4 <- read.csv2("./hurricanes_eu.csv")



# Read and parse HTML file
doc.html = read_html('https://www.vegsoc.org/cookery-school/blog/seasonal-uk-grown-produce/',
                         useInternal = TR)
food <- doc.html[89:112]
food
months <- food[seq(1, length(food), 2)]
foods <- food[seq(2, length(food), 2)]
foods
seasonalFoods <- cbind(months, foods)

View(seasonalFoods)

foodMarkets <- jsonlite::read_json("./retail_food_markets.json")
















seasonalFoods %>%
  unnest(foods) %>% 
  group_by(months) %>% 
  mutate(col=seq_along(months)) %>% #add a column indicator
  spread(key=col, value=fo
         
foods
allFoods[1]
temp <- gsub('\\.',',',allFoods)
temp <- strsplit(temp,',')
temp
temp <- unique(temp)
temp
temp
veggies <- trimws(unique(temp[[1]]))
veggies[1:3]
veggies
veggies <- sort(veggies)

test <- tibble::deframe(seasonalFoods)
test$january

df <- data.frame(
  words = c("These","Are","Words"),
  x = c(1,2,3),
  y = c(1,2,3)
)

ggplot(data = ) +
  geom_text(aes(x = x, y = y, label=words))
