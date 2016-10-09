M <- matrix(c(1, 0, 0, 0, 0, 0, .06, .03, .91, 0, 0, 0, .06, 0, .03, .91, 0, 0, .04, 0, 0, .03, .93, 0, .04, 0, 0, 0, .03, .93, 0, 0, 0, 0, 0,1), nrow=6, ncol=6, byrow=TRUE)

n = 10000
x = vector(length = n)
for(i in 1:n)
{
  yr = 2
  while(TRUE)
  {
    yr = sample(c(1:6),1,replace = F,M[yr,])
    
    if(yr==1)
    {
      f = 0
      break
    }
    
    if(yr==6)
    {
      f = 1
      break
    }
    
  }
  x[i] = f
}

prob = sum(x)/n