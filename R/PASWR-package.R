

#' TV and Behavior
#' 
#' Data regarding aggressive behavior in relation to exposure to violent
#' television programs used in Example 10.5
#' 
#' This is data regarding aggressive behavior in relation to exposure to
#' violent television programs from Gibbons (1997) with the following
#' exposition:
#' 
#' \ldots{} a group of children are matched as well as possible as regards home
#' environment, genetic factors, intelligence, parental attitudes, and so
#' forth, in an effort to minimize factors other than TV that might influence a
#' tendency for aggressive behavior.  In each of the resulting 16 pairs, one
#' child is randomly selected to view the most violent shows on TV, while the
#' other watches cartoons, situation comedies, and the like. The children are
#' then subjected to a series of tests designed to produce an ordinal measure
#' of their aggression factors. (pages 143-144)
#' 
#' @name Aggression
#' @docType data
#' @format A data frame with 16 observations on the following 2 variables:
#' \itemize{
#' \item \code{violence} (an integer vector)
#' \item \code{noviolence} (an integer vector)
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Gibbons, J. D. (1997) \emph{Nonparametric Methods for Quantitative
#' Analysis}. American Sciences Press.
#' @keywords datasets
#' @examples
#' 
#' with(data = Aggression, 
#' wilcox.test(violence, noviolence, paired = TRUE, 
#' alternative = "greater"))
#' 
NULL





#' Apple Hardness
#' 
#' An experiment was undertaken where seventeen recently picked (\code{Fresh})
#' apples were randomly selected and measured for hardness.  Seventeen apples
#' were also randomly selected from a warehouse (\code{Warehouse}) where the
#' apples had been stored for one week. Data are used in Example 8.10.
#' 
#' 
#' @name Apple
#' @docType data
#' @format A data frame with 17 observations on the following 2 variables:
#' #' \itemize{
#' \item \code{Fresh} (hardness rating measured in \eqn{\texttt{kg}/\texttt{meter}^2}) 
#' \item \code{Warehouse} (hardness rating measured in \eqn{\texttt{kg}/\texttt{meter}^2})
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' # Figure 8.5 
#' attach(Apple)
#' par(pty = "s")
#' Altblue <- "#A9E2FF"
#' Adkblue <- "#0080FF"
#' fresh <- qqnorm(Fresh)
#' old <- qqnorm(Warehouse)
#' plot(fresh, type = "n",ylab = "Sample Quantiles", xlab = "Theoretical Quantiles")
#' qqline(Fresh, col = Altblue)
#' qqline(Warehouse, col = Adkblue)
#' points(fresh, col = Altblue, pch = 16, cex = 1.2)
#' points(old, col = Adkblue, pch = 17)
#' legend(-1.75, 9.45, c("Fresh", "Warehouse"), col = c(Altblue, Adkblue),
#' text.col = c("black","black"), pch = c(16, 17), lty = c(1, 1), bg = "gray95", cex = 0.75)
#' title("Q-Q Normal Plots")
#' detach(Apple)
#' # Trellis approach
#' qqmath(~c(Fresh, Warehouse), type = c("p","r"), pch = c(16, 17), 
#' cex = 1.2, col=c("#A9E2FF", "#0080FF"),
#' groups=rep(c("Fresh", "Warehouse"), c(length(Fresh), length(Warehouse))), 
#' data = Apple, ylab = "Sample Quantiles", xlab = "Theoretical Quantiles")
#' 
NULL





#' Apartment Size
#' 
#' Size of apartments in Mendebaldea, Spain and San Jorge, Spain
#' 
#' 
#' @name AptSize
#' @docType data
#' @format A data frame with 8 observations on the following 2 variables:
#' \describe{ \item{Mendebaldea}{Mendebaldea apartment size in square
#' meters} \item{SanJorge}{San Jorge apartment size in square meters} }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = AptSize,
#' boxplot(Mendebaldea, SanJorge) )
#' 
NULL





#' George Herman Ruth
#' 
#' Baseball statistics for George Herman Ruth (The Bambino or The Sultan Of
#' Swat)
#' 
#' 
#' @name Baberuth
#' @docType data
#' @format A data frame with 22 observations on the following 14 variables.
#' \describe{ 
#' \item{Year}{year in which the season occurred}
#' \item{Team}{team he played for \code{Bos-A}, \code{Bos-N}, or
#' \code{NY-A}} \item{G}{games played} \item{AB}{at bats}
#' \item{R}{runs scored} \item{H}{hits}
#' \item{X2B}{doubles} \item{X3B}{triples}
#' \item{HR}{home runs} \item{RBI}{runs batted in}
#' \item{SB}{stolen bases} \item{BB}{base on balls or walks}
#' \item{BA}{batting average H/AB} \item{SLG}{slugging percentage (total bases/at bats)} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source \url{https://www.baseball-reference.com/about/bat_glossary.shtml}
#' @keywords datasets
#' @examples
#' 
#' with(data = Baberuth, 
#' hist(RBI))
#' 
NULL





#' Blood Alcohol Content
#' 
#' Two volunteers each consumed a twelve ounce beer every fifteen minutes for
#' one hour. One hour after the fourth beer was consumed, each volunteer's
#' blood alcohol was measured with a different breathalyzer from the same
#' company. The numbers recorded in data frame \code{Bac} are the sorted blood
#' alcohol content values reported with breathalyzers from company \code{X} and
#' company \code{Y}.  Data are used in Example 9.15.
#' 
#' 
#' @name Bac
#' @docType data
#' @format A data frame with 10 observations on the following 2 variables:
#' \describe{ 
#' \item{X}{blood alcohol content measured in g/L}
#' \item{Y}{blood alcohol content measured in g/L} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Bac, 
#' var.test(X, Y, alternative = "less"))
#' 
NULL





#' Lithium Batteries
#' 
#' A manufacturer of lithium batteries has two production facilities, A and B.
#' Fifty randomly selected batteries with an advertised life of 180 hours are
#' selected, and tested. The lifetimes are stored in (\code{facilityA}). Fifty
#' ramdomly selected batteries with an advertised life of 200 hours are
#' selected, and tested.  The lifetimes are stored in (\code{facilityB}).
#' 
#' 
#' @name Battery
#' @docType data
#' @format A data frame with 50 observations on the following 2 variables:
#' \describe{ 
#' \item{facilityA}{life time measured in hours}
#' \item{facilityB}{life time measured in hours} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Battery, 
#' qqnorm(facilityA))
#' with(data = Battery, 
#' qqline(facilityA))
#' 
NULL





#' Beech Trees
#' 
#' Several measurements of 42 beech trees (\emph{Fagus Sylvatica}) taken from a
#' forest in Navarra (Spain).
#' 
#' 
#' @name biomass
#' @docType data
#' @format A data frame with 42 observations on the following 4 variables:
#' \describe{ \item{Dn}{diameter of the stem in centimeters}
#' \item{H}{height of the tree in meters} 
#' \item{PST}{weight of the stem in kilograms} 
#' \item{PSA}{aboveground weight in kilograms} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source \emph{Gobierno de Navarra} and \emph{Gestion Ambiental Viveros y
#' Repoblaciones de Navarra}, 2006.  The data were obtained within the European
#' Project FORSEE.
#' @keywords datasets
#' @examples
#' 
#' plot(log(PSA) ~ log(Dn), data = biomass)
#' 
NULL





#' Body Fat Composition
#' 
#' Values from a study reported in the \emph{American Journal of Clinical
#' Nutrition} that investigated a new method for measuring body composition
#' 
#' 
#' @name Bodyfat
#' @docType data
#' @format A data frame with 18 observations on the following 3 variables:
#' \describe{ 
#' \item{age}{age in years} 
#' \item{fat}{body fat composition} 
#' \item{sex}{a factor with levels \code{F} for female and \code{M} for male} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Mazess, R. B., Peppler, W. W., and Gibbons, M. (1984) \emph{Total
#' Body Composition by Dual-Photon (153 Gd) Absorptiometry}. American Journal
#' of Clinical Nutrition, \bold{40}, \bold{4}: 834-839.
#' @keywords datasets
#' @examples
#' 
#' boxplot(fat ~ sex, data = Bodyfat)
#' 
NULL





#' Calculus Assessment Scores
#' 
#' Mathematical assessment scores for 36 students enrolled in a biostatistics
#' course according to whether or not the students had successfully completed a
#' calculus course prior to enrolling in the biostatistics course
#' 
#' 
#' @name Calculus
#' @docType data
#' @format A data frame with 18 observations on the following 2 variables:
#' \describe{ 
#' \item{No.Calculus}{assessment score for students with no prior calculus} 
#' \item{Yes.Calculus}{assessment score for students with prior calculus} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Calculus,
#' z.test(x = Yes.Calculus, y = No.Calculus, sigma.x = 5, sigma.y = 12)$conf
#' )
#' 
NULL





#' Cars in the European Union (2004)
#' 
#' The numbers of cars per 1000 inhabitants (\code{cars}), the total number of
#' known mortal accidents (\code{deaths}), and the country population/1000
#' (\code{population}) for the 25 member countries of the European Union for
#' the year 2004
#' 
#' 
#' @name Cars2004EU
#' @docType data
#' @format A data frame with 25 observations on the following 4 variables:
#' \describe{ 
#' \item{country}{a factor with levels \code{Austria},
#' \code{Belgium}, \code{Cyprus}, \code{Czech Republic}, \code{Denmark},
#' \code{Estonia}, \code{Finland}, \code{France}, \code{Germany},
#' \code{Greece}, \code{Hungary}, \code{Ireland}, \code{Italy}, \code{Latvia},
#' \code{Lithuania}, \code{Luxembourg}, \code{Malta}, \code{Netherlands},
#' \code{Poland}, \code{Portugal}, \code{Slovakia}, \code{Slovenia},
#' \code{Spain}, \code{Sweden}, and \code{United Kingdom}}
#' \item{cars}{numbers of cars per 1000 inhabitants}
#' \item{deaths}{total number of known mortal accidents}
#' \item{population}{country population/1000} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' plot(deaths ~ cars, data = Cars2004EU)
#' 
NULL





#' Silicon Chips
#' 
#' Two techniques of splitting chips are randomly assigned to 28 sheets so that
#' each technique is applied to 14 sheets. The values recorded in \code{Chips}
#' are the number of usable chips from each silicon sheet.
#' 
#' 
#' @name Chips
#' @docType data
#' @format A data frame with 14 observations on the following 2 variables:
#' \describe{ 
#' \item{techniqueI}{number of usable chips}
#' \item{techniqueII}{number of usable chips} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' par(mfrow = c(1, 2))
#' with(data = Chips, qqnorm(techniqueI))
#' with(data = Chips, qqline(techniqueI))
#' with(data = Chips, qqnorm(techniqueII))
#' with(data = Chips, qqline(techniqueII))
#' par(mfrow=c(1, 1))
#' # Trellis Approach
#' graph1 <- qqmath(~techniqueI, data = Chips, type=c("p", "r"))
#' graph2 <- qqmath(~techniqueII, data = Chips, type=c("p", "r"))
#' print(graph1, split=c(1, 1, 2, 1), more = TRUE)
#' print(graph2, split=c(2, 1, 2, 1), more = FALSE)
#' rm(graph1, graph2)
#' 
NULL





#' Circuit Design Lifetime
#' 
#' \code{CircuitDesigns} contains the results from an accelerated life test
#' used to estimate the lifetime of four different circuit designs (lifetimes
#' in thousands of hours).
#' 
#' 
#' @name CircuitDesigns
#' @docType data
#' @format A data frame with 26 observations on the following 2 variables:
#' \describe{ 
#' \item{lifetime}{lifetimes in thousands of hours}
#' \item{design}{a factor with levels \code{Design1}, \code{Design2},
#' \code{Design3}, and \code{Design4}} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' bwplot(design ~ lifetime, data = CircuitDesigns)
#' 
NULL





#' Cosmed Versus Amatek
#' 
#' The Cosmed is a portable metabolic system. A study at Appalachian State
#' University compared the metabolic values obtained from the Cosmed to those
#' of a reference unit (Amatek) over a range of workloads from easy to maximal
#' to test the validity and reliability of the Cosmed. A small portion of the
#' results for VO2 (ml/kg/min) measurements taken at a 150 watt workload are
#' stored in \code{CosAma}.
#' 
#' 
#' @name CosAma
#' @docType data
#' @format A data frame with 14 observations on the following 3 variables:
#' \describe{ 
#' \item{subject}{subject number}
#' \item{Cosmed}{measured VO2 with Cosmed}
#' \item{Amatek}{measured VO2 with Amatek} }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' bwplot(~(Cosmed - Amatek), data = CosAma)
#' 
NULL





#' Butterfat of Cows
#' 
#' Random samples of ten mature (five-year-old and older) and ten two-year-old
#' cows were taken from each of five breeds. The average butterfat percentage
#' of these 100 cows is stored in the variable \code{butterfat} with the type
#' of cow stored in the variable \code{breed} and the age of the cow stored in
#' the variable \code{age}.
#' 
#' 
#' @name Cows
#' @docType data
#' @format A data frame with 100 observations on the following 3 variables:
#' \describe{ 
#' \item{butterfat}{average butterfat percentage}
#' \item{age}{a factor with levels \code{2 years old} and
#' \code{Mature}} 
#' \item{breed}{a factor with levels \code{Ayrshire},
#' \code{Canadian}, \code{Guernsey}, \code{Holstein-Friesian}, and
#' \code{Jersey}} 
#' }
#' @references Sokal, R. R. and Rohlf, F. J. (1994) \emph{Biometry}.  W. H.
#' Freeman, New York, third edition.
#' @source Canadian record book of purebreed diary cattle.
#' @keywords datasets
#' @examples
#' 
#' summary(aov(butterfat ~ breed + age, data = Cows))
#' 
NULL





#' Number of Dependent Children for 50 Families
#' 
#' Number of dependent children for 50 families.
#' 
#' 
#' @name Depend
#' @docType data
#' @format A data frame with 50 observations on the following 4 variables.
#' \describe{ 
#' \item{C1}{a numeric vector} 
#' \item{number}{a numeric vector} 
#' \item{Count}{a numeric vector}
#' \item{Percent}{a numeric vector} }
#' @source Kitchens, L. J. (2003) \emph{Basic Statistics and Data Analysis}.
#' Duxbury
#' @keywords datasets
#' @examples
#' 
#' with(data = Depend, table(C1))
#' 
NULL





#' Drosophila Melanogaster
#' 
#' \code{Drosophila} contains per diem fecundity (number of eggs laid per
#' female per day for the first 14 days of life) for 25 females from each of
#' three lines of \emph{Drosophila melanogaster}. The three lines are
#' Nonselected (control), Resistant, and Susceptible.  Data are used in Example
#' 11.5.
#' 
#' 
#' @name Drosophila
#' @docType data
#' @format A data frame with 75 observations on the following 2 variables:
#' \describe{ 
#' \item{Fecundity}{number of eggs laid per female per day for the first 14 days of life} 
#' \item{Line}{a factor with levels \code{Nonselected}, \code{Resistant}, and \code{Susceptible}} 
#' }
#' @references Sokal, R. R. and Rohlf, F. J. (1994) \emph{Biometry}.  W. H.
#' Freeman, New York, third edition.
#' @source The original measurements are from an experiment conducted by R. R.
#' Sokal (Sokal and Rohlf, 1994, p. 237).
#' @keywords datasets
#' @examples
#' 
#' summary(aov(Fecundity ~ Line, data = Drosophila))
#' 
NULL





#' Engineer Salaries
#' 
#' Salaries for engineering graduates 10 years after graduation
#' 
#' 
#' @name Engineer
#' @docType data
#' @format A data frame with 51 observations on the following 2 variables:
#' \describe{ 
#' \item{salary}{salary 10 years after graduation in thousands of dollars} 
#' \item{university}{one of three different engineering universities} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' boxplot(salary ~ university, data = Engineer, horizontal = TRUE)
#' # Trellis Approach
#' bwplot(university ~ salary, data = Engineer)
#' 
NULL





#' Traditional Sitting Position Versus Hamstring Stretch Position
#' 
#' Intermediate results from a study to determine whether the traditional
#' sitting position or the hamstring stretch position is superior for
#' administering epidural anesthesia to pregnant women in labor as measured by
#' the number of obstructive (needle to bone) contacts (OC)
#' 
#' 
#' @name EPIDURALf
#' @docType data
#' @format A data frame with 342 observations on the following 7 variables:
#' \describe{ 
#' \item{Doctor}{a factor with levels \code{Dr. A}, \code{Dr. B}, \code{Dr. C}, and \code{Dr. D}} 
#' \item{kg}{weight in kg of patient} 
#' \item{cm}{height in cm of pateint} 
#' \item{Ease}{a factor with levels \code{Difficult}, \code{Easy}, and \code{Impossible} 
#' indicating the physician's assessment of how well bone landmarks can be felt
#' in the patient} 
#' \item{Treatment}{a factor with levels \code{Hamstring Stretch} and \code{Traditional Sitting}}
#' \item{OC}{number of obstructive contacts}
#' \item{Complications}{a factor with levels \code{Failure - person got dizzy}, 
#' \code{Failure - too many OCs}, \code{None}, \code{Paresthesia}, and \code{Wet Tap}} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' boxplot(OC ~ Treatment, data = EPIDURALf)
#' 
NULL





#' Traditional Sitting Position Versus Hamstring Stretch Position
#' 
#' Initial results from a study to determine whether the traditional sitting
#' position or the hamstring stretch position is superior for administering
#' epidural anesthesia to pregnant women in labor as measured by the number of
#' obstructive (needle to bone) contacts (OC)
#' 
#' 
#' @name EPIDURAL
#' @docType data
#' @format A data frame with 85 observations on the following 7 variables:
#' \describe{ 
#' \item{Doctor}{a factor with levels \code{Dr. A},
#' \code{Dr. B}, \code{Dr. C}, and \code{Dr. D}} 
#' \item{kg}{weight in kg of patient} 
#' \item{cm}{height in cm of pateint} 
#' \item{Ease}{a factor with levels \code{Difficult}, \code{Easy}, and \code{Impossible}
#' indicating the physician's assessment of how well bone landmarks can be felt
#' in the patient} 
#' \item{Treatment}{a factor with levels \code{Hamstring Stretch} and \code{Traditional Sitting}}
#' \item{OC}{number of obstructive contacts}
#' \item{Complications}{a factor with levels \code{Failure - person got
#' dizzy}, \code{Failure - too many OCs}, \code{None}, \code{Paresthesia}, and
#' \code{Wet Tap}} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' EPIDURAL$Teasy <-  factor(EPIDURAL$Ease, 
#' levels = c("Easy", "Difficult", "Impossible"))
#' X <- table(EPIDURAL$Doctor, EPIDURAL$Teasy)
#' X
#' par(mfrow = c(2, 2)) # Figure 2.12
#' barplot(X,
#' main = "Barplot where Doctor is Stacked \n within Levels of Palpitation")
#' barplot(t(X),
#' main = "Barplot where Levels of Palpitation \n is Stacked within Doctor")
#' barplot(X, beside = TRUE,
#' main = "Barplot where Doctor is Grouped \n within Levels of Palpitation")
#' barplot(t(X), beside = TRUE,
#' main = "Barplot where Levels of Palpitation \n is Grouped within Doctor")
#' par(mfrow = c(1, 1))
#' rm(X)
#' 
NULL





#' European Union Research and Development
#' 
#' A random sample of 15 countries' research and development investments for
#' the years 2002 and 2003 is taken and the results in millions of euros are
#' stored in \code{EURD}.
#' 
#' 
#' @name EURD
#' @docType data
#' @format A data frame with 15 observations on the following 3 variables:
#' \describe{ 
#' \item{Country}{a factor with levels \code{Bulgaria},
#' \code{Croatia}, \code{Cyprus}, \code{Czech Republic}, \code{Estonia},
#' \code{France}, \code{Hungary}, \code{Latvia}, \code{Lithuania},
#' \code{Malta}, \code{Portugal}, \code{Romania}, \code{Slovakia}, and
#' \code{Slovenia}} 
#' \item{RD2002}{research and development investments
#' in millions of euros for 2002} 
#' \item{RD2003}{research and development investments in millions of euros for 2003} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' qqmath(~(RD2003 - RD2002), data = EURD, type=c("p", "r"))
#' 
NULL





#' Retained Carbon in Beech Trees
#' 
#' The carbon retained by leaves measured in kg/ha is recorded for forty-one
#' different plots of mountainous regions of Navarra (Spain), depending on the
#' forest classification: areas with 90\% or more beech trees (\emph{Fagus
#' Sylvatica}) are labeled monospecific, while areas with many species of trees
#' are labeled multispecific.
#' 
#' 
#' @name fagus
#' @docType data
#' @format A data frame with 41 observations on the following 3 variables:
#' \describe{ 
#' \item{Plot}{plot number} 
#' \item{carbon}{carbon retained by leaves measured in kg/ha} 
#' \item{type}{a factor with levels \code{monospecific} and \code{multispecific}} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source \emph{Gobierno de Navarra} and \emph{Gestion Ambiental Viveros y
#' Repoblaciones de Navarra}, 2006.  The data were obtained within the European
#' Project FORSEE.
#' @keywords datasets
#' @examples
#' 
#' boxplot(carbon ~ type, data=fagus)
#' 
NULL





#' Fat Cats
#' 
#' In a weight loss study on obese cats, overweight cats were randomly assigned
#' to one of three groups and boarded in a kennel.  In each of the three
#' groups, the cats' total caloric intake was strictly controlled (1 cup of
#' generic cat food) and monitored for 10 days. The difference between the
#' groups was that group A was given 1/4 of a cup of cat food every six hours,
#' group B was given 1/3 a cup of cat food every eight hours, and group C was
#' given 1/2 a cup of cat food every twelve hours. The weight of the cats at
#' the beginning and end of the study was recorded and the difference in
#' weights (grams) is stored in the variable \code{Weight} of the data frame
#' \code{FCD}. Data are used in Example 11.4.
#' 
#' 
#' @name FCD
#' @docType data
#' @format A data frame with 36 observations on the following 2 variables:
#' \describe{ 
#' \item{Weight}{difference in weights (grams)}
#' \item{Diet}{a factor with levels \code{A}, \code{B}, and \code{C}} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' # Figure 11.12
#' FCD.aov <- aov(Weight ~ Diet, data = FCD)
#' checking.plots(FCD.aov)
#' rm(FCD.aov)
#' 
NULL





#' Cross and Auto Fertilization
#' 
#' Plants' heights in inches obtained from two seeds, one obtained by cross
#' fertilization and the other by auto fertilization, in two opposite but
#' separate locations of a pot are recorded.
#' 
#' 
#' @name Fertilize
#' @docType data
#' @format A data frame with 15 observations on the following 2 variables:
#' \describe{ 
#' \item{cross}{height of plant in inches}
#' \item{self}{height of plant in inches} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Darwin, C. (1876) \emph{The Effect of Cross and Self-Fertilization
#' in the Vegetable Kingdom}
#' @keywords datasets
#' @examples
#' 
#' with(data = Fertilize, 
#' t.test(cross, self))
#' 
NULL





#' Carrot Shear
#' 
#' Shear measured in kN on frozen carrots from four randomly selected freezers
#' 
#' 
#' @name food
#' @docType data
#' @format A data frame with 16 observations on the following 2 variables:
#' \describe{ 
#' \item{shear}{carrot shear measured in kN}
#' \item{freezer}{a factor with levels \code{A}, \code{B}, \code{C},
#' and \code{D}} }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' summary(aov(shear ~ freezer, data = food))
#' 
NULL





#' Pit Stop Times
#' 
#' Pit stop times for two teams at 10 randomly selected Formula 1 races
#' 
#' 
#' @name Formula1
#' @docType data
#' @format A data frame with 10 observations on the following 3 variables:
#' \describe{ 
#' \item{Race}{number corresponding to a race site}
#' \item{Team1}{pit stop times for team one} 
#' \item{Team2}{pit stop times for team two} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Formula1, 
#' boxplot(Team1, Team2))
#' 
NULL





#' Times Until Failure
#' 
#' Contains time until failure in hours for a particular electronic component
#' subjected to an accelerated stress test.
#' 
#' 
#' @name GD
#' @docType data
#' @format A data frame with 100 observations on the following variable:
#' \describe{ 
#' \item{attf}{times until failure in hours} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = GD, 
#' hist(attf, prob = TRUE))
#' with(data = GD, 
#' lines(density(attf)))
#' # Trellis Approach
#' histogram(~attf, data = GD, type = "density",
#' panel = function(x, ...) {
#' panel.histogram(x, ...)
#' panel.densityplot(x, col = "blue", plot.points = TRUE, lwd = 2)
#' } )
#' 
NULL





#' Blood Glucose Levels
#' 
#' Fifteen diabetic patients were randomly selected, and their blood glucose
#' levels were measured in mg/100 ml with two different devices.
#' 
#' 
#' @name glucose
#' @docType data
#' @format A data frame with 15 observations on the following 3 variables:
#' \describe{ 
#' \item{Patient}{patient number} 
#' \item{Old}{blood glucose level in mg/100 ml using old device} 
#' \item{New}{blood glucose level in mg/100 ml using new device} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = glucose, 
#' boxplot(Old, New))
#' 
NULL





#' GPA and SAT Scores
#' 
#' The admissions committee of a comprehensive state university selected at
#' random the records of 200 second semester freshmen. The results, first
#' semester college GPA and SAT scores, are stored in the data frame
#' \code{Grades}.  Data are used in Example 12.6.
#' 
#' 
#' @name Grades
#' @docType data
#' @format A data frame with 200 observations on the following 2 variables:
#' \describe{ 
#' \item{sat}{SAT score} 
#' \item{gpa}{grade point average} }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' # traditional scatterplot
#' plot(gpa ~ sat, data = Grades)
#' # trellis scatterplot
#' xyplot(gpa ~ sat, data = Grades, type=c("p", "smooth"))
#' 
NULL





#' Grocery Spending
#' 
#' The consumer expenditure survey, created by the U.S. Department of Labor,
#' was administered to 30 households in Watauga County, North Carolina, to see
#' how the cost of living in Watauga county with respect to total dollars spent
#' on groceries compares with other counties. The amount of money each
#' household spent per week on groceries is stored in the variable
#' \code{groceries}.  Data are used in Example 8.3.
#' 
#' 
#' @name Grocery
#' @docType data
#' @format A data frame with 30 observations on the following variable:
#' \describe{ 
#' \item{groceries}{total dollars spent on groceries} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Grocery, 
#' z.test(x = groceries, sigma.x = 30, conf.level = 0.97)$conf)
#' 
NULL





#' Mortality and Water Hardness
#' 
#' Mortality and drinking water hardness for 61 cities in England and Wales.
#' 
#' These data were collected in an investigation of environmental causes of
#' disease.  They show the annual mortality rate per 100,000 for males,
#' averaged over the years 1958-1964, and the calcium concentration (in parts
#' per million) in the drinking water supply for 61 large towns in England and
#' Wales.  (The higher the calcium concentration, the harder the water.)
#' 
#' @name HardWater
#' @docType data
#' @format A data frame with 61 observations on the following 4 variables.
#' \describe{ 
#' \item{location}{a factor with levels \code{North}
#' \code{South} indicating whether the town is as north as Derby}
#' \item{town}{the name of the town} 
#' \item{mortality}{averaged annual mortality per 100,000 males} 
#' \item{hardness}{calcium concentration (in parts per million)} 
#' }
#' @source D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski
#' (1994) \emph{A Handbook of Small Datasets}. Chapman and Hall/CRC, London.
#' @keywords datasets
#' @examples
#' 
#' plot(mortality ~ hardness, data = HardWater)
#' 
NULL





#' House Prices
#' 
#' Random sample of house prices (in thousands of dollars) for three
#' bedroom/two bath houses in Watauga County, NC
#' 
#' 
#' @name House
#' @docType data
#' @format A data frame with 14 observations on the following 2 variables:
#' \describe{ 
#' \item{Neighborhood}{a factor with levels \code{Blowing Rock}, \code{Cove Creek}, 
#' \code{Green Valley}, \code{Park Valley}, \code{Parkway}, and \code{Valley Crucis}} 
#' \item{Price}{price of house (in thousands of dollars)} 
#' }
#' @keywords datasets
#' @examples
#' 
#' with(data = House, 
#' t.test(Price))
#' 
NULL





#' High School Wrestlers
#' 
#' The body fat of 78 high school wrestlers was measured using three separate
#' techniques, and the results are stored in the data frame \code{HSwrestler}.
#' The techniques used were hydrostatic weighing (\code{HWFAT}), skin fold
#' measurements (\code{SKFAT}), and the Tanita body fat scale (\code{TANFAT}).
#' Data are used in Examples 10.11, 12.11, and 12.12.
#' 
#' 
#' @name HSwrestler
#' @docType data
#' @format A data frame with 78 observations on the following 9 variables:
#' \describe{ 
#' \item{AGE}{age of wrestler in years}
#' \item{HT}{height of wrestler in inches} 
#' \item{WT}{weight ofwrestler in pounds} 
#' \item{ABS}{abdominal fat}
#' \item{TRICEPS}{tricep fat} 
#' \item{SUBSCAP}{subscapular fat}
#' \item{HWFAT}{hydrostatic fat} 
#' \item{TANFAT}{Tanita fat}
#' \item{SKFAT}{skin fat} }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Data provided by Dr. Alan Utter, Department of Health Leisure and
#' Exercise Science, Appalachian State University.
#' @keywords datasets
#' @examples
#' 
#' FAT <- c(HSwrestler$HWFAT, HSwrestler$TANFAT, HSwrestler$SKFAT)
#' GROUP <- factor(rep(c("HWFAT", "TANFAT", "SKFAT"), rep(78, 3)))
#' BLOCK <- factor(rep(1:78, 3))
#' friedman.test(FAT ~ GROUP | BLOCK)
#' 
NULL





#' Hubble Telescope
#' 
#' The Hubble Space Telescope was put into orbit on April 25, 1990.
#' Unfortunately, on June 25, 1990, a spherical aberration was discovered in
#' Hubble's primary mirror. To correct this, astronauts had to work in space.
#' To prepare for the mission, two teams of astronauts practiced making repairs
#' under simulated space conditions. Each team of astronauts went through 15
#' identical scenarios. The times to complete each scenario were recorded in
#' days.
#' 
#' 
#' @name Hubble
#' @docType data
#' @format A data frame with 15 observations on the following 2 variables:
#' \describe{ 
#' \item{Team1}{days to complete scenario}
#' \item{Team2}{days to complete scenario} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Hubble, 
#' qqnorm(Team1 - Team2))
#' with(data = Hubble, 
#' qqline(Team1 - Team2))
#' # Trellis Approach
#' qqmath(~(Team1 - Team2), data = Hubble, type=c("p", "r"))
#' 
NULL





#' Insurance Quotes
#' 
#' Insurance quotes for two insurers of hazardous waste jobs
#' 
#' 
#' @name InsurQuotes
#' @docType data
#' @format A data frame with 15 observations on the following 2 variables:
#' \describe{ 
#' \item{companyA}{quotes from company A in euros}
#' \item{companyB}{quotes from company B in euros} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = InsurQuotes, 
#' t.test(companyA, companyB))
#' 
NULL





#' Australian Eucalypt Hardwoods
#' 
#' The dataset consists of density and hardness measurements from 36 Australian
#' Eucalypt hardwoods.
#' 
#' Janka Hardness is an importance rating of Australian hardwood timbers. The
#' test measures the force required to imbed a steel ball into a piece of wood.
#' 
#' @name janka
#' @docType data
#' @format A data frame with 36 observations on the following 2 variables.
#' \describe{ 
#' \item{Density}{a measure of density of the timber}
#' \item{Hardness}{the Janka hardness of the timber} 
#' }
#' @source Williams, E.J. (1959) \emph{Regression Analysis}.  John Wiley &
#' Sons, New York.
#' @keywords datasets
#' @examples
#' 
#' with(data = janka, plot(Hardness ~ Density, col = "blue"))
#' 
NULL





#' Kindergarten Class
#' 
#' The data frame \code{Kinder} contains the height in inches and weight in
#' pounds of 20 children from a kindergarten class.  Data are used in Example
#' 12.17.
#' 
#' 
#' @name Kinder
#' @docType data
#' @format A data frame with 20 observations on the following 2 variables:
#' \describe{ 
#' \item{ht}{height in inches of child}
#' \item{wt}{weight in pounds of child} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' # Figure 12.10
#' with(data = Kinder, 
#' plot(wt, ht))
#' # Trellis Approach
#' xyplot(ht ~ wt, data = Kinder)
#' 
NULL





#' LED Diodes
#' 
#' The diameter in millimeters for a random sample of 15 diodes from each of
#' the two suppliers is stored in the data frame \code{Leddiode}.
#' 
#' 
#' @name Leddiode
#' @docType data
#' @format A data frame with 15 observations on the following 2 variables:
#' \describe{
#'  \item{supplierA}{diameter in millimeters of diodes from supplier A} 
#'  \item{supplierB}{diameter in millimeters of diodes from supplier B} 
#'  }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Leddiode, 
#' boxplot(supplierA, supplierB, col = c("red", "blue")))
#' 
NULL





#' Lost Revenue Due to Worker Illness
#' 
#' Data set containing the lost revenue in dollars/day and number of workers
#' absent due to illness for a metallurgic company
#' 
#' 
#' @name LostR
#' @docType data
#' @format A data frame with 25 observations on the following 2 variables:
#' \describe{ 
#' \item{NumberSick}{number of absent workers due to illness} 
#' \item{LostRevenue}{lost revenue in dollars} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' xyplot(LostRevenue ~ NumberSick, data = LostR, type=c("p", "r"))
#' 
NULL





#' Milk Carton Drying Times
#' 
#' A plastics manufacturer makes two sizes of milk containers: half gallon and
#' gallon sizes. The time required for each size to dry is recorded in seconds
#' in the data frame \code{MilkCarton}.
#' 
#' 
#' @name MilkCarton
#' @docType data
#' @format A data frame with 40 observations on the following 2 variables:
#' \describe{ 
#' \item{Hgallon}{drying time in seconds for half gallon containers} 
#' \item{Wgallon}{drying time in seconds for whole gallon containers} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = MilkCarton, 
#' boxplot(Hgallon, Wgallon))
#' 
NULL





#' Probability and Statistics with R
#' 
#' Data and functions for the book \emph{Probability and Statistics with R}
#' 
#' \tabular{ll}{ Package: \tab PASWR\cr Type: \tab Package\cr Version: \tab
#' 1.2\cr Date: \tab 2016-02-24\cr License: \tab GPL (>=2) \cr } Comprehensive
#' and engineering-oriented, \emph{Probability and Statistics with R} provides
#' a thorough treatment of probability and statistics, clear and accessible
#' real-world examples, and fully detailed proofs.  The text provides
#' step-by-step explanations for numerous examples in R and S-PLUS for nearly
#' every topic covered, including both traditional and nonparametric
#' techniques. With a wide range of graphs to illustrate complex material as
#' well as a solutions manual, the book also offers an accompanying website
#' that features supporting information, including datasets, functions, and
#' other downloadable material. It is ideal for undergraduate students and for
#' engineers and scientists who must perform statistical analyses.
#' 
#' @name PASWR-package
#' @aliases PASWR-package PASWR
#' @docType package
#' @author Alan T. Arnholt
#' 
#' Maintainer: <arnholtat@@appstate.edu>
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords package
NULL





#' Phenylketonuria
#' 
#' The data frame \code{Phenyl} records the level of Q10 at four different
#' times for 46 patients diagnosed with phenylketonuria. The variable
#' \code{Q10.1} contains the level of Q10 measured in micromoles for the 46
#' patients. \code{Q10.2}, \code{Q10.3}, and \code{Q10.4} are the values
#' recorded at later times respectively for the 46 patients.
#' 
#' Phenylketonuria (PKU) is a genetic disorder that is characterized by an
#' inability of the body to utilize the essential amino acid, phenylalanine.
#' Research suggests patients with phenylketonuria have deficiencies in
#' coenzyme Q10.
#' 
#' @name Phenyl
#' @docType data
#' @format A data frame with 46 observations on the following 4 variables.
#' \describe{ 
#' \item{Q10.1}{level of Q10 at time 1 in micromoles}
#' \item{Q10.2}{level of Q10 at time 2 in micromoles}
#' \item{Q10.3}{level of Q10 at time 3 in micromoles}
#' \item{Q10.4}{level of Q10 at time 4 in micromoles} }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Artuch, R., \emph{et. al.} (2004) \dQuote{Study of Antioxidant
#' Status in Phenylketonuric Patients.} \emph{Clinical Biochemistry},
#' \bold{37}: 198-203.
#' @keywords datasets
#' @examples
#' 
#' with(data = Phenyl, 
#' t.test(Q10.1, conf.level = 0.99))
#' 
NULL





#' Telephone Call Times
#' 
#' \code{Phone} contains times in minutes of long distance telephone calls
#' during a one month period for a small business.  Data are used in Example
#' 10.1.
#' 
#' 
#' @name Phone
#' @docType data
#' @format A data frame with 23 observations on the following variable:
#' \describe{ 
#' \item{call.time}{time spent on long distance calls in minutes} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Phone, 
#' SIGN.test(call.time, md = 2.1))
#' 
NULL





#' Rat Blood Pressure
#' 
#' Twelve rats were chosen, and a drug was administered to six rats, the
#' treatment group, chosen at random. The other six rats, the control group,
#' received a placebo. The drops in blood pressure (mmHg) for the treatment
#' group (with probability distribution F) and the control group (with
#' probability distribution G) are stored in the variables \code{Treat} and
#' \code{Cont}, respectively.  Data are used in Example 10.18.
#' 
#' 
#' @name Ratbp
#' @docType data
#' @format A data frame with 6 observations on the following 2 variables:
#' \describe{ 
#' \item{Treat}{drops in blood pressure in mmHg for treatment group} 
#' \item{Cont}{drops in blood pressure in mmHg for control group} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source The data is originally from Ott and Mendenhall (1985, problem 8.17).
#' @keywords datasets
#' @examples
#' 
#' with(data = Ratbp, 
#' boxplot(Treat, Cont))
#' 
NULL





#' Rat Survival Time
#' 
#' The survival time in weeks of 20 male rats exposed to high levels of
#' radiation.
#' 
#' 
#' @name Rat
#' @docType data
#' @format A data frame with 20 observations on the following variable:
#' \describe{ 
#' \item{survival.time}{number of weeks survived} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Lawless, J. (1982) \emph{Statistical Models and Methods for Lifetime
#' Data}. John Wiley, New York.
#' @keywords datasets
#' @examples
#' 
#' with(data = Rat, 
#' EDA(survival.time))
#' 
NULL





#' Refrigerator Energy Consumption
#' 
#' Thirty 18 cubic feet refrigerators were randomly selected from a company's
#' warehouse. The first fifteen had their motors modified while the last
#' fifteen were left intact. The energy consumption (kilowatts) for a 24 hour
#' period for each refrigerator was recorded and stored in the data frame
#' \code{Refrigerator}. The refrigerators with the design modification are
#' stored in the variable \code{modelA}, and those without the design
#' modification are stored in the variable \code{modelB}.
#' 
#' 
#' @name Refrigerator
#' @docType data
#' @format A data frame with 30 observations on the following 2 variables.
#' \describe{ 
#' \item{modelA}{energy consumption in kilowatts for a 24 hour period} 
#' \item{modelB}{energy consumption in kilowatts for a 24 hour period} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Refrigerator, 
#' boxplot(modelA, modelB))
#' 
NULL





#' Oriental Cockroaches
#' 
#' A laboratory is interested in testing a new child friendly pesticide on
#' \emph{Blatta orientalis} (oriental cockroaches). Scientists apply the new
#' pesticide to 81 randomly selected Blatta orientalis oothecae (eggs).  The
#' results from the experiment are stored in the data frame \code{Roacheggs} in
#' the variable \code{eggs}.  A zero in the variable \code{eggs} indicates that
#' nothing hatched from the egg while a 1 indicates the birth of a cockroach.
#' Data is used in Example 7.16.
#' 
#' 
#' @name Roacheggs
#' @docType data
#' @format A data frame with 81 observations on the following variable:
#' \describe{ 
#' \item{eggs}{numeric vector where a 0 indicates nothing
#' hatched while a 1 indicates the birth of a cockroach.} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' p <- seq(0.1, 0.9, 0.001)
#' negloglike <- function(p){
#' -(sum(Roacheggs$eggs)*log(p) + sum(1 - Roacheggs$eggs)*log(1 - p))
#' }
#' nlm(negloglike, 0.2)
#' rm(negloglike)
#' 
NULL





#' Surface Water Salinity
#' 
#' Surface-water salinity measurements were taken in a bottom-sampling project
#' in Whitewater Bay, Florida. These data are stored in the data frame
#' \code{Salinity}.
#' 
#' 
#' @name Salinity
#' @docType data
#' @format A data frame with 48 observations on the following variable:
#' \describe{ 
#' \item{salinity}{surface-water salinity measurements} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Davis, J. (1986) \emph{Statistics and Data Analysis in Geology}.
#' John Wiley, New York.
#' @keywords datasets
#' @examples
#' 
#' with(data = Salinity, 
#' EDA(salinity))
#' 
NULL





#' Fruit Trees
#' 
#' To estimate the total surface occupied by fruit trees in 3 small areas (R63,
#' R67, and R68) of Navarra (Spain) in 2001, a sample of 47 square segments has
#' been taken. The experimental units are square segments or quadrats of 4
#' hectares, obtained by random sampling after overlaying a square grid on the
#' study domain.  Data are used in Case Study: Fruit Trees, Chapter 12.
#' 
#' 
#' @name satfruit
#' @docType data
#' @format A data frame with 47 observations on the following 17 variables:
#' \describe{ 
#' \item{QUADRAT}{number of the sampled segment or quadrat}
#' \item{SArea}{the small area, a factor with levels \code{R63},
#' \code{R67}, and \code{R68}} 
#' \item{WH}{area classified as wheat in sampled segment} 
#' \item{BA}{area classified as barley in sampled segment} 
#' \item{NAR}{area classified as non arable in sampled segment} 
#' \item{COR}{area classified as corn in sampled segment}
#' \item{SF}{area classified as sunflower in sampled segment}
#' \item{VI}{area classified as vineyard in sampled segment}
#' \item{PS}{area classified as grass in sampled segment}
#' \item{ES}{area classified as asparagus in sampled segment}
#' \item{AF}{area classified as lucerne in sampled segment}
#' \item{CO}{area classified as rape (\emph{Brassica Napus}) in sampled segment} 
#' \item{AR}{area classified as rice in sampled segment}
#' \item{AL}{area classified as almonds in sampled segment}
#' \item{OL}{area classified as olives in sampled segment}
#' \item{FR}{area classified as fruit trees in sampled segment}
#' \item{OBS}{the observed area of fruit trees in sampled segment} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Militino, A. F., \emph{et. al.} (2006) \dQuote{Using Small Area
#' Models to Estimate the Total Area Occupied by Olive Trees.} \emph{Journal of
#' Agricultural, Biological and Environmental Statistics, \bold{11}: 450-461.}
#' @keywords datasets
#' @examples
#' 
#' with(data = satfruit, 
#' pairs(satfruit[ , 15:17]))
#' # Trellis Approach
#' splom(~data.frame(satfruit[ , 15:17]), data = satfruit)
#' 
NULL





#' County IQ
#' 
#' A school psychologist administered the Stanford-Binet intelligence quotient
#' (IQ) test in two counties. Forty randomly selected, gifted and talented
#' students were selected from each county. The Stanford-Binet IQ test is said
#' to follow a normal distribution with a mean of 100 and standard deviation of
#' 16.
#' 
#' 
#' @name SBIQ
#' @docType data
#' @format A data frame with 40 observations on the following 2 variables:
#' \describe{ 
#' \item{County1}{IQ scores for county one}
#' \item{County2}{IQ scores for county two} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = SBIQ, qqnorm(County1))
#' with(data = SBIQ, qqline(County1))
#' # Trellis Approach
#' qqmath(~County1, data = SBIQ, type=c("p", "r"))
#' 
NULL





#' Dopamine Activity
#' 
#' Twenty-five patients with schizophrenia were classified as psychotic or
#' nonpsychotic after being treated with an antipsychotic drug.  Samples of
#' cerebral fluid were taken from each patient and assayed for dopamine
#' b-hydroxylase (DBH) activity. The dopamine measurements for the two groups
#' are in nmol/(ml)(h)/(mg) of protein.
#' 
#' 
#' @name Schizo
#' @docType data
#' @format A data frame with 15 observations on the following 2 variables:
#' \describe{ 
#' \item{nonpsychotic}{dopamine activity level for patients classified nonpsychotic} 
#' \item{psychotic}{dopamine activity level for patients classified psychotic} }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Sternberg, D. E., Van Kammen, D. P., and Bunney,W. E. (1982)
#' \dQuote{Schizophrenia: Dopamine b-Hydroxylase Activity and Treatment
#' Response.} \emph{Science}, \bold{216}: 1423-1425.
#' @keywords datasets
#' @examples
#' 
#' with(data = Schizo, boxplot(nonpsychotic, psychotic,
#' names = c("nonpsychotic", "psychotic"), col = c("green", "red")))
#' 
NULL





#' Standardized Test Scores
#' 
#' Standardized test scores from a random sample of twenty college freshmen.
#' 
#' 
#' @name Score
#' @docType data
#' @format A data frame with 20 observations on the following variable:
#' \describe{ 
#' \item{scores}{standardized test score} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' qqmath(~scores, data = Score, type=c("p", "r"))
#' 
NULL





#' M1 Motorspeedway Times
#' 
#' The times recorded are those for 41 successive vehicles travelling
#' northwards along the M1 motorway in England when passing a fixed point near
#' Junction 13 in Bedfordshire on Saturday, March 23, 1985. After subtracting
#' the times, the following 40 interarrival times reported to the nearest
#' second are stored in \code{SDS4} under the variable \code{Times}.  Data are
#' used in Example 10.17.
#' 
#' 
#' @name SDS4
#' @docType data
#' @format A data frame with 40 observations on the following variable:
#' \describe{ 
#' \item{Times}{interarrival times to the nearest second} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Hand, D. J., \emph{et. al.} (1994) \emph{A Handbook of Small Data
#' Sets}. Chapman & Hall, London.
#' @keywords datasets
#' @examples
#' 
#' with(data = SDS4, hist(Times))
#' 
NULL





#' Simulated Data (Predictors)
#' 
#' Simulated data for five variables.  Data are used with Example 12.21.
#' 
#' 
#' @name SimDataST
#' @docType data
#' @format A data frame with 200 observations on the following 5 variables:
#' \describe{ 
#' \item{Y1}{a numeric vector} 
#' \item{Y2}{a numeric vector} 
#' \item{x1}{a numeric vector} 
#' \item{x2}{a numeric vector} 
#' \item{x3}{a numeric vector} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' xyplot(Y1 ~ x1, data = SimDataST, type=c("p", "smooth"))
#' 
NULL





#' Simulated Data (Logarithms)
#' 
#' Simulated data for four varaibles.  Data are used with Example 12.18.
#' 
#' 
#' @name SimDataXT
#' @docType data
#' @format A data frame with 200 observations on the following 4 variables:
#' \describe{ 
#' \item{Y}{a numeric vector} 
#' \item{x1}{a numeric vector} 
#' \item{x2}{a numeric vector} 
#' \item{x3}{a numeric vector} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' xyplot(Y ~ x1, data = SimDataXT, type=c("p", "smooth"))
#' 
NULL





#' World Cup Soccer
#' 
#' \code{Soccer} contains how many goals were scored in the regulation 90
#' minute periods of World Cup soccer matches from 1990 to 2002. Data are used
#' in Example 4.4.
#' 
#' The World Cup is played once every four years. National teams from all over
#' the world compete. In 2002 and in 1998, thirty-six teams were invited;
#' whereas, in 1994 and in 1990, only 24 teams participated. The data frame
#' \code{Soccer} contains three columns: \code{CGT}, \code{Game}, and
#' \code{Goals}. All of the information contained in \code{Soccer} is
#' indirectly available from the FIFA World Cup website, located at
#' \url{https://www.fifa.com/}.
#' 
#' @name Soccer
#' @docType data
#' @format A data frame with 575 observations on the following 3 variables:
#' \describe{ 
#' \item{CGT}{cumulative goal time in minutes}
#' \item{Game}{game in which goals were scored}
#' \item{Goals}{number of goals scored in regulation period} }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Chu, S. (2003) \dQuote{Using Soccer Goals to Motivate the Poisson
#' Process.} \emph{INFORMS} Transaction on Education, \bold{3}, \bold{2}:
#' 62-68.
#' @keywords datasets
#' @examples
#' 
#' with(data = Soccer, 
#' table(Goals))
#' 
NULL





#' Student Temperature
#' 
#' In a study conducted at Appalachian State University, students used digital
#' oral thermometers to record their temperatures each day they came to class.
#' A randomly selected day of student temperatures is provided in
#' \code{StatTemps}. Information is also provided with regard to subject gender
#' and the hour of the day when the students' temperatures were measured.
#' 
#' 
#' @name StatTemps
#' @docType data
#' @format A data frame with 34 observations on the following 3 variables:
#' \describe{ 
#' \item{temperature}{temperature in farenheit}
#' \item{gender}{a factor with levels \code{Female} and \code{Male}}
#' \item{class}{a factor with levels \code{8 a.m.} and \code{9 a.m.}}
#'  }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' bwplot(gender ~ temperature, data = StatTemps)
#' 
NULL





#' School Satisfaction
#' 
#' A questionnaire is randomly administered to 11 students from State School
#' \code{X} and to 15 students from State School \code{Y} (the results have
#' been ordered and stored in the data frame \code{Stschool}).  Data are used
#' in Example 9.11.
#' 
#' 
#' @name Stschool
#' @docType data
#' @format A data frame with 26 observations on the following 4 variables:
#' \describe{ 
#' \item{X}{satisfaction score}
#' \item{Y}{satisfaction score} 
#' \item{Satisfaction}{combined satisfaction scores} 
#' \item{School}{a factor with levels \code{X} and \code{Y}} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Stschool, 
#' t.test(X, Y, var.equal = TRUE))
#' 
NULL





#' Workstation Comparison
#' 
#' To compare the speed differences between two different brands of
#' workstations (Sun and Digital), the times each brand took to complete
#' complex simulations was recorded. Five complex simulations were selected,
#' and the five selected simulations were run on both workstations. The
#' resulting times in minutes for the five simulations are stored in data frame
#' \code{Sundig}.
#' 
#' 
#' @name Sundig
#' @docType data
#' @format A data frame with 5 observations on the following 3 variables:
#' \describe{ 
#' \item{SUN}{time in seconds for a Sun workstation to complete a simulation} 
#' \item{DIGITAL}{time in seconds for a Digital
#' workstation to complete a simulation} 
#' \item{d}{difference between \code{Sun} and \code{Digital}} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Sundig, 
#' t.test(SUN, DIGITAL, paired = TRUE)$conf)
#' 
NULL





#' Sunflower Defoliation
#' 
#' Seventy-two field trials were conducted by applying four defoliation
#' treatments (non defoliated control, 33\%, 66\%, and 100\%) at different
#' growth stages (\code{stage}) ranging from pre-flowering (1) to physiological
#' maturity (5) in four different locations of Navarra, Spain: Carcastillo (1),
#' Melida (2), Murillo (3), and Unciti (4). There are two response variables:
#' \code{yield} in kg/ha of the sunflower and \code{numseed}, the number of
#' seeds per sunflower head. Data are stored in the data frame
#' \code{sunflower}.  Data used in Case Study: Sunflower defoliation from
#' Chapter 11.
#' 
#' 
#' @name sunflower
#' @docType data
#' @format A data frame with 72 observations on the following 5 variables:
#' \describe{ 
#' \item{location}{a factor with levels \code{A}, \code{B},
#' \code{C}, and \code{D} for locations Carcastillo, Melida, Murillo, and
#' Unciti respectively} 
#' \item{stage}{a factor with levels \code{stage1}, \code{stage2}, \code{stage3}, \code{stage4}, and
#' \code{stage5}} 
#' \item{defoli}{a factor with levels \code{control},
#' \code{treat1}, \code{treat2}, and \code{treat3}}
#' \item{yield}{sunflower yield in kg/ha} 
#' \item{numseed}{number of seeds per sunflower head} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source Muro, J., \emph{et. al.} (2001) \dQuote{Defoliation Effects on
#' Sunflower Yield Reduction.} Agronomy Journal, \bold{93}: 634-637.
#' @keywords datasets
#' @examples
#' 
#' summary(aov(yield ~ stage + defoli + stage:defoli, data = sunflower))
#' 
NULL





#' Surface Area for Spanish Communities
#' 
#' Surface area (km\eqn{\mbox{\textasciicircum}}{^}2) for seventeen autonomous
#' Spanish communities.
#' 
#' 
#' @name SurfaceSpain
#' @docType data
#' @format A data frame with 17 observations on the following 2 variables:
#' \describe{ 
#' \item{community}{a factor with levels \code{Andalucia},
#' \code{Aragon}, \code{Asturias}, \code{Baleares}, \code{C.Valenciana},
#' \code{Canarias}, \code{Cantabria}, \code{Castilla-La Mancha},
#' \code{Castilla-Leon}, \code{Cataluna}, \code{Extremadura}, \code{Galicia},
#' \code{La Rioja}, \code{Madrid}, \code{Murcia}, \code{Navarra}, and
#' \code{P.Vasco}} 
#' \item{surface}{surface area in km\eqn{\mbox{\textasciicircum}}{^}2} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = SurfaceSpain,
#' barplot(surface, names.arg = community, las = 2))
#' # Trellis Approach
#' barchart(community ~ surface, data = SurfaceSpain)
#' 
NULL





#' Swim Times
#' 
#' Swimmers' improvements in seconds for two diets are stored in the data frame
#' \code{Swimtimes}. The values in \code{highfat} represent the time
#' improvement in seconds for swimmers on a high fat diet, and the values in
#' \code{lowfat} represent the time improvement in seconds for swimmers on a
#' low fat diet.  Data are used in Example 10.9.
#' 
#' Times for the thirty-two swimmers for the 200 yard individual medley were
#' taken right after the swimmers' conference meet. The swimmers were randomly
#' assigned to follow one of the diets.  The group on diet 1 followed a low fat
#' diet the entire year but lost two swimmers along the way. The group on diet
#' 2 followed the high fat diet the entire year and also lost two swimmers.
#' 
#' @name Swimtimes
#' @docType data
#' @format A data frame with 14 observations on the following 2 variables:
#' \describe{ 
#' \item{lowfat}{time improvement in seconds}
#' \item{highfat}{time improvement in seconds} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Swimtimes, 
#' wilcox.test(highfat, lowfat))
#' 
NULL





#' Speed Detector
#' 
#' The Yonalasee tennis club has two systems to measure the speed of a tennis
#' ball. The local tennis pro suspects one system (Speed1) consistently records
#' faster speeds. To test her suspicions, she sets up both systems and records
#' the speeds of 12 serves (three serves from each side of the court). The
#' values are stored in the data frame \code{Tennis} in the variables
#' \code{Speed1} and \code{Speed2}. The recorded speeds are in kilometers per
#' hour.
#' 
#' 
#' @name Tennis
#' @docType data
#' @format A data frame with 12 observations on the following 2 variables:
#' \describe{ 
#' \item{Speed1}{speed in kilometers per hour}
#' \item{Speed2}{speed in kilometers per hour} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Tennis, 
#' boxplot(Speed1, Speed2))
#' 
NULL





#' Statistics Grades
#' 
#' Test grades of 29 students taking a basic statistics course
#' 
#' 
#' @name TestScores
#' @docType data
#' @format A data frame with 29 observations on the following variable:
#' \describe{ 
#' \item{grade}{test score}
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = TestScores,
#' EDA(grade))
#' 
NULL





#' Tire Stopping Distances
#' 
#' The data frame \code{Tire} has the stopping distances measured to the
#' nearest foot for a standard sized car to come to a complete stop from a
#' speed of sixty miles per hour. There are six measurements of the stopping
#' distance for four different tread patterns labeled A, B, C, and D. The same
#' driver and car were used for all twenty-four measurements. Data are used in
#' Example 11.1 and 11.2.
#' 
#' 
#' @name Tire
#' @docType data
#' @format A data frame with 24 observations on the following 2 variables:
#' \describe{
#' \item{StopDist}{stopping distance measured to the nearest foot} 
#' \item{tire}{a factor with levels \code{A}, \code{B}, \code{C},
#' and \code{D}} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' summary(aov(StopDist ~ tire, data = Tire))
#' 
NULL





#' Tire Wear
#' 
#' The data frame \code{TireWear} contains measurements for the amount of tread
#' loss after 10,000 miles of driving in thousandths of an inch. Data are used
#' in Example 11.8.
#' 
#' 
#' @name TireWear
#' @docType data
#' @format A data frame with 16 observations on the following 3 variables:
#' \describe{ 
#' \item{Wear}{tread loss measured in thousandths of an inch} 
#' \item{Treat}{a factor with levels \code{A}, \code{B},
#' \code{C}, and \code{D}} 
#' \item{Block}{a factor with levels \code{Car1}, \code{Car2}, \code{Car3}, and \code{Car4}} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' par(mfrow = c(1, 2), cex = 0.8)
#' with(data = TireWear,
#' interaction.plot(Treat, Block, Wear, type = "b", legend = FALSE))
#' with(data = TireWear, 
#' interaction.plot(Block, Treat, Wear, type = "b", legend = FALSE))
#' par(mfrow = c(1, 1), cex = 1)
#' 
NULL





#' Titanic Survival Status
#' 
#' The \code{titanic3} data frame describes the survival status of individual
#' passengers on the Titanic.  The \code{titanic3} data frame does not contain
#' information for the crew, but it does contain actual and estimated ages for
#' almost 80\% of the passengers.
#' 
#' Thomas Cason of UVa has greatly updated and improved the \code{titanic} data
#' frame using the \emph{Encyclopedia Titanica} and created a new dataset
#' called \code{titanic3}. This dataset reflects the state of data available as
#' of August 2, 1999. Some duplicate passengers have been dropped, many errors
#' have been corrected, many missing ages have been filled in, and new
#' variables have been created.
#' 
#' @name titanic3
#' @docType data
#' @format A data frame with 1309 observations on the following 14 variables:
#' \describe{ 
#' \item{pclass}{a factor with levels \code{1st},
#' \code{2nd}, and \code{3rd}} 
#' \item{survived}{Survival (0 = No; 1 = Yes)} 
#' \item{name}{Name} 
#' \item{sex}{a factor with levels
#' \code{female} and \code{male}} 
#' \item{age}{age in years}
#' \item{sibsp}{Number of Siblings/Spouses Aboard}
#' \item{parch}{Number of Parents/Children Aboard}
#' \item{ticket}{Ticket Number} 
#' \item{fare}{Passenger Fare}
#' \item{cabin}{Cabin} 
#' \item{embarked}{a factor with levels
#' \code{Cherbourg}, \code{Queenstown}, and \code{Southampton}}
#' \item{boat}{Lifeboat} 
#' \item{body}{Body IdentificationNumber} 
#' \item{home.dest}{Home/Destination} }
#' @references Harrell, F. E. (2001) \emph{Regression Modeling Strategies with
#' Applications to Linear Models, Logistic Regression, and Survival Analysis}.
#' Springer.
#' @source
#' \url{https://hbiostat.org/data/repo/titanic.html}
#' @keywords datasets
#' @examples
#' 
#' with(titanic3,
#' table(pclass, sex))
#' 
NULL





#' Nuclear Energy
#' 
#' Nuclear energy (in TOE, tons of oil equivalent) produced in 12 randomly
#' selected European countries during 2003
#' 
#' 
#' @name TOE
#' @docType data
#' @format A data frame with 12 observations on the following variable:
#' \describe{ 
#' \item{energy}{nuclear energy measured in tons of oil equivalent} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(TOE,
#' plot(density(energy)))
#' 
NULL





#' Tennis Income
#' 
#' \code{Top20} contains data (in millions of dollars) corresponding to the
#' earnings of 15 randomly selected tennis players whose earnings fall
#' somewhere in positions 20 through 100 of ranked earnings.
#' 
#' 
#' @name Top20
#' @docType data
#' @format A data frame with 15 observations on the following variable:
#' \describe{ 
#' \item{income}{yearly income in millions of dollars} 
#' }
#' @references Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @source \url{https://www.atptour.com/}
#' @keywords datasets
#' @examples
#' 
#' with(data = Top20, 
#' EDA(income))
#' 
NULL





#' Megabytes Downloaded
#' 
#' The manager of a URL commercial address is interested in predicting the
#' number of megabytes downloaded, \code{megasd}, by clients according to the
#' number minutes they are connected, \code{mconnected}. The manager randomly
#' selects (megabyte, minute) pairs, and records the data.  The pairs
#' (\code{megasd}, \code{mconnected}) are stored in the data frame
#' \code{URLaddress}.
#' 
#' 
#' @name URLaddress
#' @docType data
#' @format A data frame with 30 observations on the following 2 variables:
#' \describe{ 
#' \item{megasd}{megabytes dowloaded}
#' \item{mconnected}{number of minutes connected} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' xyplot(mconnected ~ megasd, data = URLaddress, type=c("p", "r"))
#' 
NULL





#' Apartments in Vitoria
#' 
#' Descriptive information and the appraised total price (in Euros) for
#' apartments in Vitoria, Spain.
#' 
#' 
#' @name vit2005
#' @docType data
#' @format A data frame with 218 observations on the following 16 variables:
#' \describe{ 
#' \item{row.labels}{the number of the observation}
#' \item{totalprice}{the market total price (in Euros) of the apartment
#' including garage(s) and storage room(s)} 
#' \item{area}{the total living area of the apartment in square meters} 
#' \item{zone}{a factor
#' indicating the neighborhood where the apartment is located with levels
#' \code{Z11}, \code{Z21}, \code{Z31}, \code{Z32}, \code{Z34}, \code{Z35},
#' \code{Z36}, \code{Z37}, \code{Z38}, \code{Z41}, \code{Z42}, \code{Z43},
#' \code{Z44}, \code{Z45}, \code{Z46}, \code{Z47}, \code{Z48}, \code{Z49},
#' \code{Z52}, \code{Z53}, \code{Z56}, \code{Z61}, and \code{Z62}.}
#' \item{category}{a factor indicating the condition of the apartment
#' with levels \code{2A}, \code{2B}, \code{3A}, \code{3B}, \code{4A},
#' \code{4B}, and \code{5A}.  The factors are ordered so that \code{2A} is the
#' best and \code{5A} is the worst.} 
#' \item{age}{age of the aprtment}
#' \item{floor}{floor on which the apartment is located}
#' \item{rooms}{total number of rooms including bedrooms, dining room,
#' and kitchen} 
#' \item{out}{a factor indicating the percent of the
#' apartment exposed to the elements. The levels \code{E100}, \code{E75},
#' \code{E50}, and \code{E25}, correspond to complete exposure, 75\% exposure,
#' 50\% exposure, and 25\% exposure respectively.}
#' \item{conservation}{is an ordered factor indicating the state of
#' conservation of the apartment.  The levels \code{1A}, \code{2A}, \code{2B},
#' and \code{3A} are ordered from best to worst conservation.}
#' \item{toilets}{the number of bathrooms} 
#' \item{garage}{the number of garages} 
#' \item{elevator}{indicates the absence (0) or
#' presence (1) of elevators.} 
#' \item{streetcategory}{an ordered factor
#' from best to worst indicating the category of the street with levels
#' \code{S2}, \code{S3}, \code{S4}, and \code{S5}} 
#' \item{heating}{a
#' factor indicating the type of heating with levels \code{1A}, \code{3A},
#' \code{3B}, and \code{4A} which correspond to: no heating, low-standard
#' private heating, high-standard private heating, and central heating
#' respectively.} 
#' \item{tras}{the number of storage rooms outside of
#' the apartment}
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' modTotal <- lm(totalprice ~ area + as.factor(elevator) + 
#' area:as.factor(elevator), data = vit2005)
#' modSimpl <- lm(totalprice ~ area, data = vit2005)
#' anova(modSimpl,modTotal)
#' rm(modSimpl, modTotal)
#' 
NULL





#' Waiting Time
#' 
#' A statistician records how long he must wait for his bus each morning.  Data
#' are used in Example 10.4.
#' 
#' 
#' @name Wait
#' @docType data
#' @format A data frame with 15 observations on the following variable:
#' \describe{ 
#' \item{wt}{waiting time in minutes} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Wait,
#' wilcox.test(wt, mu = 6, alternative = "less"))
#' 
NULL





#' Washer Diameter
#' 
#' Diameter of washers.
#' 
#' 
#' @name Washer
#' @docType data
#' @format A data frame with 20 observations on the following variable:
#' \describe{ 
#' \item{diameters}{diameter of washer in cm} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Washer,
#' EDA(diameters))
#' 
NULL





#' Sodium Content of Water
#' 
#' An independent agency measures the sodium content in 20 samples from source
#' \code{X} and in 10 samples from source \code{Y} and stores them in data
#' frame \code{Water}. Data are used in Example 9.12.
#' 
#' 
#' @name Water
#' @docType data
#' @format A data frame with 30 observations on the following 4 variables:
#' \describe{ 
#' \item{X}{sodium content measured in mg/L}
#' \item{Y}{sodium content measured in mg/L}
#' \item{Sodium}{combined sodium content measured in mg/L}
#' \item{Source}{a factor with levels \code{X} and \code{Y}} }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Water,
#' t.test(X, Y, alternative = "less"))
#' 
NULL





#' Wisconsin Card Sorting Test
#' 
#' The following data are the test scores from a group of 50 patients from the
#' \emph{Virgen del Camino} Hospital (Pamplona, Spain) on the Wisconsin Card
#' Sorting Test.
#' 
#' The \dQuote{Wisconsin Card Sorting Test} is widely used by psychiatrists,
#' neurologists, and neuropsychologists with patients who have a brain injury,
#' neurodegenerative disease, or a mental illness such as schizophrenia.
#' Patients with any sort of frontal lobe lesion generally do poorly on the
#' test.
#' 
#' @name WCST
#' @docType data
#' @format A data frame with 50 observations on the following variable:
#' \describe{ 
#' \item{score}{score on the Wisconsin Card Sorting Test} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' densityplot(~score, data = WCST, ref = TRUE)
#' 
NULL





#' Weight Gain in Rats
#' 
#' The data come from an experiment to study the gain in weight of rats fed on
#' four different diets, distinguished by amount of protein (low and high) and
#' by source of pretein (beef and cereal).
#' 
#' The design of the experiment is acompletely randomized with ten rats on each
#' of the four treatments.
#' 
#' @name WeightGain
#' @docType data
#' @format A data frame with 40 observations on the following 4 variables.
#' \describe{ 
#' \item{ProteinSource}{a factor with levels \code{Beef}
#' \code{Cereal}} 
#' \item{ProteinAmount}{a factor with levels \code{High}
#' \code{Low}} 
#' \item{weightgain}{weight gain in grams} 
#' }
#' @source D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski
#' (1994) \emph{A Handbook of Small Datasets}. Chapman and Hall/CRC, London.
#' @keywords datasets
#' @examples
#' 
#' aov(weightgain ~ ProteinSource*ProteinAmount, data = WeightGain)
#' 
NULL





#' Wheat Surface Area in Spain
#' 
#' Seventeen Spanish communities and their corresponding surface area (in
#' hecatares) dedicated to growing wheat
#' 
#' 
#' @name WheatSpain
#' @docType data
#' @format A data frame with 17 observations on the following 3 variables:
#' \describe{ 
#' \item{community}{a factor with levels \code{Andalucia},
#' \code{Aragon}, \code{Asturias}, \code{Baleares}, \code{C.Valenciana},
#' \code{Canarias}, \code{Cantabria}, \code{Castilla-La Mancha},
#' \code{Castilla-Leon}, \code{Cataluna}, \code{Extremadura}, \code{Galicia},
#' \code{La Rioja}, \code{Madrid}, \code{Murcia}, \code{Navarra}, and
#' \code{P.Vasco}} 
#' \item{hectares}{surface area measured in hectares}
#' \item{acres}{surface area measured in acres} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = WheatSpain,
#' boxplot(hectares))
#' 
NULL





#' USA Wheat Surface 2004
#' 
#' USA's 2004 harvested wheat surface by state
#' 
#' 
#' @name wheatUSA2004
#' @docType data
#' @format A data frame with 30 observations on the following 2 variables.
#' \describe{ 
#' \item{STATES}{a factor with levels \code{AR}, \code{CA},
#' \code{CO}, \code{DE}, \code{GA}, \code{ID}, \code{IL}, \code{IN}, \code{KS},
#' \code{KY}, \code{MD}, \code{MI}, \code{MO}, \code{MS}, \code{MT}, \code{NC},
#' \code{NE}, \code{NY}, \code{OH}, \code{OK}, \code{OR}, \code{Other},
#' \code{PA}, \code{SC}, \code{SD}, \code{TN}, \code{TX}, \code{VA}, \code{WA},
#' and \code{WI}} 
#' \item{ACRES}{wheat surface area measured in 1000s of acres} 
#' }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = wheatUSA2004,
#' hist(ACRES))
#' 
NULL





#' Wool Production
#' 
#' Random sample of wool production in kilograms on 5 different days at two
#' different locations
#' 
#' 
#' @name Wool
#' @docType data
#' @format A data frame with 15 observations on the following 2 variables:
#' \describe{ 
#' \item{textileA}{wool production in thousands of kilograms}
#'  \item{textileB}{wool production in thousands of kilograms} 
#'  }
#' @source Ugarte, M. D., Militino, A. F., and Arnholt, A. T. (2008)
#' \emph{Probability and Statistics with R}. Chapman & Hall/CRC.
#' @keywords datasets
#' @examples
#' 
#' with(data = Wool, 
#' t.test(textileA, textileB))
#' 
NULL

#####################################################################################
#' @import e1071 grid lattice
#' @importFrom graphics abline axis box boxplot dotchart hist legend lines mtext par plot plot.design points polygon segments text title
#' @importFrom stats complete.cases dbinom density dnorm fitted fivenum interaction.plot ks.test median pnorm pt qchisq qnorm qqline qqnorm qt quantile rbinom rnorm rstandard sd setNames shapiro.test var
#' @importFrom utils combn
#' @importFrom MASS stdres
NULL


