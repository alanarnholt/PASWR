#' Exploratory Graphs for Single Factor Designs
#' 
#' Function to create dotplots, boxplots, and design plot (means) for single
#' factor designs
#' 
#' 
#' @param Y response variable for a single factor design
#' @param fac1 predictor variable
#' @param COL a vector with two colors
#' @author Alan T. Arnholt
#' @seealso \code{\link{twoway.plots}}
#' @keywords aplot
#' @examples
#' 
#' with(data = Tire, 
#' oneway.plots(StopDist, tire))
#' 
#' @export oneway.plots
oneway.plots <-
function(Y,fac1,COL=c("#A9E2FF","#0080FF"))
{
par(mfrow=c(1,3),pty="s")
YL <- range(Y)
dotchart(x=Y,groups=fac1,color="#0080FF",pch=1,
xlab=deparse(substitute(Y)),xlim=YL,
gdata=tapply(Y,fac1,mean),gpch=17)
plot(Y~fac1,col="#A9E2FF",ylab=deparse(substitute(Y)),ylim=YL)
plot.design(Y~fac1,ylab=deparse(substitute(Y)),ylim=YL)
par(mfrow=c(1,1),pty="m")
}

