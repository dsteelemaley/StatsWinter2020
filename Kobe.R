download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
load("kobe.RData")
head(kobe)

kobe$basket[1:9]
kobe_streak <- calc_streak(kobe$basket)
barplot(table(kobe_streak))

#Excersize 1
#1 streak means that he made one then missed one 0 means he missed one after missing one

#2
#His longest was 4, the most common was 0, which is just a miss,
#the most common where he actually made a basket was single baskets


outcomes <- c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)

sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE)
sim_fair_coin
table(sim_fair_coin)

sim_unfair_coin <- sample(outcomes, size = 100, replace = TRUE, prob = c(0.2, 0.8))
sim_unfair_coin
table(sim_unfair_coin)

#12 heads in 100 unfair coin flips

outcomes <- c("H", "M")
#Excersize 4
sim_basket <- sample(outcomes, size = 1000000, replace = TRUE, prob = c(0.45, 0.55))


kobe$basket
sim_basket

sim_streak = calc_streak(sim_basket)
barplot(table(sim_streak))

as.data.frame(table(sim_streak))

#"On your own"
#Question 1
#Typical streak length is 0, most common that actually has a basket is 1
#Most baskets in a row is two 8 streaks
#Question 2
#I would assume totally different, though the 0 and 1 would be similar

#QUESTION 3
#I am going to run the model a few more time to look at different data, because currently
#if anything it is the opposite correlation, a completely independent shooter
#seems more likely to have longer streaks


#aaannnnddd I ran it one more time and it is nearly identical to Kobe's graph (highest is 4 with frequency = 1, similar other stats)
#Lets see what a couple more times does

#3
#similar but with an added 6 streak

#4
#same as 3 but more baskets all around and more streaks

#5
#still 6 streak, less baskets overall

#Mike's Questions!

#Q.1
#(a) N/A
#(b) retrospective. he is dead

#Q.2
#We are using the categorical data of miss or hit,
#there is also discrete numberical, numerical, and some long text descriptions that the dataset provides

#The streaks are discrete numberical
#

#Q.3
#Categorical?







