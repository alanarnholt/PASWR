#' Exploratory Graphs for Two Factor Designs
#' 
#' Function creates side-by-side boxplots for each factor, a design plot
#' (means), and an interaction plot.
#' 
#' 
#' @param Y response variable
#' @param fac1 factor one
#' @param fac2 factor two
#' @param COL a vector with two colors
#' @author Alan T. Arnholt
#' @seealso \code{\link{oneway.plots}}
#' @keywords aplot
#' @examples
#' 
#' # Figure 11.25
#' Microamps <- c(280, 290, 285, 300, 310, 295, 270, 285, 290, 230,
#' 235, 240, 260, 240, 235, 220, 225, 230)
#' Glass <- factor(c(rep("Glass I", 9), rep("Glass II", 9)))
#' Phosphor <- factor((rep(c(rep("Phosphor A", 3), rep("Phosphor B", 3),
#' rep("Phosphor C", 3)), 2)))
#' twoway.plots(Microamps,Glass,Phosphor)
#' rm(Microamps, Glass, Phosphor)
#' 
#' @export twoway.plots
twoway.plots <-
function(Y, fac1, fac2, COL=c("#A9E2FF","#0080FF"))
{
 par(mfrow=c(2,2),pty="m",mar=c(5.1,4.1,4.1,2.1))
 YL <- range(Y)
 plot(Y~fac1,col="#A9E2FF",main=deparse(substitute(fac1)),
 xlab="",ylab=deparse(substitute(Y)),ylim=YL)
 plot(Y~fac2,col="#0080FF",main=deparse(substitute(fac2)),xlab="",
 ylab=deparse(substitute(Y)),ylim=YL)
 plot.design(Y~fac1+fac2,fun="mean",ylab=deparse(substitute(Y)),ylim=YL)
 interaction.plot(fac1,fac2,Y,xlab=deparse(substitute(fac1)),
 main="Interaction",trace.label=deparse(substitute(fac2)),type="b",
 legend=FALSE,ylab=deparse(substitute(Y)),ylim=YL)
 par(mfrow=c(1,1))
}

