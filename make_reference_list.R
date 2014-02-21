#setwd("/Users/ryanjwtx/Desktop/COBS-ESA_metagenome")
ssid.notes<-read.delim("ssid_annotations.txt",header=FALSE,check.names=FALSE)

#can explore dataset easily with list(unique(...))
list(unique(ssid.notes$V4))
list(unique(ssid.notes$V5))

contigs<-as.matrix(unique(subset(ssid.notes, V4=="Aminosugars")$V1))

head(contigs)

write.table(contigs, "/Users/ryanjwtx/Desktop/reference_list_aminosugars.txt",quote=FALSE,row.names=FALSE,col.names=FALSE)