count <- read.csv("countsnp.csv")
tot <- c(0,0,0,0)
colors <- c("darkorange", "firebrick", "forestgreen", "deepskyblue")
for (i in 2:25){
	filename <- paste("barplots/", colnames(count[i]), ".png", sep = "", collapse = "")
	png(file=filename)
	barplot(height=count[[i]], col=colors, border=FALSE)
	legend("topright", legend = count[[1]], fill = colors, bty="n")
	tot <- tot + count[[i]]
	dev.off()
}
png(file="barplots/tot.png")
barplot(height=tot, col=colors, border=FALSE)
legend("topright", legend = count[[1]], fill = colors, bty="n")
dev.off()
