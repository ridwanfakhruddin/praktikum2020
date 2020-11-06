library(dslabs)
data("murders")

pop <- murders$population
pop

popUrut <- sort(pop)
popUrut[1]

pop
order(pop)

popUrutMin <- which.min(murders$population)
popUrutMin

murders$state[popUrutMin]

ranks <- rank(murders$population)
my_df <- data.frame(Nama = murders$state, Ranking = ranks)
head(my_df)

ranks <- rank(murders$population)
my_df <- data.frame(Nama = murders$state, Ranking = ranks)
ind <- order(my_df$Ranking)
my_df$Nama[ind]

population_in_millions <- murders$population/10^6 
total_gun_murders <- murders$total 
plot(log10(population_in_millions), total_gun_murders)

histogram <- with(murders, total / population * 100000) 
hist(histogram) 

boxplot(population~region, data = murders) 