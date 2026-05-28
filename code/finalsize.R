## final size graph
## 29 Nov 2011
## 10 Jan 2017 (added approx)
## 27 May 2026 (simplified for SSC 2026 talk)
require(emdbook)
finalsize = function(R0) {
   1+1/R0*lambertW(-R0*exp(-R0))
}
R0max <- 5.9
R0vals <- seq(1,R0max,by=0.1)
Z <- finalsize(R0vals)

if (interactive()) {
    pdf("finalsize.pdf")
} else {
    library(tikzDevice)
    tikz("finalsize.tex", standAlone = TRUE)
}

## A numerical vector of the form c(bottom, left, top, right)
## which gives the number of lines of margin to be specified
## on the four sides of the plot.
## The default is c(5, 4, 4, 2) + 0.1.
par(mar=c(5, 5, 4, 2) + 0.1)
##par(oma=c(0,1,0,0))

## Setup up coordinate system and plot box
plot(x=c(0,R0max),y=c(0,1.01), type = "n",
     xlab = earnmisc::nice_text("basic reproduction number $\\mathcal{R}_0$", use.tikz=TRUE), 
     bty = "l",xaxs="i", yaxs="i",
     ylab = "Final Size",
     cex.lab=3, cex.axis=2, las=1)
##grid(lwd=2,lty=1)
## avoid grey lines over axes:
abline(h=seq(0.2,1.0,length=5), v=seq(2,10,by=2), lwd=2, lty=1, col="grey")

## iterated approx:
##lines(R0vals,1-exp(-R0vals*(1-exp(-R0vals))),lwd=2.5,lty="dotted",col="lightblue")
## standard crude approx:
##lines(R0vals,1-exp(-R0vals),lwd=5,lty="dotted",col="darkblue")
lines(R0vals,Z,lwd=10)

## legend("bottomright",bty="n",
##        lty=c("dotted","solid"),
##        col=c("darkblue","black"),
##        lwd=c(5,10),legend=c("approx","exact"),
##        cex=2
## )
       
dev.off()
