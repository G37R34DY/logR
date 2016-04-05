## Various functions to include

# Coefficient of Variation (CV)
#  Definition: Standard Deviation / Mean = σ/µ
#  Provides a relative measure of volatility or uncertainty
#  CV is non-negative and higher CV indicates higher volatility

# CV returns coefficient of variation, digits default 2

CV <- function(mean, sd, CVdigits = 2){
  round(sd/mean, digits = CVdigits)
  
}



# plots a nprmal function with specified mean and sd


plot.normal <- function(mean, sd) {
  
  xseq<-seq((mean - 3*sd),(mean + 3*sd),1)
  densities<-dnorm(xseq, mean,sd)
  plot(xseq, densities, col="darkgreen",xlab="", ylab="Density", type="l",lwd=2, cex=2, main="PDF of Standard Normal", cex.axis=.8)
  
  
}
  

values<- read.table("days.txt", header = TRUE)

for(i in seq(1, 5)) values[i,]$error <- sum(values[i,]$Forecast, values[i,]$Actual)


