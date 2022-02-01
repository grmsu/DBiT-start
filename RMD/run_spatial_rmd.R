library(rmdformats)
setwd("~/project/RStudioScripts")
rmarkdown::render("Spatial_Report-Light2.Rmd",
  output_file = "S0882 Report",
  output_dir = "/gpfs/ysm/home/gs592/project/08_Spatial_HCDG_12272021/05.report/"
)
#File Name
#Output directory