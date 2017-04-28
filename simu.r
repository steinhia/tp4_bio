  #valeur des paramètres
  mu=0.8;
  lambda=mu/0.8;
  n=293;
   
  pn=vector("numeric",n);
  fn=vector("numeric",n);
  
  #on simule t selon une loi géomérique de paramètre mu
  t=rexp(n,mu);
  p=exp(-lambda*t);
  
  #on simule fn selon une loi géométrique
  fn=rgeom(n,p)+1
  #on trie
res=vector("numeric",13);
for (i in 1:13){
  res[i]=0;
}
for(i in 1:n){
  if (fn[i]<9){
    res[fn[i]]=res[fn[i]]+1;
  }
else if(fn[i]<12){
  res[9]=res[9]+1;
}
else if(fn[i]<15){
  res[10]=res[10]+1;
}
else if(fn[i]<21){
  res[11]=res[11]+1;
}
else if(fn[i]<35){
  res[12]=res[12]+1;
}
else {
  res[13]=res[13]+1;
}
}

m=mean(fn)
