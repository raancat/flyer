dat<-read.table("./household_power_consumption.txt",header=FALSE,
                skip=66637,nrows=2880,sep=";",col.names=c("Date","Time","Global_active_power",
                "Global_reactive_power","Voltage","Global_intensity","Sub_metering_1",
                "Sub_metering_2","Sub_metering_3"),colClasses=c("character","character","numeric",
                "numeric","numeric","numeric","numeric","numeric","numeric"))
png(file="plot1.png",width = 480, height = 480)
hist(dat[,3],col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()