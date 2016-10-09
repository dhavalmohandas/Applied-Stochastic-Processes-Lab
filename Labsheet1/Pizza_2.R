n<-100000
NoOfPeproni  = vector(length = n)
p<-0.25
for (i in 1:n)
{
  flag<-0
  NoOfPeproni[i] <- 0
  while(flag==0)
    {
      x<-sample(c(1,2,3,4),1) #1-pepper.2-peproni,3-pineapple
      if(x==3)
        {
          flag = 1
        }
      else
        {
          if(x==2)
          {
            NoOfPeproni[i]<- NoOfPeproni[i]+1
          }
        }
    }
}

p = sum(NoOfPeproni)/n
p