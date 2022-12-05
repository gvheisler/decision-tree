#source('C:\\Users\\gvheisler\\Desktop\\data-mining\\data-mining\\decision-tree\\functions.r')
source(url('https://raw.githubusercontent.com/gvheisler/decision-tree/main/functions.r'))

#ds <- read.csv('C:\\Users\\gvheisler\\Desktop\\data-mining\\data-mining\\decision-tree\\insetos00.csv')
ds <- read.csv(url('https://raw.githubusercontent.com/gvheisler/decision-tree/main/Insetos00.csv'))

ds <- ds[,-1]

especies <- vector('numeric')
for (i in 1:nrow(ds)) {
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

entropia <- Entropia(19, 2)
print(entropia)

entropia <- Entropia(3, 11)
print(entropia)


