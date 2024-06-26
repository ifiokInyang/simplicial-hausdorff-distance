#Script to compute SCD between two VR complexes on the same point cloud
#at different radii
#100 points sampled from [0,1]*[0,1]

x<-runif(100)
y<-runif(100)
data<-cbind(x,y)
plot(data, pch=19, col='red', asp=1, cex=3.0)

par(pty="s") # force the plotting region to be square

eucl.dist <- function(u,v){
  sqrt(sum((u-v)^2))}

#Plot Vietoris-Rips complexes:
filt1<-0.2
filt2<-0.5
num.pts <- dim(data)[1]

for(i in 1:num.pts){
  for(j in 1:num.pts){
    if (eucl.dist(data[i,],data[j,]) <filt1)
{
      lines(rbind(data[i,],data[j,]))
    }
  }
}

#This is testing a git update
print(1+1)
