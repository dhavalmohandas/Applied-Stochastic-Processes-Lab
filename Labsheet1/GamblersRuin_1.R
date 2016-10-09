n = 1000       # Simulating for 1000 trials
res = vector(length=n)

for(i in 1:n)
{
  k = 7 # gambler starts with $7
  
  while(TRUE)
  {
    s = sample(c(1,-1),1)
    k = k + s
    if(k==10)
    {
      r = 0
      break
    }
    if(k==0)
    {
      r = 1
      break
    }
  }
  
  res[i] = r
  
}

#probability that he loses
p = 1-sum(res)/n
p