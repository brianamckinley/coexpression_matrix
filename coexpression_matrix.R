
library(Hmisc);
setwd("/Users/...");
rawData = read.csv("matrix_input.csv");
mrawData <- as.matrix(rawData)
trawData <- t(rawData)
ncol(trawData)
nrow(trawData)
res2<-rcorr(as.matrix(trawData[2:106,2:22773]))
flattenCorrMatrix(res2$r, res2$P) 
write.csv(res2, "3_matrix_output.csv")