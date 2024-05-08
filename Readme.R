## Beolvasás unz connecitonnal
zipgrid <- unz("sr_grid_20012023.txt.zip", "sr_grid_20012023.txt")
fejlec <- read.fwf(zipgrid, widths = rep(8, 1234), n = 1)
alldata <- read.fwf(zipgrid, widths = rep(8, 1234), skip = 1)
fejlec[1,1] <- "Date"
names(alldata) <- fejlec
TesGrid <- alldata[,c(1,312)]
GridDate <- seq.Date(from = as.Date("2001-01-01"), to = as.Date("2023-12-31"), by = "days")
plot(GridDate, TesGrid[,2], type = "l")
write.table(data.frame(GridDate, TesGrid[,2]), "TesGlobal.csv", sep = ";", dec = ",", eol = "\r\n", row.names = FALSE)

## Aug 31.
which(GridDate == as.Date("2022-08-31"))
which(GridDate == as.Date("2023-08-31"))
TesGrid[c(7913,8278),]
