## Beolvasás unz connecitonnal
zipgrid <- unz("sr_grid_20012023.txt.zip", "sr_grid_20012023.txt")
fejlec <- read.fwf(zipgrid, widths = rep(8, 1234), n = 1)
alldata <- read.fwf(zipgrid, widths = rep(8, 1234), skip = 1)
fejlec[1,1] <- "Date"
names(alldata) <- fejlec
TesGrid <- alldata[,c("Date", "311")]
GridDate <- seq.Date(from = as.Date("2001-01-01"), to = as.Date("2023-12-31"), by = "days")
plot(GridDate, TesGrid[,2], type = "l")
write.table(data.frame(GridDate, TesGrid[,2]), "TesGlobal.csv", sep = ";", dec = ",", eol = "\r\n", row.names = FALSE)

## Aug 31.
which(GridDate == as.Date("2022-08-31"))
which(GridDate == as.Date("2023-08-31"))
TesGrid[c(7913,8278),]

## Teljes augusztus
which(GridDate == as.Date("2022-08-01"))
TesGrid[7883:7913,]

## Idősor
library(xts)
Tes.xts <- xts(TesGrid[,2], GridDate)
Tes.xts['2022-08']

plot(Tes.xts['2023-05/2023-08'])
