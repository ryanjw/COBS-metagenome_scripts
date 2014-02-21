import sys
import csv

dataset=open(sys.argv[1],  'rU')
#ref_contigs_raw=open(sys.argv[2],'r')
ref_contigs=open(sys.argv[2], 'r')

id = []
for contig in ref_contigs:
	id.append(contig.strip())
#print id 

dict={}
data=csv.reader(dataset, delimiter='\t')
for n, line in enumerate(data):
	if n>0:
#		print line
		data_contig = line[0]
#		print data_contig
		dict[data_contig]=line
#		print dict
		for item in id:
			if item == data_contig:
	        		print dict[item]
