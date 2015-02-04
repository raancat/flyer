dat<-read.table("./household_power_consumption.txt",header=FALSE,
                skip=66637,nrows=2880,sep=";",col.names=c("Date","Time","Global_active_power",
               "Global_reactive_power","Voltage","Global_intensity","Sub_metering_1",
               "Sub_metering_2","Sub_metering_3"),colClasses=c("character","character","numeric",
                "numeric","numeric","numeric","numeric","numeric","numeric"))
a<-paste(dat[,1],dat[,2])
b<-strptime(a,"%d/%m/%Y %H:%M:%S")
png(file="plot4.png",width = 480, height = 480)
par(mfcol=c(2,2))
plot(b,dat[,3],type="l",ylab="Global Active Power",xlab="")
plot(b,dat[,7],type="l",ylab="Energy sub metering",col="black",xlab="")
points(b,dat[,8],type="l",col="red")
points(b,dat[,9],type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,col=c("black","red","blue"))
plot(b,dat[,5],type="l",ylab="Voltage",xlab="datetime")
plot(b,dat[,4],type="l",ylab="Global_reactive_power",xlab="datetime")
dev.off()
