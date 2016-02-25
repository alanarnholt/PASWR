#' Interval Plot
#' 
#' Function to graph confidence intervals
#' 
#' 
#' @param ll vector of lower confidence interval values
#' @param ul vector of upper confidence interval values
#' @seealso \code{\link{CIsim}}
#' @keywords misc
#' @examples
#' 
#' set.seed(402)
#' m <- 100 # Number of samples
#' n <- 500 # Sample size
#' a <- array(0,m)
#' ll <- array(0,m)
#' ul <- array(0,m)
#' i <- 0
#' while (i < m)
#' { i <- i + 1
#' a[i] <- mean(rnorm(n))
#' ll[i] <- a[i] + qnorm(0.025)*sqrt(1/n)
#' ul[i] <- a[i] + qnorm(0.975)*sqrt(1/n)
#' }
#' interval.plot(ll,ul)
#' 
#' @export interval.plot
interval.plot <-
function(ll, ul)
   {y1 <- ll ; y2<-ul; n <- length(y1)
    plot(y1, type = "n", ylim=c(-.3,.3),xlab = " ",ylab = " ")
    condition <- (ll <= 0 & ul >= 0)
    segments((1:n)[y1<0&y2>0],y1[y1<0&y2>0],(1:n)[y1<0&y2>0],
    y2[y1<0&y2>0])
    segments((1:n)[y1>0],y1[y1>0],(1:n)[y1>0],y2[y1>0],col=17,
    lwd=8)
    segments((1:n)[y2<0],y1[y2<0],(1:n)[y2<0],y2[y2<0],col=17,
    lwd=8)
    SUM<-sum(condition)
    abline(h=0)
    list("Number of intervals that contain 0"=SUM)}

