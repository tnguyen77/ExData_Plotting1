
R version 3.4.0 (2017-04-21) -- "You Stupid Darkness"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> dataFile <- "household_power_consumption.txt"
> data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
> subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
> globalActivePower <- as.numeric(subSet$Global_active_power)
> png("plot1.png", width=480, height=480)
> hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
> dev.off()
null device 
          1 
> save.image("C:\\Users\\T.Nguyen2\\Desktop\\course4\\plot1.R")
> 
