#ans = 3.315
n = 1000
A <- matrix(c(0,1,0,1/2,0,1/2,1/3,1/3,1/3),nrow=3,ncol=3,byrow=TRUE)
x <- vector(length = n)

for(i in 1:n)
{
  c = 0
  sta = 1
  while(TRUE)
  {
    sta = sample(c(1,2,3), 1, replace = F, A[sta,])
    c=c+1
    if(sta==1)
    {
      break
    }
  }
  
  x[i] = c
}

mean(x)  
