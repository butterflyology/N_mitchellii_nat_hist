# script to read in and plot temperature data from fen microclimate work.
# Chris Hamm

# Originally written in ~2010 and 2011. This code is ineligent and I would not write it this way today, but I have copied it verbatim with only path changes made. ~Line 460 contains the code to recreate figure 3,


#Some of the data are actually in F, not C, so I will have a correction in some of the data.
#F - 32 * 5 / 9

P1T1 <- read.csv("data/Pole_1_Top_1.csv", head = TRUE) #in F
str(P1T1)
P1T1$TMP <- (P1T1$TMP-32) * (5/9)


P2B1 <- read.csv("data/Pole_2_Bot_1.csv", head = TRUE)#in F
str(P2B1)
P2B1$TMP <- (P2B1$TMP - 32) * (5 / 9)


P2T1 <- read.csv("data/Pole_2_Top_1.csv", head = TRUE)#in C
str(P2T1)

P3B1 <- read.csv("data/Pole_3_Bot_1.csv", head = TRUE)# in F
str(P3B1)
P3B1$TMP <- (P3B1$TMP - 32)*(5 / 9)

P3T1 <- read.csv("data/Pole_3_Top_1.csv", head = TRUE)#in F
str(P3T1)
P3T1$TMP <- (P3T1$TMP - 32) * (5 / 9)

P4B1 <- read.csv("data/Pole_4_Bot_1.csv", head = TRUE)#in C
str(P4B1)

P4T1 <- read.csv("data/Pole_4_Top_1.csv", head = TRUE)#in F
str(P4T1)
P4T1$TMP <- (P4T1$TMP - 32) * (5 / 9)

P5B1 <- read.csv("data/Pole_5_Bot_1.csv", head = TRUE)#in C
str(P5B1)

P5T1 <- read.csv("data/Pole_5_Top_1.csv", head = TRUE)# in F
str(P5T1)
P5T1$TMP <- (P5T1$TMP - 32) * (5 / 9)

#Using the new data (stand alone, not yet combined)
#Data from period 2
P1B2 <- read.csv('data/Pole_1_Bot_2.csv', header = TRUE)
str(P1B2)

P1T2 <- read.csv('data/Pole_1_Top_2.csv', header = TRUE)
str(P1T2)

P2B2 <- read.csv("data/Pole_2_Bot_2.csv", header = TRUE)
str(P2B2)

P2T2 <- read.csv("data/Pole_2_Top_2.csv", header = TRUE)
str(P2T2)

P3B2 <- read.csv('data/Pole_3_Bot_2.csv', header = TRUE)
str(P3B2)

P4T2 <- read.csv('data/Pole_4_Top_2.csv', header = TRUE)
str(P4T2)

P5B2 <- read.csv('data/Pole_5_Bot_2.csv', header = TRUE)
str(P5B2)

P5T2 <- read.csv('data/Pole_5_Top_2.csv', header = TRUE)
str(P5T2)

#Date from set 3
P1B3 <- read.csv('data/Pole_1_Bot_3.csv', header = TRUE)
str(P1B3)

P1T3 <- read.csv('data/Pole_1_Top_3.csv', header = TRUE)
str(P1T3)

P2B3 <- read.csv("data/Pole_2_Bot_3.csv", header = TRUE)
str(P2B3)

P2T3 <- read.csv("data/Pole_2_Top_3.csv", header = TRUE)
str(P2T3)

P3B3 <- read.csv('data/Pole_3_Bot_3.csv', header = TRUE)
str(P3B3)

P4B3 <- read.csv('data/Pole_4_Bot_3.csv', header = TRUE)
str(P4B3)

P4T3 <- read.csv('data/Pole_4_Top_3.csv', header = TRUE)
str(P4B3)

P5B3 <- read.csv('data/Pole_5_Bot_3.csv', header = TRUE)
str(P5B3)

P5T3 <- read.csv('data/Pole_5_Top_3.csv', header = TRUE)
str(P5T3)


# Make some plots
par(mfrow = c(5, 2))
# plot('')

plot(P1T1$TMP, ylab="Degrees C", xlab='1 - 15 March, 2011 (Hours)', main='Fen Temperature', type='l')

plot(P2B1$TMP, ylab="Degrees C", xlab='1 - 15 March, 2011 (Hours)', main='Fen Temperature', type='l', ylim=c(-25, 15), col='blue')
lines(P2T1$TMP, col='red')

plot(P3B1$TMP, ylab="Degrees C", xlab='1 - 15 March, 2011 (Hours)', main='Fen Temperature', type='l', col='blue')
lines(P3T1$TMP, type='l', col='red')

plot(P4B1$TMP, ylab="Degrees C", xlab='1 - 15 March, 2011 (Hours)', main='Upland Temperature', type='l', col='blue', ylim=c(-20, 25))
lines(P4T1$TMP, type='l', col='red')

plot(P5B1$TMP, ylab="Degrees C", xlab='1  - 15 March, 2011 (Hours)', main='Upland Temperature', type='l', col='blue')
lines(P5T1$TMP, type='l', col='red')





#Different plots
par(mfrow = c(4, 1))

# These "Lib" files refer to other temperature logger files. I believe that I changed the names because `Lib1` made little sense while P1B1 could be more reasonable interpreted as `Pole 1 Bottom 1` and allow for more intuative comparisons just by looking at the names.

plot(Lib4$TMP, ylab="Degrees C", xlab='Hours', main='Pole B', type='l', col='red')
lines(Lib3$TMP, col='blue')
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('blue', 'red'), lty=c(1,1))

plot(Lib6$TMP, ylab="Degrees C", xlab='Hours', type='l', col='red', ylim=c(-20,0))
lines(Lib5$TMP, col='blue')
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('blue', 'red'), lty=c(1,1))

plot(Lib8$TMP, ylab="Degrees C", xlab='Hours', main='Pole D', type='l', col='red', ylim=c(-20, 24))
lines(Lib7$TMP, col='blue')
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('blue', 'red'), lty=c(1,1))

plot(Lib10$TMP, ylab="Degrees C", xlab='Hours', main='Pole E', type='l', col='red', ylim=c(-25, 13))
lines(Lib9$TMP, col='blue')
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('blue', 'red'), lty=c(1,1))




summary(Lib2)
mean(Lib2$TEMP)
mean(Lib3$TEMP)
mean(Lib4$TEMP)
mean(Lib5$TEMP)
mean(Lib6$TEMP)
mean(Lib7$TEMP)
mean(Lib8$TEMP)
mean(Lib9$TEMP)
mean(Lib10$TEMP)
#Rough idea, there is some kind of laminar flow this going on in fens. The fens trap cold air (but does this minimize variation?) so it is warmer above them. In the transition the temps are even, and then in the upland the ground is warmer. Crazy.


par(mfrow = c(5, 2))
plot('')
hist(Lib2$TEMP, breaks=20, xlim=c(-25, 5))
hist(Lib3$TEMP, breaks=20, xlim=c(-25, 0))
hist(Lib4$TEMP, breaks=20, xlim=c(-30, 20))
hist(Lib5$TEMP, breaks=20, xlim=c(-20, 0))
hist(Lib6$TEMP, breaks=20, xlim=c(-25, 0))
hist(Lib7$TEMP, breaks=20, xlim=c(-20, 30))
hist(Lib8$TEMP, breaks=20, xlim=c(-25, 0))
hist(Lib9$TEMP, breaks=20, xlim=c(-25, 15))
hist(Lib10$TEMP, breaks=20, xlim=c(-25, 0))

length(Lib2$TEMP)
length(Lib3$TEMP)
length(Lib4$TEMP)
length(Lib5$TEMP)
length(Lib6$TEMP)
length(Lib7$TEMP)
length(Lib8$TEMP)
length(Lib9$TEMP)
length(Lib10$TEMP)

#Is a t.test vaild? Maybe if paired?
t.test(Lib5$TEMP, Lib6$TEMP, paired=T)
t.test(Lib3$TEMP - Lib4$TEMP)



#From the R Cookbook, section 14.1
library(zoo)
# x is a vector or data frame, dt is a vector of corresponding dates or datetimes
#tsz <- zoo(x, dt)


dt2 <- Lib2[,c(1:2)]
dt3 <- Lib3[,c(1:2)]
dt4 <- Lib4[,c(1:2)]
dt5 <- Lib5[,c(1:2)]
dt6 <- Lib6[,c(1:2)]
dt7 <- Lib7[,c(1:2)]
dt8 <- Lib8[,c(1:2)]
dt9 <- Lib9[,c(1:2)]
dt10 <- Lib10[,c(1:2)]

date.example <- as.Date(Lib2$DATE, '%d, %m, %Y')

#This converts the date and time of Lib2 to the zoo data structure for time series
tsz2 <- zoo(Lib2[,c(1:2)])
tsz2a <- cbind(tsz2, Lib2$TEMP)

#convert to an xts object
library(xts)
as.xts(tsz2) #That didn't work, bummer dude.
str(tsz2)
is.zoo(tsz2)
is.xts(tsz2)

tsx2 <- xts(Lib2[,c(1:2)]) #well, let's just go with the zoo series
tsx2 <- xts(Lib2, Lib2[,c(1:2)]) #Doesn't work either, moving on

tsz3 <- zoo(Lib3[,c(1:2)])
tsz3a <- cbind(tsz3, Lib3$TEMP)
tsz4 <- zoo(Lib4[,c(1:2)])
tsz4a <- cbind(tsz4, Lib4$TEMP)
tsz5 <- zoo(Lib5[,c(1:2)])
tsz5a <- cbind(tsz5, Lib5$TEMP)
tsz6 <- zoo(Lib6[,c(1:2)])
tsz6a <- cbind(tsz6, Lib6$TEMP)
tsz7 <- zoo(Lib7[,c(1:2)])
tsz7a <- cbind(tsz7, Lib7$TEMP)
tsz8 <- zoo(Lib8[,c(1:2)])
tsz8a <- cbind(tsz8, Lib8$TEMP)
tsz9 <- zoo(Lib9[,c(1:2)])
tsz9a <- cbind(tsz9, Lib9$TEMP)
tsz10 <- zoo(Lib10[,c(1:2)])
tsz10a <- cbind(tsz10, Lib10$TEMP)

coredata(tsz2a)
index(tsz3a)
vignette("zoo")

#Section 14.2 from R Cookbook, plotting time series
plot(tsz2a$Lib2.TEMP)

#Compute successive differences
diff(Lib2$TEMP)

#Computing a moving averages
#ma <- rollmeans(ts,k), where ts=time series, k = number of time periods
is.zoo(tsz10a)
ma <- rollmean(tsz10a, 1773)

#Plotting autocorrelation funcitons, section 14.13 in R Cookbook
acf(Lib2$TEMP) #Wow

#R Cookbook section 14.14, testing a time series for autocorrelation
Box.test(Lib2$TEMP) #Yeah, kinda autocorrellated

#R Cookbook section 14.16, find a lagged correlation between two time series
ccf(Lib3$TEMP, Lib4$TEMP, main='Lib3 vs. Lib4') #Performs the cross correlation function
#What is the correlation at the lag
cor(Lib3$TEMP, Lib4$TEMP)
str(Lib3$TEMP); str(Lib4$TEMP)
Lib3a <- Lib3$TEMP[c(1:1654)]
cor(Lib3a, Lib4$TEMP) #Less correlation with Pole B
ccf(Lib3a, Lib4$TEMP)


ccf(Lib5$TEMP, Lib6$TEMP, main='Pole C: Ground Level vs. 1m Above Ground')#Bazinga
cor(Lib5$TEMP, Lib6$TEMP)#Bazinga
#This is showing that there is extreme autocorrelation between the ground level and 1m height temps on the same pole. No surprise but it is good to see

#R Cookbook section 14.18, fitting ARIMA Model
library(forecast)
auto.arima(Lib2$TEMP) #Bet order was 2,1,2
arima(Lib2$TEMP, order=c(2,1,2))
m <- arima(Lib2$TEMP, order=c(2,1,2))
#Get the confidence intervals
confint(m) #Not all coefficients are significant (do they overlap with 0?)ma1 looks non-sig





#Plots
par(mfrow = c(3, 1))
plot(P1B2$TMP, ylab = "Degrees C", xlab = '13 March - 7 May, 2011', main='Fen Temperature', type = 'l', col = 'blue', ylim = c(-10, 35))
lines(P1T2$TMP, col = 'red')
legend('topleft', legend = c('Ground Level', '1m Height'), col = c('blue', 'red'), lty = c(1, 1))

plot(P1B2$TEMP, ylab = "Degrees C", xlab = '13 March - 7 May, 2011', main = 'Fen Temperature', type = 'l', col = 'blue', ylim = c(-10, 35))
lines(P2T2$TMP, col = 'red')
legend('topleft', legend = c('Ground Level', '1m Height'), col = c('blue', 'red'), lty = c(1, 1))

plot(P5B2$TEMP, ylab = "Degrees C", xlab = '13 March - 7 May, 2011', main = 'Upland Temperature', type = 'l', col = 'blue')
lines(P5T2$TMP, col = 'red')
legend('topleft', legend = c('Ground Level', '1m Height'), col = c('blue', 'red'), lty = c(1, 1))


#####
####Plots
#####

plot(P1B3$TMP, ylab = 'Degrees C', xlab = '7 May - 16 July, 2011',main = 'Fen Temperature', type = 'l', col = 'blue')
lines(P1T3$TMP, col = 'red')
legend('topleft', legend = c('Ground Level', '1m Height'), col = c('blue', 'red'), lty = c(1, 1))

plot(P2B3$TMP, ylab = 'Degrees C', xlab = '7 May - 16 July, 2011', type = 'l', col = 'blue', main = 'Fen Temperature', ylim = c(0, 38))
lines(P2T3$TMP, col='red')
legend('topleft', legend = c('Ground Level', '1m Height'), col = c('blue', 'red'), lty = c(1, 1))

plot(P4B3$TMP, ylab = 'Degrees C', xlab = '7 May - 16 July, 2011', type = 'l', col = 'blue', main = 'Upland Temperature')
lines(P4T3$TMP, col = 'red')
legend('topleft', legend = c('Ground Level', '1m Height'), col = c('blue', 'red'), lty = c(1, 1))

plot(P5B3$TMP, ylab = 'Degrees C', xlab = '7 May - 16 July, 2011', type = 'l', col = 'blue', main = 'Upland Temperature')
lines(P5T3$TMP, col = 'red', type = 'l')
legend('topleft', legend = c('Ground Level', '1m Height'), col = c('blue', 'red'), lty = c(1, 1))

#Showing extremes in fen microclimate


par(mfrow = c(2, 1))
plot(Lib6$TMP, ylab="Degrees C", xlab='Hours', type='l', col='red', ylim=c(-20,0), main='Winter')
lines(Lib5$TMP, col='blue')
legend('topright', legend=c('Ground Level', '1m Height'), col=c('blue', 'red'), lty=c(1,1))


plot(P2T3$TMP, ylab='Degrees C', xlab='Hours', type='l', col='red', main='Spring - Summer')
lines(P2B3$TMP, col='blue')
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('blue', 'red'), lty=c(1,1))
var(P2T3$TMP)
var(P2B3$TMP)

#Let's look at how the ag weather stations compare the the actual data
#Mawn data from the station nearest to JCC, Albion in Calhoun County, MI
mawn1 = read.csv('data/mawn_1.csv', header = TRUE)
str(mawn1)

mawn2 = read.csv('data/mawn_2.csv')
str(mawn2)
head(mawn2) #There was a faulty logger that led to the loss of data for a few days in here

mawn3 = read.csv('data/mawn_3.csv')
str(mawn3)





#File for talk Fen temps pole 2
#jpeg(file='Fen_Temp.jpg')
par(mfrow = c(3, 1))
plot(P2B1$TMP, ylab="Degrees C", xlab='3 January - 13 March, 2011', type='l', lty=1, ylim=c(-25, 15), col='blue', xaxt='n', lwd=2)
lines(P2T1$TMP, type='l', lty=2, col='red', lwd=2)
lines(mawn1$TMP, lty=4, col='black', lwd=2)
#line at DD50 (10C = 50F)
abline(h=10, lwd=2, lty=5)
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('blue', 'red'), lty=c(1,1), lwd=c(2,2))

plot(P2B2$TMP, ylab="Degrees C", xlab='13 March - 7 May, 2011', type='l', lty=1, lwd=2, col='blue', ylim=c(-10,35), xaxt='n')
lines(P2T2$TMP, col='red', lwd=2, lty=2)
lines(mawn2$TMP, col='black', lwd=2, lty=4)
abline(h=10, lwd=2, lty=5)

plot(P2B3$TMP, ylab='Degrees C', xlab='7 May - 16 July, 2011', type='l', col='blue', ylim=c(0, 38), xaxt='n', lwd=2)
lines(P2T3$TMP, col='red', lwd=2, lty=2)
abline(h=10, lwd=2, lty=5)
lines(mawn3$TMP, lwd=2, lty=4)

#dev.off()
#The MNFI DD model is chronically underestimating the DD50 for the MSB, we need better models and we need data from the sites!


#Upland temps, Pole 5
#jpeg(file='Fen_Temp_P5.jpg')
par(mfrow = c(3, 1))
plot(P5B1$TMP, ylab="Degrees C", xlab='3 January  - 13 March, 2011', type='l', col='blue', lwd=2)
lines(P5T1$TMP, type='l', col='red')
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('blue', 'red'), lty=c(1,1), lwd=c(2,1))

plot(P5B2$TMP, ylab="Degrees C", xlab='13 March - 7 May, 2011', type='l', col='blue', lwd=2)
lines(P5T2$TMP, col='red')

plot(P5B3$TMP, ylab='Degrees C', xlab='7 May - 16 July, 2011', type='l', col='blue', lwd=2)
lines(P5T3$TMP, col='red', type='l')
abline(v=1300, lwd=2, lty=5)
text(x=1430, y=5, 'MSB Emergence')

#dev.off()



#Fen temp for pub
par(mfrow = c(3, 1))
plot(P2B1$TMP, ylab="Degrees C", xlab='3 January - 13 March, 2011', type='l', lty=2, ylim=c(-25, 15), col='black', xaxt='n', lwd=2)
lines(P2T1$TMP, type='l', lty=4, col='dark grey', lwd=2)
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('black', 'dark grey'), lty=c(2,4), lwd=c(2,2))

plot(P2B2$TMP, ylab="Degrees C", xlab='13 March - 7 May, 2011', type='l', lty=2, lwd=2, col='black', ylim=c(-10,35), xaxt='n')
lines(P2T2$TMP, col='dark grey', lwd=2, lty=4)
#abline(h=10, lwd=2, lty=5)

plot(P2B3$TMP, ylab='Degrees C', xlab='7 May - 16 July, 2011', type='l', lty=2, col='black', ylim=c(0, 38), xaxt='n', lwd=2)
lines(P2T3$TMP, col='dark grey', lwd=2, lty=4)
abline(v=1300, lwd=2, lty=5)
text(x=1430, y=5, 'MSB Emergence')


var(P2B1$TMP)
var(P2T1$TMP)

var(P2B2$TMP)
var(na.omit(P2T2$TMP))

var(P2B3$TMP)
var(P2T3$TMP)

t.test(var(P2B1$TMP) - var(P2T1$TMP))

t.test(P2B1$TMP - P2T1$TMP)

t.test(P2B2$TMP - na.omit(P2T2$TEMP))

t.test(P2B3$TMP - P2T3$TMP)



#Check out rollmean in the zoo package
library(zoo)
help(rollmean)


x.Date <- as.Date(paste(2004, rep(1:4, 4:1), sample(1:28, 10), sep = "-"))
x <- zoo(rnorm(12), x.Date)
rollmean(x, 3)


y = as.Date(P5T3$DATE, sep='-')
w = zoo(P5T3$TEMP, y)
r = rollmean(w, 3)
summary(r)
hist(P5T3$TEMP)


#image for UNO talk
pdf(file='UNO_temp.pdf')
par(mfrow=c(3,1))
plot(P2B1$TMP, ylab="Degrees C", xlab='3 January - 13 March, 2011', type='l', lty=2, ylim=c(-25, 15), col='black', xaxt='n', lwd=3)
lines(P2T1$TMP, type='l', lty=4, col='red', lwd=2)
legend('topleft', legend=c('Ground Level', '1m Height'), col=c('black', 'red'), lty=c(2,4), lwd=c(3,2), bty='n')

plot(P2B2$TMP, ylab="Degrees C", xlab='13 March - 7 May, 2011', type='l', lty=2, lwd=3, col='black', ylim=c(-10,35), xaxt='n')
lines(P2T2$TMP, col='red', lwd=2, lty=4)
#abline(h=10, lwd=2, lty=5)

plot(P2B3$TMP, ylab='Degrees C', xlab='7 May - 16 July, 2011', type='l', lty=2, col='black', ylim=c(0, 38), xaxt='n', lwd=3)
lines(P2T3$TMP, col='red', lwd=2, lty=4)
dev.off()



#####
##### Figure 3 - color
#####
#for publication in JLepSoc
quartz(width=8, height=8)
#pdf(file='Temp_fig_diss.pdf', bg='white')

par(mar = c(1, 5, 0, 0))

par(fig = c(0,1,0.65,1), new = TRUE)
par(mar = c(3, 6, 1, 1))
plot.new()
plot(P2B1$TMP, ylab = '', xlab = '', type = 'l', lty = 2, ylim = c(-25, 15), col = 'black', xaxt = 'n', lwd = 3, las = 1, bty = 'l', cex.axis = 1.5)
mtext('3 January - 13 March, 2011', side = 1, line = 0.5, adj = 0.5, cex = 1.5)
lines(P2T1$TMP, type = 'l', lty = 4, col = 'red', lwd = 2)
legend(x = 0, y = 19, legend = c('1m Height', 'Ground Level'), col = c('red', 'black'), lty = c(4, 2), lwd = c(3, 2), bty = 'n')

par(fig = c(0,1, 0.35, 0.70), new = TRUE)
par(mar = c(3, 6, 1, 1))
plot.new()
plot(P2B2$TMP, ylab = (expression(paste('Temperature ', degree, 'C)'))), xlab = '', type = 'l', lty = 2, lwd = 3, col = 'black', ylim = c(-10, 35), xaxt = 'n', bty = 'l', las = 1, cex.axis = 1.5, cex.lab = 1.5)
lines(P2T2$TMP, col = 'red', lwd = 2, lty = 4)
mtext('13 March - 7 May, 2011', side = 1, line = 0.5, adj = 0.5, cex = 1.5)

par(fig = c(0, 1, 0, 0.35), new = TRUE)
par(mar = c(3, 6, 1, 1))
plot.new()
plot(P2B3$TMP, ylab = '', xlab = '', type = 'l', lty = 2, col = 'black', ylim = c(0, 38), xaxt = 'n', lwd = 3, las = 1, bty = 'l', cex.axis = 1.5)
lines(P2T3$TMP, col = 'red', lwd = 2, lty = 4)
mtext('7 May - 16 July, 2011', side = 1, line = 0.5, adj = 0.5, cex = 1.5)
#mtext((expression(paste('Temperature (', degree, 'C)'))), side=2, cex=1.5, adj=54, line=3 )
#dev.off()

#(expression(paste('Temperature ', degree, 'C)')))



#####
##### Figure 3 - B&W
#####

#black and white for NH paper J Lep Soc
#quartz(width=2200, height=2200, units='px')
#pdf(file='Temp_fig_diss.pdf', bg='white')
#tiff(file='Hamm_Fig3.tiff', width=2200, height=2200, units='px', res=350, bg='white')
par(mar=c(1,5,0,0))

par(fig=c(0,1,0.65,1), new=T)
par(mar=c(3,6,1,1))
plot.new()
plot(P2T1$TMP, type='l', lty=1, col='dark grey', lwd=3, ylim=c(-25, 15), xaxt='n', las=1, bty='l', cex.axis=1.5, ylab='')
mtext('3 January - 13 March, 2011', side=1, line=0.5, adj=0.5, cex=1.5)
lines(P2B1$TMP, ylab='', xlab='', type='l', lty=2, col='black', lwd=2)
legend(x=0, y=19, legend=c('1m Height', 'Ground Level'), col=c('dark grey', 'black'), lty=c(2, 4), lwd=c(3,2), bty='n')

par(fig=c(0,1,0.35, 0.70), new=T)
par(mar=c(3,6,1,1))
plot.new()
plot(P2T2$TMP, ylab=(expression(paste('Temperature ', degree, 'C'))), xlab='', type='l', lty=1, lwd=3, col='dark grey', ylim=c(-10,35), xaxt='n', bty='l', las=1, cex.axis=1.5, cex.lab=1.5)
lines(P2B2$TMP, col='black', lwd=2, lty=2)
mtext('13 March - 7 May, 2011', side=1, line=0.5, adj=0.5, cex=1.5)

par(fig=c(0,1,0,0.35), new=T)
par(mar=c(3,6,1,1))
plot.new()
plot(P2T3$TMP, , ylab='', xlab='', type='l', lty=1, col='dark grey', ylim=c(0, 38), xaxt='n', lwd=3, las=1, bty='l', cex.axis=1.5)
lines(P2B3$TMP, col='black', lwd=2, lty=2)
mtext('7 May - 16 July, 2011', side=1, line=0.5, adj=0.5, cex=1.5)
#mtext((expression(paste('Temperature (', degree, 'C)'))), side=2, cex=1.5, adj=54, line=3 )
#dev.off()






#Combine all temps from one logger
tail(P2B1)
head(P2B2)
tail(P2B2)
head(P2B3)


P2B <- rbind(P2B1, P2B2, P2B3)
P2T <- rbind(P2T1, P2T2, P2T3)
plot(P2B$TMP, lty=2, lwd=2, col='red', type='l', ylab='Degrees C', xlab='3 Jan - 16 July 2011')
abline(h=10, lwd=2, lty=5)
2000/24

#From R in a nutshell
acf(P5T3) #autocorrelation function
pacf(P5T3) #partial autocorrelations
ccf(P5B3, P5T3) #cross-correlation function for two time series

P.ar <-ar(P5T3, aic=T)
ts.plot(P5T3$TMP, ylab='Temperature (C)', xlab='Time', lwd=2, col='red')
arima(P5T3$TMP) #autoregressive integrated moving average
ts.plot(P5T3 , predict(P.ar, n.ahead=24)$pred, lty=c(1:2))#Needs to be an array
