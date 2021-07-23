#!/usr/bin/Rscript
args <- commandArgs(trailingOnly=TRUE)

cond <- args[1]
cost <- args[2]
image_out <- paste(args[3], ".png", sep = "")
table_out <- paste(args[4], ".tex", sep = "")
pre_post <- args[5]


allelic_imbalance <- read.csv(paste("data/allelic_imbalance_count_", pre_post, "_dedup.csv", sep = ""), header=TRUE)
union <- read.csv(paste("data/union_intersection/", pre_post, "-recalibration/", cond, ".union.csv", sep = ""), header = TRUE)
intersection <- read.csv(paste("data/union_intersection/", pre_post, "-recalibration/", cond, ".intersection.csv", sep = ""), header = TRUE)

suppressMessages(library(dplyr))
suppressMessages(library(tidyverse))
suppressMessages(library(stringr))

colours <- c("#9d0006", "#79740e", "#d79921", "#076678", "#8f3f71", "#427b58")


condition_imbalance <- allelic_imbalance %>% filter(grepl(paste(cond, cost, sep=".*"), condition))
union_condition <- union %>% filter(grepl(cost, chr))
intersection_condition <- intersection %>% filter(grepl(cost, chr))
union_tot <- sum(union_condition[[2]])
intersection_tot <- sum(intersection_condition[[2]])
names <- c()
tots <- c()
for(rep in (1:4)){
	rep_imbalance <- condition_imbalance %>% filter(grepl(paste("rep", rep, sep=""), condition))
	names <- append(names, paste("Rep", rep))
	tots <- append(tots, sum(rep_imbalance[[2]]))
}
cat("Considering the four replicates of condition ")
cat(str_replace_all(cond, "_", " "))
cat(" $")
cat(union_tot)
cat("$ of unique SNPs, $")
cat(intersection_tot)
cat("$ are shared across all four of them.\n")

temp <- data.frame(condition=names, snp=tots)
p <- ggplot(data=temp, aes(x=condition, y=snp, fill=condition)) +
	   geom_bar(stat="identity") +
		 theme_minimal() +
		 coord_flip() +
		 geom_text(aes(label=snp), hjust = -0.1, size = 2.9) +
		 scale_fill_manual(values=colours) +
		 theme(legend.position="none")
ggsave(plot=p, filename=image_out)

sink(table_out)
cat("\\begin{tabular}{|c|c|c|c|}\n")
cat("\\hline\n")
cat("Replicate & Total SNP & $\\frac{Total\\ SNP}{Union}\\%$ & $\\frac{Intersection}{Total\\ SNP}\\%$\\\\\n")
cat("\\hline\n")
for (i in (1:4)){
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
sink()
