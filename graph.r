#Read input, and infer variables
  ags <- commandArgs(TRUE)
  meta <- scan(ags[1], list("",""))
  files <- meta[[1]]
  names <- meta[[2]]
  data <- read.table(files[1])
  title <- if(length(ags) > 1) ags[2] else ags[1]
  filename <- paste('graph_for_', ags[1],'.png', sep='')

#find min and max to make dynamic ranges
  y_min <- min(data$V2)
  y_max <- max(data$V2)
  update_min = function(new) { y_min <<- new }
  update_max = function(new) { y_max <<- new }
  for( i in length(files)){
    data2 <- read.table(files[i])
    if(max(data2$V2) > y_max){ update_max(max(data2$V2)) }
    if(min(data2$V2) < y_min){ update_min(min(data2$V2)) }
  }
#set up output
  png(filename)
#plot the first line
  plot(
    data$V2,
    col="black",
    xlab="Date",
    xaxt="n",
    ylab="Count",
    type="b",
    ylim=c(y_min,(y_max+y_min)),
    lwd=2,
    main=title
  )
#plot other lines
  for( i in length(files)){
    if(i != 1){
      data2 <- read.table(files[i])
      lines(
        data2$V2,
        col="red",
        type="b",
        lwd=2
      )
    }
  }
#decorate plot
  legend(
    "topright",
    legend=names,
    lty=1,
    lwd=2,
    pch=21,
    col=c("black","red"),
    ncol=2,
    bty="n",
    cex=0.8,
    text.col=c("black","red"),
    inset=0.01
  )
  axis(
    1,
    at=1:length(data$V1),
    labels=data$V1
  )
#close save
  dev.off()
