#!/usr/bin/Rscript

args <- commandArgs(trailingOnly=TRUE)

id_count <- read.csv(args[1], header = TRUE)
nrep <- strtoi(args[2])
table_out <- paste("../output/tex_tables/", args[3], ".tex", sep = "")
image_out <- paste("../output/images/", args[3], ".png", sep = "")

id_count <- subset(id_count, min_rep == nrep)
print(id_count)

library(tidyverse)
library(dplyr)
colours <- c( "#8Db599"
						 ,"#E32636"
						 ,"#007FFE"
				     ,"#E52B50"
				     ,"#A99B50"
						 ,"#FFBF00"
					   ,"#FF033E"
					   ,"#9966CC"
					   ,"#A4C639"
					   ,"#E32635"
					   ,"#CD9575"
					   ,"#915C83"
					   ,"#FE7F6E"
					   ,"#008000"
					   ,"#8DB600"
					   ,"#4B5321"
					   ,"#00FFFF"
					   ,"#7FFFD4"
					   ,"#4B5320"
					   ,"#3B444B"
					   ,"#E9D66B"
					   ,"#A52A21"
					   ,"#87A96B"
					   ,"#FF9966"
					   ,"#A52A2A"
					   ,"#FDEE00"
					   ,"#6E7F80"
					   ,"#FF2052"
					   ,"#007FFF"
					   ,"#2C1610"
					   ,"#89CFF0"
					   ,"#A1CAF1"
					   ,"#F4C2C2"
					   ,"#21ABCD"
					   ,"#008002"
					   ,"#FFE136"
					   ,"#848482"
					   ,"#98781B"
					   ,"#BCD4E6"
					   ,"#9F8170"
					   ,"#FF2053"
					   ,"#008200"
					   ,"#3D2B1F"
					   ,"#FE6F5E"
					   ,"#000000"
						 ,"#0014A8"
						 ,"#2C1608"
					   ,"#FE6F6E"
					   ,"#318CE7"
					   ,"#FFE135"
					   ,"#848483"
					   ,"#98781B"
					   ,"#FE7F6E"
					   ,"#000011"
						 ,"#0032A8"
						 ,"#2C1608"
					   ,"#FE6F6E"
					   ,"#318CE8"
					   ,"#FFE136"
					   ,"#848484"
					   ,"#98782B"
					   ,"#318CE8"
					   ,"#FFE137")


p <- ggplot(data=id_count, aes(x=conditions, y=count, fill=conditions)) +
	   geom_bar(stat="identity") +
		 theme_minimal() +
		 coord_flip() +
		 geom_text(aes(label=count), hjust = -0.1, size = 2.9) +
		 scale_fill_manual(values=colours) +
		 theme(legend.position="none")
ggsave(plot = p, filename = image_out )
sink(table_out)
cat("\\begin{tabular}{|c|c|}\n")
cat("\\hline\n")
cat("Condition & Total SNP\\\\\n")
cat("\\hline\n")
for (i in (1:62)){
	cat(id_count[[1]][i])
	cat(" & ")
	cat(id_count[[3]][i])
	cat("\\\\\n\\hline\n")
}
cat("\\end{tabular}\n")
sink()
