% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_env_data.R
\name{get_env_data}
\alias{get_env_data}
\title{Get raster values for each unique location in a data frame.}
\usage{
get_env_data(ras, df, x = "long", y = "lat", crs_df = 4326)
}
\arguments{
\item{ras}{Either SpatRaster or path(s) from which to create SpatRaster.}

\item{df}{Dataframe with \code{x} and \code{y}.}

\item{x, y}{Columns in \code{df} with x and y coordinates.}

\item{crs_df}{Coordinate reference system for \code{x} and \code{y}. Passed to the
\code{crs} argument of \code{\link[sf:st_as_sf]{sf::st_as_sf()}}.}
}
\value{
\code{out_file} written to disk and corresponding dataframe with columns
\itemize{
\item{\code{x}}{Same as \code{x}.}
\item{\code{y}}{Same as \code{y}.}
\item{name}{Concept being extracted - often the same as \code{file}.}
\item{value}{Value of the raster at \code{x} and \code{y} coordinates.}
\item{layer}{Layer from multiband raster. Will be \code{1} for single band
raster.}
\item{source}{Full path to raster.}
\item{file}{filename component of \code{source}.}
}
}
\description{
Get raster values for each unique location in a data frame.
}
