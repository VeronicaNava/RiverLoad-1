\name{rating.period}
\alias{rating.period}
\title{
Load estimation with log log rating curve based on monthly or annual relationship}
\description{
Estimate the load using a monthly or annual based log-log rating curve between values of concentration and river flow at the time of sampling (Quilbe' et al., 2006). Multiple regression analyses are performed. The estimation is performed on the time period spanned by flow records.}
\usage{
rating.period(db, ncomp, period)
}
\arguments{
  \item{db}{
An input data frame with at least three column. A column with DateTime in standard format (yyyy-mm-dd HH:MM:SS) labeled "datetime", a column with flow records in cubic meter per second labeled "flow", and columns with scattered concentration data in milligram per litre. Alternatively, it can be used the output matrix of the function db.union.}
  \item{ncomp}{
Number of compounds in the input data frame for which the load must be estimated.}
  \item{period}{
A mandatory argument that specify the time period in which the regression relationship must be calculated. It can be "month" for a monthly estimation of load, or it can be "year" for annual estimation of load.}
}
\value{
A matrix with the estimated load for the different compounds. If the optional argument is equal to "month", the load values are reported by month in different rows. If the optional argument is equal to "year", the load values are reported by year in different rows. The load is expressed in gram per period of estimation.
}
\references{
Quilbe', R., Rousseau, A. N., Duchemin, M., Poulin, A., Gangbazo, G., & Villeneuve, J. P. (2006). Selecting a calculation method to estimate sediment and nutrient loads in streams: Application to the Beaurivage River (Quebec, Canada). Journal of Hydrology, 326(1-4), 295-310. https://doi.org/10.1016/j.jhydrol.2005.11.008
}
\author{
Veronica Nava}

\seealso{
\code{\link{db.union}}
\code{\link{rating}}
\code{\link{rsquared.period}}
}
\examples{
data("flow.data2","conc.data2")
union<-db.union(flow.data2, conc.data1)
reg.periodM<-rating.period(union, 1, "month")
reg.periodY<-rating.period(union, 1, "year")
}
\keyword{regression}
