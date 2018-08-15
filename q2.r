u_count11=0

for(i in 1:dim(accounts)[1]){
  count=0
  if (accounts[i,12]>0){
    count=count+1 }
  if(accounts[i,13]>0){
    count=count+1 }
  if(accounts[i,14]>0){
    count=count+1 }
  if(accounts[i,15]>0){
    count=count+1 }
  if(accounts[i,16]>0){
    count=count+1 }
  if(accounts[i,17]>0){
    count=count+1 }
  if(accounts[i,18]>0){
    count=count+1 }
  if(accounts[i,19]>0){
    count=count+1 }
  if(accounts[i,20]>0){
    count=count+1 }
  if(accounts[i,21]>0){
    count=count+1 }
  if(accounts[i,22]>0){
    count=count+1 }
  
  if(count==11) 
    u_count11=u_count11+1
    
}