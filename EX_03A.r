sdata <- data.frame(sname=c("Raja","somu","Roja"),
                    srollno=c(101,103,102),
                    sage=c(19,20,18),
                    ssex=c("male","male","female"),
                    sbranch=c("CSE","MECH","EEE"),
                    m1=c(90,79,88),
                    m2=c(95,85,90),
                    m3=c(85,25,85),
                    m4=c(70,40,60),
                    m5=c(67,67,89))

sdata$status <- ifelse(apply(sdata[,6:10] > 50,1,all),"pass","fail")

sdata$total <- rowSums(sdata[6:10])
sdata



#write.csv(sdata, "/home/ashikjenly/VOLUME_1/college/R_for_analysis/datas/student.csv", row.names = FALSE)
