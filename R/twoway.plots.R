#' @title Exploratory Graphs for Two Factor Designs
#' 
#' @description Function creates side-by-side boxplots for each factor, a design plot (means), and an interaction plot.
#' 
#' @param Y response variable 
#' @param fac1 factor one
#' @param fac2 factor two
#' @param COL a vector with two colors
#' 
#' @author Alan T. Arnholt <arnholtat@@appstate.edu>
#' 
#' @seealso \code{\link{oneway.plots}}, \code{\link{checking.plots}}
#' 
#' @export
#' 
#' @examples
#' with(data = TireWear, twoway.plots(Wear, Treat, Block))
#' 
#' @keywords hplot
####################################################################
twoway.plots<-function(Y, fac1, fac2, COL=c("#A9E2FF", "#0080FF")){
  opar <- par(no.readonly = TRUE)
  par(mfrow=c(2, 2), mar = c(5.1, 4.1, 1.1, 1.1))
  YL <- range(Y)
  plot(Y ~ fac1, col = COL[1], xlab = deparse(substitute(fac1)),
       ylab = deparse(substitute(Y)), ylim = YL)
  plot(Y ~ fac2, col = COL[2], xlab = deparse(substitute(fac2)),
       ylab = deparse(substitute(Y)), ylim = YL)
  plot.design(Y ~ fac1 + fac2, fun = "mean", 
              ylab = deparse(substitute(Y)), ylim = YL)
  interaction.plot(fac1, fac2, Y, xlab = deparse(substitute(fac1)), 
                   trace.label = deparse(substitute(fac2)),
                   type = "b", legend = FALSE, 
                   ylab = deparse(substitute(Y)), ylim = YL)
  on.exit(par(opar))
}
