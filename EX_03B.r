sdata <- read.table(file.choose(),sep = ",",header = TRUE)

sdata$status <- ifelse(apply(sdata[,6:10] > 50,1,all),"pass","fail")
sdata$total <- rowSums(sdata[6:10])
sdata$ptg <- sdata$total / 5
sdata
