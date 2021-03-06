% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_meso_region.R
\name{read_meso_region}
\alias{read_meso_region}
\title{Download shape files of meso region as sf objects. Data at scale 1:250,000, using Geodetic reference system "SIRGAS2000" and CRS(4674)}
\usage{
read_meso_region(
  code_meso = "all",
  year = 2010,
  simplified = TRUE,
  showProgress = TRUE
)
}
\arguments{
\item{code_meso}{The 4-digit code of a meso region. If the two-digit code or a two-letter uppercase abbreviation of
a state is passed, (e.g. 33 or "RJ") the function will load all meso regions of that state. If code_meso="all", all meso regions of the country are loaded.}

\item{year}{Year of the data (defaults to 2010)}

\item{simplified}{Logic FALSE or TRUE, indicating whether the function returns the
data set with 'original' resolution or a data set with 'simplified' borders (Defaults to TRUE).
For spatial analysis and statistics users should set simplified = FALSE. Borders have been
simplified by removing vertices of borders using st_simplify{sf} preserving topology with a dTolerance of 100.}

\item{showProgress}{Logical. Defaults to (TRUE) display progress bar}
}
\description{
Data at scale 1:250,000, using Geodetic reference system "SIRGAS2000" and CRS(4674)
}
\examples{
\dontrun{

library(geobr)

# Read specific meso region at a given year
  meso <- read_meso_region(code_meso=3301, year=2018)

# Read all meso regions of a state at a given year
  meso <- read_meso_region(code_meso=12, year=2017)
  meso <- read_meso_region(code_meso="AM", year=2000)

# Read all meso regions of the country at a given year
  meso <- read_meso_region(code_meso="all", year=2010)

}

}
\seealso{
Other general area functions: 
\code{\link{read_amazon}()},
\code{\link{read_biomes}()},
\code{\link{read_census_tract}()},
\code{\link{read_conservation_units}()},
\code{\link{read_country}()},
\code{\link{read_health_region}()},
\code{\link{read_immediate_region}()},
\code{\link{read_intermediate_region}()},
\code{\link{read_micro_region}()},
\code{\link{read_municipality}()},
\code{\link{read_neighborhood}()},
\code{\link{read_region}()},
\code{\link{read_semiarid}()},
\code{\link{read_state}()},
\code{\link{read_statistical_grid}()},
\code{\link{read_weighting_area}()}
}
\concept{general area functions}
