source('C:\\Users\\gvheisler\\Desktop\\data-mining\\data-mining\\decision-tree\\functions.r')

ds <- read.csv('C:\\Users\\gvheisler\\Desktop\\data-mining\\data-mining\\decision-tree\\insetos00.csv')

ds <- ds[,-1]

especies <- vector('numeric')
for (i in 1:nrow(ds)) {
  print('teste')
  if(ds$Classe.do.inseto[i]=='Grasshopper'){
    especies <- c(especies, 1)
  }
  else{
    especies <- c(especies, 2)
  }
}

# 1 -> Grasshopper
# 2 -> Katydid
ds <- cbind(ds, especies)
ds <- ds[,-3]

entropia <- E(19, 2)
print(entropia)

entropia <- E(3, 11)
print(entropia)


