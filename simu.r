  #valeur des paramètres
  mu=0.8;
  lambda=0.8/mu;
  n=293;
   
  pn=vector("numeric",precision_tirage);
  fn=vector("numeric",n);
  
  #on simule t selon une loi géomérique de paramètre mu
  t=rexp(n,mu);
  p=exp(-lambda*t);
  
  #on simule pn selon une loi géométrique
  simu=rgeom(n,p)+1
  #on trie
res=vector("numeric",13);
for (i in 1:13){
  res[i]=0;
}
for(i in 1:n){
  if (simu[i]<9){
    res[simu[i]]=res[simu[i]]+1;
  }
else if(simu[i]<12){
  res[9]=res[9]+1;
}
else if(simu[i]<15){
  res[10]=res[10]+1;
}
else if(simu[i]<21){
  res[11]=res[11]+1;
}
else if(simu[i]<35){
  res[12]=res[12]+1;
}
else {
  res[13]=res[13]+1;
}
}
