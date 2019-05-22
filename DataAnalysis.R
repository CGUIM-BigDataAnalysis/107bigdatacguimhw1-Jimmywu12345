library(jsonlite)
library(dplyr)          



X106edu2$大職業別<-gsub("_","、",X106edu2$大職業別)

merge103106<-merge(X103edu1,X106edu2,by="大職業別" ,all=T)

View(a103b)

merge103106$riserate<-merge103106$`大學-薪資.y`/merge103106$`大學-薪資.x`



str(merge103106$`大學-薪資.x`)


1.





high106103<-head(merge103106[order(merge103106$riserate,decreasing = T),],10)

filter(merge103106,merge103106$riserate>1.05)


filter1<- filter(merge103106,merge103106$riserate>1.05)


filter1




job1<-strsplit(filter1$大職業別,"[-]")


strjob <- c()

for (i in 1:length(job1)) {
  strjob[i]<- job1[[i]][1]
  
}





table(strjob)









2.

a106<-select(X106edu2,大職業別,`大學-女/男`)

a106a<-filter(a106,`大學-女/男`<100)

a105<-select(X105edu1,大職業別,`大學-女/男`)

a105a<-filter(a105,`大學-女/男`<100)

a104<-select(X104edu1,大職業別,`大學-女/男`)
a104a<-filter(a104,`大學-女/男`<100)

a103<-select(X103edu1,大職業別,`大學-女/男`)
a103a<-filter(a103,`大學-女/男`<100)


head(a106a[order(a106a$`大學-女/男`,decreasing = T),],10)

head(a105a[order(a105a$`大學-女/男`,decreasing = T),],10)










a106<-select(X106edu2,大職業別,`大學-女/男`)

a106b<-filter(a106,`大學-女/男`>100)

a105<-select(X105edu1,大職業別,`大學-女/男`)

a105b<-filter(a105,`大學-女/男`>100)

a104<-select(X104edu1,大職業別,`大學-女/男`)
a104b<-filter(a104,`大學-女/男`>100)

a103<-select(X103edu1,大職業別,`大學-女/男`)
a103b<-filter(a103,`大學-女/男`>100)


head(a106b[order(a106b$`大學-女/男`),],10)

head(a105a[order(a105a$`大學-女/男`,decreasing = T),],10)




a103b<-filter(a103,`大學-女/男`>100)
knitr::kable(head(a103b[order(a103b$`大學-女/男`,),],10))

a104b<-filter(a104,`大學-女/男`>100)
knitr::kable(head(a104b[order(a104b$`大學-女/男`,),],10))


a105b<-filter(a105,`大學-女/男`>100)
knitr::kable(head(a105b[order(a105b$`大學-女/男`),],10))


3.
X106edu2$薪資差異<-X106edu2$`研究所及以上-薪資`/X106edu2$`大學-薪資`




head(X106edu2[order(X106edu2$薪資差異,decreasing = T),],10)

aaa<-X106edu2$薪資差異

4.

X106edu2[80,c(1,2,11,13)]

X106edu2[81,c(1,2,11,13)]


X106edu2[80,13]-X106edu2[80,11]


X106edu2[81,13]-X106edu2[81,11]



