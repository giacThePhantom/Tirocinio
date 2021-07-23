#!/usr/bin/R -f
allelic_imbalance <- read.csv("./allelic_imbalance_count_post_dedup.csv", header = TRUE)
union <- read.csv("./union_post_recalibration.csv", header = TRUE)
intersection <- read.csv("./intersection_post_recalibration.csv", header = TRUE)
suppressMessages(library(dplyr))
suppressMessages(library(tidyverse))
# get data for precision
genotype <- c("scr", "shDHX30", "shPCBP2")
mol <- c("NUTLIN", "DMSO")
rep <- c("rep1", "rep2", "rep3", "rep4")
frac <- c("TOT", "POL")
condition_filter <- c()
for( gen in genotype){
	for(m in mol){
		for(f in frac){
			for(r in rep){
				condition_filter <- append(condition_filter, paste(gen, m, f, r, sep = "_"))
			}
		}
	}
}

precision <- c("0.1.0.9.10", "0.1.0.9.20", "0.2.0.8.10", "0.2.0.8.20")
precision_name <- c("$0.1\\le af \\le 0.9$, $cov = 10$", "$0.1\\le af \\le 0.9$, $cov = 20$","$0.2\\le af \\le 0.8$, $cov = 10$","$0.2\\le af \\le 0.8$, $cov = 20$")

colours <- c( "#8Db599"
						 ,"#E32636"
						 ,"#007FFE"
				     ,"#E52B50"
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
					   ,"#FFE135"
					   ,"#848482"
					   ,"#98777B"
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
					   ,"#318CE7")




for (i_prec in (1:4)){
	prec_filtered <- allelic_imbalance %>% filter(grepl(precision[i_prec], condition))
	union_filtered <- union %>% filter(grepl(precision[i_prec], chr))
	union_tot <- sum(union_filtered[[2]])
	intersection_filtered <- intersection %>% filter(grepl(precision[i_prec], chr))
	intersection_tot <- sum(intersection_filtered[[2]])

	names <- c()
	tots <- c()
	for(con in condition_filter){
		single_filtered <- prec_filtered %>% filter(grepl(con, condition))
		tot <- sum(single_filtered[[2]])
		names <- append(names, con)
		tots <- append(tots, tot)
	}
	temp <- data.frame(condition=names, snp=tots)
	p <- ggplot(data=temp, aes(x=condition, y=snp, fill=condition)) +
		   geom_bar(stat="identity") +
			 theme_minimal() +
			 coord_flip() +
			 geom_text(aes(label=snp), hjust = -0.1, size = 2.9) +
			 scale_fill_manual(values=colours) +
			 theme(legend.position="none")
	ggsave(plot=p, filename=paste("barplots_post_recalibration/all_condition.", precision[i_prec], ".png", sep = ""))
	print(precision_name[i_prec])
	print("Intersection")
	print(intersection_tot)
	print("Union")
	print(union_tot)
	sink(paste("tables_post_recalibration/all_condition.", precision[i_prec], ".tex", sep = ""))
	cat("\\begin{table}[H]\n")
	cat("\\small\n")
	cat("\\centering")
	cat("\\begin{tabular}{|c|c|c|c|}\n")
	cat("\\hline\n")
	cat("Condition & Total SNP & $\\frac{Total\\ SNP}{Union}\\%$ & $\\frac{Intersection}{Total\\ SNP}\\%$\\\\\n")
	cat("\\hline\n")
	for (i in (1:48)){
		cat(
					paste(
								paste(str_replace_all(names[i], "_", "\\\\_"),
											tots[i],
											paste("$",
														signif(tots[i]*100/union_tot, 4),
														"\\%$",
														sep=""),
											paste("$",
														signif(intersection_tot*100/tots[i], 4),
														"\\%$",
														sep = ""),
											sep=" & "),
						 "\\\\\n",
						 sep = "")
		)
		cat("\\hline\n")
	}
	cat("\\end{tabular}\n")
	cat(paste("\\caption{SNP count with constraints:", precision_name[i_prec], "}\n"))
	cat("\\end{table}\n")
	sink()
}
