A <- matrix(c(0.1, 0.2, 0.4, 0.3, 0.4, 0, 0.4, 0.2, 0.3, 0.3, 0, 0.4, 0.2, 0.1, 0.4, 0.3),nrow =4,ncol=4,byrow = TRUE)
n = 1000
x = c(1:n)

for(i in 1:n)
{
  ex = 1
  
  for(j in 1:100)
  {
    ex = sample(c(1:4), 1, replace=F, A[ex,])
  }
  
  if(ex==2)
  {
    x[i] = 1
  }
  else
  {
    x[i] = 0
  }
  
}

pr = mean(x)
pr
