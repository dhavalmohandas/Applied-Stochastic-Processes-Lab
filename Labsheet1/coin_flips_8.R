# ans ~  0.1644

n = 10000
x <- vector(length = n)

for (i in 1:n)
{
  c = 0
  s = ""
  while(grepl("HTHTH",s)!=TRUE)
  {
    s = paste(s,sample(c("H","T"),1,replace = F, c(2/3,1/3)),sep="")
    c = c+1
  }
  x[i] = c
}

print("Average number of flips needed is")
mean(x)
