# importing the dataset
df<-read.csv('PUBG.csv')
dim(df)
View(df)
colnames(df)

# Libraries required for the datset
library(magrittr)
library(dplyr)
library(tidyverse)
library(data.table)
library(ggplot2)
library(survival)
library(survminer)

# Preprocessing the dataset
pubg_sub <- df %>%
 filter(player_survive_time<2100) %>%
 mutate(drive = ifelse(player_dist_ride>0, 1, 0)) %>%
 mutate(size = ifelse(game_size<33, 1,ifelse(game_size>=33 &game_size<66,2,3)))
head(pubg_sub)

# Visualising the dataset
par(mfrow=c(1,2))
p1 <- barplot(prop.table(table(pubg_sub$drive)),ylim=c(0,0.7), names.arg=c("No drive","Drive & Walk"), col=c("green","red"), main = "Driving or not")
p2 <- barplot(prop.table(table(pubg_sub$party_size)),ylim=c(0,0.7), names.arg=c("SOLO","DUO","SQUAD"), col=c("orange","purple","blue"), main = "Team type")
p3 <- barplot(prop.table(table(pubg_sub$size)),ylim=c(0,0.7), names.arg=c("Small","Medium","Big"), col=c("yellow","green","red"), main = "Play size")

# Using survival function
surv_object <- Surv(time = pubg_sub$player_survive_time)
# KM plot for Party sixe
fit1 <- survfit(surv_object~party_size,data = pubg_sub)
ggsurvplot(fit1, data = pubg_sub, pval = TRUE, xlab="Playing time [s]", surv.median.line="hv",legend.labs=c("SOLO","DUO","SQUAD"), ggtheme = theme_light(),risk.table="percentage")

#KM plot for driving or walking
fit2 <- survfit(surv_object~drive,data = pubg_sub)
ggsurvplot(fit2, data = pubg_sub, pval = TRUE, xlab="Playing time [s]", risk.table="percentage", legend.labs=c("No drive","Drive & Walk"),surv.median.line="hv", ggtheme = theme_light())

#KM plot for size of the players
fit3 <- survfit(surv_object~size,data = pubg_sub)
ggsurvplot(fit3, data = pubg_sub, pval = TRUE, xlab="Playing time [s]", risk.table="percentage", legend.labs=c("small","medium","big"), surv.median.line="hv", ggtheme = theme_light())

