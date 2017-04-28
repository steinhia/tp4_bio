#Consid́erons une urne contenant initialement
#une boule blanche et une boule noire. La boule blanche est de poids ρ, et la
#boule noire est de poids 1.
#On tire une boule au hasard dans l’urne avec une probabilit́e proportionnelle
#au poids de la boule. Si la boule est blanche, on arrete le processus de tirage.

#Sinon, on replace 2 boules noires dans l’urne (3 boules en tout) et on effectue
#un nouveau tirage. Dans ce nouveau tirage, la probabilit ́e d’obtenir la boule
#blanche diminue. Si la boule est blanche, on arrˆete le processus.
#Apres n tirages, l’urne contient n + 1 boules, toutes noires sauf une. Si la
#boule tir ́ee est noire, on la remplace par 2 boules noires dans l’urne et on
#effectue un nouveau tirage.

rho=0.8
n=293;
res=vector("numeric",n);


for(j in 1:n){
  i=1
#proba de tirer une boule blanche
nb_n=1;
p=rho/(rho+1)
simu=rbinom(1,1,p)

#si la boule est noire, on recommence
while (simu==0 && i<=n) {
  nb_n=nb_n+1
  p=rho/(rho+nb_n)
  simu=rbinom(1,1,p)
  i=i+1
}
res[j]=i
}

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

