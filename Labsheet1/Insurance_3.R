lambda = 500

n<-1000                 # for 100 trials
y <- 0                 # intial payout
for (i in 1:n){
  x<-rexp(1,1/lambda)
  y[i] <- max(0,x-100)                # payout if amount greater than $100
  
}

payout <- sum(y)
expectation <- payout/n
print("Expectation is")
expectation
sd(y)