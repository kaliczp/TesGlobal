## Beolvasás unz connecitonnal
zipgrid <- unz("sr_grid_20012023.txt.zip", "sr_grid_20012023.txt")
alldata <- read.fwf(zipgrid, widths = rep(8, 1234), skip = 1, fill = TRUE)
TesGrid <- alldata[,c(1,312)]
