#!/usr/bin/Rscript

args <- commandArgs(trailingOnly=TRUE)
image_out <- paste(args[1], ".png", sep="")
corr_data <- read.csv(args[4], header=TRUE)

library(tidyverse)
library(ggExtra)

graph <- ggplot(corr_data, aes(x=first, y=second) ) +
          stat_density_2d(aes(fill = ..density..), geom = "raster", contour = FALSE) +
         scale_fill_distiller(palette=1, direction=300) +
         scale_x_continuous(expand = c(0, 0), limits = c(0,1.1)) +
         scale_y_continuous(expand = c(0, 0), limits = c(0,1.1)) +
         theme(legend.position='none') +
				 geom_point(color = "green", fill = "#69b3a2", size = 0.5) +
				 labs(x=args[2], y = args[3])

ggsave(plot=ggMarginal(graph, type = "histogram") , filename=image_out)
