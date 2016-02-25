#' Simulated Distribution of Dn (Kolmogorov-Smirnov)
#' 
#' Function to visualize the sampling distribution of Dn and to find simulated
#' critical values.
#' 
#' 
#' @param n sample size
#' @param sims number of simulations to perform
#' @param alpha desired alpha level
#' @author Alan T. Arnholt
#' @seealso \code{\link{ksLdist}}
#' @keywords distribution
#' @examples
#' 
#' ksdist(n = 10, sims = 10000, alpha = 0.05)
#' 
#' @export ksdist
ksdist <-
function (n = 10, sims = 10000, alpha = 0.05)
{
    Dn <- replicate(sims, ks.test(rnorm(n), pnorm)$statistic)
    cv <- quantile(Dn, 1 - alpha)
    plot(density(Dn), col = "blue", lwd = 2, main = "",
    xlab = paste("Simulated critical value =", round(cv,3),
    "for n =", n, "when the alpha value =", alpha))
    title(main = list(expression(paste("Simulated Sampling Distribution of " ,
    D[n]))))
}

