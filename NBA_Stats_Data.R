# My first data science project in R
# Inspired from the course R Programming A-ZT: R For Data Science With Real Exercises! by Kirill Eremenko
# Data updated by Sam Roeslin on 9 May 2022

# Vectors:
# - Seasons
# - Players

# Matrices:
# - Salary
# - Games
# - MinutesPlayed
# - FieldGoals
# - FieldGoalAttempts
# - Points


#Comments:
#Data updated by Sam Roeslin on 9 May 2022
#Seasons are labeled based on the first year in the season
#E.g. the 2020-2021 season is presented as simply 2020

#Notes and Corrections to the data:
#Salary: Current US Dollars adjusted for inflation from data provided by the U.S. Department of Labor Bureau of Labor Statistic (May-2022)
#Source: HOOPSHYPE
#Other stats
#Source: Sports Reference

-------------------------------------------------------------------------------
#Using Matrices

#Seasons
Seasons <- c("2013","2014","2015","2016","2017","2018","2019","2020", "2021")

#Players
Players <- c("Stephen Curry","James Harden","John Wall","Russell Westbrook","LeBron James","Kevin Durant","Paul George","Kawhi Leonard","Damian Lillard","Giannis Antetokounmpo")

#Salaries
#Current US Dollars adjusted for inflation from data provided by the U.S. Department of Labor Bureau of Labor Statistic
#Source: HOOPSHYPE
StephenCurry_Salary <- c(11504868,12116632,12945956,13654081,38468739,40386520,42674629,45325029,45780966)
JamesHarden_Salary <- c(15904415,16750126,17896589,29918259,31388759,32960751,40518442,43479158,44310840)
JohnWall_Salary <- c(8680071,15618561,16769198,17761997,20035826,20668989,40518442,43479158,44310840)
RussellWestbrook_Salary <- c(17097246,17918740,19063757,29918259,31388759,38454209,40844595,43588654,44211146)
LeBronJames_Salary <- c(22186187,23533315,26152553,34904635,36919409,38442511,39710023,41334069,41180544)
KevinDurant_Salary <- c(21843723,22795904,25015562,29918259,27729174,32346173,39457722,42271404,42018900)
PaulGeorge_Salary <- c(3818808,18011004,19241120,20403860,21406922,32950723,35009652,37361703,39344970)
KawhiLeonard_Salary <- c(2317532,3480647,18680395,19883125,20928455,24921719,34730093,36232632,39344900)
DamianLillard_Salary <- c(3726790,3808438,4823129,27425070,29008107,30165706,31611917,33332104,39344900)
GiannisAntetokounmpo_Salary <- c(2085751,2135329,2224637,3376692,24925101,26046545,27411865,29012251,39344900)
#Matrix
Salary <- rbind(StephenCurry_Salary, JamesHarden_Salary, JohnWall_Salary, RussellWestbrook_Salary, LeBronJames_Salary, KevinDurant_Salary, PaulGeorge_Salary, KawhiLeonard_Salary, DamianLillard_Salary, GiannisAntetokounmpo_Salary)
rm(StephenCurry_Salary, JamesHarden_Salary, JohnWall_Salary, RussellWestbrook_Salary, LeBronJames_Salary, KevinDurant_Salary, PaulGeorge_Salary, KawhiLeonard_Salary, DamianLillard_Salary, GiannisAntetokounmpo_Salary)
colnames(Salary) <- Seasons
rownames(Salary) <- Players


#Games (regular season)
StephenCurry_G <- c(78,80,79,79,51,69,5,63,64)
JamesHarden_G <- c(73,81,82,81,72,78,68,88,65)
JohnWall_G <- c(82,79,77,78,41,32,NA,40,NA)
RussellWestbrook_G <- c(46,67,80,81,80,73,57,65,78)
LeBronJames_G <- c(77,69,76,74,82,55,67,45,56)
KevinDurant_G <- c(81,27,72,62,68,78,NA,35,55)
PaulGeorge_G <- c(80,6,81,75,79,77,48,54,31)
KawhiLeonard_G <- c(66,64,72,74,9,60,57,52,NA)
DamianLillard_G <- c(82,82,75,75,73,80,66,67,29)
GiannisAntetokounmpo_G <- c(77,81,80,80,75,72,63,61,67)
#Matrix
Games <- rbind(StephenCurry_G,JamesHarden_G,JohnWall_G,RussellWestbrook_G,LeBronJames_G,KevinDurant_G,PaulGeorge_G,KawhiLeonard_G,DamianLillard_G,GiannisAntetokounmpo_G) #combine the vectors to create a matrix
rm(StephenCurry_G,JamesHarden_G,JohnWall_G,RussellWestbrook_G,LeBronJames_G,KevinDurant_G,PaulGeorge_G,KawhiLeonard_G,DamianLillard_G,GiannisAntetokounmpo_G) #remove individual vectors
colnames(Games) <- Seasons
rownames(Games) <- Players


#Minutes Played
StephenCurry_MP <- c(36.5,32.7,34.2,33.4,32.0,33.8,27.8,34.2,34.5)
JamesHarden_MP <- c(38,36.8,38.1,36.4,35.4,36.8,36.5,36.5,37.3)
JohnWall_MP <- c(36.3,35.9,36.2,36.4,34.4,34.5,NA,32.2,NA)
RussellWestbrook_MP <- c(30.7,34.4,34.4,34.6,36.4,36,35.9,36.4,34.3)
LeBronJames_MP <- c(37.7,36.1,35.6,37.8,36.9,35.2,34.6,33.4,37.2)
KevinDurant_MP <- c(38.5,33.8,35.8,33.4,34.2,34.6,NA,33.1,37.2)
PaulGeorge_MP <- c(36.2,15.2,34.8,35.9,36.6,36.9,29.6,33.7,34.7)
KawhiLeonard_MP <- c(29.1,31.8,33.1,33.4,23.3,34,32.4,34.1,NA)
DamianLillard_MP <- c(35.8,35.7,35.7,35.9,36.6,35.5,37.5,35.8,36.4)
GiannisAntetokounmpo_MP <- c(24.6,31.4,35.3,35.6,36.7,32.8,30.4,33,32.9)
#Matrix
MinutesPlayed <- rbind(StephenCurry_MP,JamesHarden_MP,JohnWall_MP,RussellWestbrook_MP,LeBronJames_MP,KevinDurant_MP,PaulGeorge_MP,KawhiLeonard_MP,DamianLillard_MP,GiannisAntetokounmpo_MP)
rm(StephenCurry_MP,JamesHarden_MP,JohnWall_MP,RussellWestbrook_MP,LeBronJames_MP,KevinDurant_MP,PaulGeorge_MP,KawhiLeonard_MP,DamianLillard_MP,GiannisAntetokounmpo_MP)
colnames(MinutesPlayed) <- Seasons
rownames(MinutesPlayed) <- Players


#Field Goals
StephenCurry_FG <- c(8.4,8.2,10.2,8.5,8.4,9.2,6.6,10.4,8.4)
JamesHarden_FG <- c(7.5,8,8.7,8.3,9,10.8,9.9,7.7,6.1)
JohnWall_FG <- c(7.1,6.6,7.4,8.3,6.8,7.7,NA,7.3,NA)
RussellWestbrook_FG <- c(7.5,9.4,8.2,10.2,9.5,8.6,10.6,8.4,7)
LeBronJames_FG <- c(10,9,9.7,9.9,10.5,10.1,9.6,9.4,11.4)
KevinDurant_FG <- c(10.5,8.8,9.7,8.9,9.3,9.2,NA,9.3,10.5)
PaulGeorge_FG <- c(7.2,3,7.5,8.3,7.3,9.2,7.1,8.2,8.6)
KawhiLeonard_FG <- c(5.1,6.2,7.7,8.6,5.8,9.3,9.3,8.9,NA)
DamianLillard_FG <- c(6.7,7.2,8.2,8.8,8.5,8.5,9.5,9,7.7)
GiannisAntetokounmpo_FG <- c()
#Matrix
FieldGoals <- rbind(StephenCurry_FG,JamesHarden_FG,JohnWall_FG,RussellWestbrook_FG,LeBronJames_FG,KevinDurant_FG,PaulGeorge_FG,KawhiLeonard_FG,DamianLillard_FG,GiannisAntetokounmpo_FG)
rm(StephenCurry_FG,JamesHarden_FG,JohnWall_FG,RussellWestbrook_FG,LeBronJames_FG,KevinDurant_FG,PaulGeorge_FG,KawhiLeonard_FG,DamianLillard_FG,GiannisAntetokounmpo_FG)
colnames(FieldGoals) <- Seasons
rownames(FieldGoals) <- Players


#Field Goal Attempts
StephenCurry_FGA <- c(17.7,16.8,20.2,18.3,16.9,19.4,16.4,21.7,19.1)
JamesHarden_FGA <- c(16.5,18.1,19.7,18.9,20.1,24.5,22.3,16.7,15)
JohnWall_FGA <- c(16.3,14.8,17.5,18.4,16.3,17.3,NA,18.2,NA)
RussellWestbrook_FGA <- c(17.2,22,18.1,24,21.1,20.2,22.5,19,15.8)
LeBronJames_FGA <- c(17.6,18.5,18.6,18.2,19.3,19.9,19.4,18.3,21.8)
KevinDurant_FGA <- c(20.8,17.3,19.2,16.5,18,17.7,NA,17.2,20.3)
PaulGeorge_FGA <- c(17,8.2,17.9,18,17,21,16.3,17.6,20.5)
KawhiLeonard_FGA <- c(9.8,12.8,15.1,17.7,12.3,18.8,19.9,17.5,NA)
DamianLillard_FGA <- c(15.9,16.6,19.7,19.8,19.4,19.2,20.4,19.9,19)
GiannisAntetokounmpo_FGA <- c(2.2,4.7,6.4,8.2,9.9,10,10.9,10.3,10.3)
#Matrix
FieldGoalAttempts <- rbind(StephenCurry_FGA,JamesHarden_FGA,JohnWall_FGA,RussellWestbrook_FGA,LeBronJames_FGA,KevinDurant_FGA,PaulGeorge_FGA,KawhiLeonard_FGA,DamianLillard_FGA,GiannisAntetokounmpo_FGA)
rm(StephenCurry_FGA,JamesHarden_FGA,JohnWall_FGA,RussellWestbrook_FGA,LeBronJames_FGA,KevinDurant_FGA,PaulGeorge_FGA,KawhiLeonard_FGA,DamianLillard_FGA,GiannisAntetokounmpo_FGA)
colnames(FieldGoalAttempts) <- Seasons
rownames(FieldGoalAttempts) <- Players


#Points
StephenCurry_PTS <- c(24.0,23.8,30.1,25.3,26.4,27.3,20.8,32.0,25.5)
JamesHarden_PTS <- c(25.4,27.4,29,29.1,30.4,36.1,34.3,24.6,21.8)
JohnWall_PTS <- c(19.3,17.6,19.9,23.1,19.4,20.7,NA,20.6,NA)
RussellWestbrook_PTS <- c(21.8,28.1,23.5,31.6,25.4,22.9,27.2,22.2,18.5)
LeBronJames_PTS <- c(27.1,25.3,25.3,26.4,27.5,27.4,25.3,25,30.3)
KevinDurant_PTS <- c(32,25.4,28.2,25.1,26.4,26,NA,26.9,29.9)
PaulGeorge_PTS <- c(21.7,8.8,23.1,23.7,21.9,28,21.5,23.3,24.3)
KawhiLeonard_PTS <- c(12.8,16.5,21.2,25.5,16.2,26.6,27.1,24.8,NA)
DamianLillard_PTS <- c(20.7,21,25.1,27,26.9,25.8,30,28.8,24)
GiannisAntetokounmpo_PTS <- c(6.8,12.7,16.9,22.9,26.9,27.7,29.5,28.1,29.9)
#Matrix
Points <- rbind(StephenCurry_PTS,JamesHarden_PTS,JohnWall_PTS,RussellWestbrook_PTS,LeBronJames_PTS,KevinDurant_PTS,PaulGeorge_PTS,KawhiLeonard_PTS,DamianLillard_PTS,GiannisAntetokounmpo_PTS)
rm(StephenCurry_PTS,JamesHarden_PTS,JohnWall_PTS,RussellWestbrook_PTS,LeBronJames_PTS,KevinDurant_PTS,PaulGeorge_PTS,KawhiLeonard_PTS,DamianLillard_PTS,GiannisAntetokounmpo_PTS)
colnames(Points) <- Seasons
rownames(Points) <- Players


--------------------------------------------------------
# Using Dataframes

#Set working directory
setwd("C:\\Users\\Samuel.Roeslin\\Documents\\R(local)\\Udemy\\NBA_Player_Data") #set working directory
getwd() #get working directory

#All Stats as dataframe
StephenCurry_playingStats <- read.csv("Stephen_Curry-Stats-Regular_Season-2022-05-09.csv")
JamesHarden_playingStats <- read.csv("James_Harden-Stats-Regular_Season-2022-05-09.csv")
JohnWall_playingStats <- read.csv("John_Wall-Stats-Regular_Season-2022-05-09.csv")
RussellWestbrook_playingStats <- read.csv("Russell_Westbrook-Stats-Regular_Season-2022-05-09.csv")
LeBronJames_playingStats <- read.csv("LeBron_James-Stats-Regular_Season-2022-05-09.csv")
KevinDurant_playingStats <- read.csv("Kevin_Durant-Stats-Regular_Season-2022-05-09.csv")
PaulGeorge_playingStats <- read.csv("Paul_George-Stats-Regular_Season-2022-05-09.csv")
KawhiLeonard_playingStats <- read.csv("Kawhi_Leonard-Stats-Regular_Season-2022-05-09.csv")
DamianLillard_playingStats <- read.csv("Damian_Lillard-Stats-Regular_Season-2022-05-09.csv")
GiannisAntetokounmpo_playingStats <- read.csv("Giannis_Antetokounmpo-Stats-Regular_Season-2022-05-09.csv")