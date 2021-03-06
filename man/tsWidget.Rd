% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tsWidget.R
\name{tsWidget}
\alias{tsWidget}
\title{tsWidget}
\usage{
tsWidget(
  rtData = NULL,
  activeArea = NULL,
  activeTime = "all",
  runDate = NULL,
  width = 900,
  elementId = NULL,
  dryRun = FALSE,
  downloadUrl = NULL,
  ts_color_ref = NULL
)
}
\arguments{
\item{rtData}{data.frame, rt estimates in the format {'Source':{'rtData':x, 'casesInfectionData':x, 'casesReportData':x, 'obsCasesData':x}, ...}}

\item{activeArea}{character, the default area to plot.}

\item{activeTime}{character, the default time window (defaults to 'all')}

\item{runDate}{character, date of estimate run in the format ('YYYY-MM-DD')}

\item{width}{integer, width in pixels}

\item{elementId}{string, id of element}

\item{dryRun}{Logical, defaults to FALSE. Should the function be tested without the widget being created.}

\item{downloadUrl}{string, optional URL to download datasets}

\item{ts_color_ref}{list, default reference for time series plots. See default_ts_colors for format.
Useful for checking the integrity of input data.}
}
\description{
Create a time series widget of Rt data
}
