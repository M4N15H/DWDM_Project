final <- as.data.frame(matrix(ncol = 1, nrow = dim(accounts)[1]))
for(i in 1:dim(accounts)[1]){
  count=0
  if (accounts[i,26]>0){
    count=count+1 }
  if(accounts[i,27]>0){
    count=count+1 }
  if(accounts[i,28]>0){
    count=count+1 }
  if(accounts[i,29]>0){
    count=count+1 }
  if(accounts[i,30]>0){
    count=count+1 }
  if(accounts[i,31]>0){
    count=count+1 }
  if(accounts[i,32]>0){
    count=count+1 }
  if(count>1) 
    final[i,] <- rbind( accounts[i,2])
}
  

