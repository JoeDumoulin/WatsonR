% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/watson.alchemy.R
\name{watson.alchemy.combined}
\alias{watson.alchemy.combined}
\title{WatsonR - Alchemy Language COMBINED Calles}
\usage{
watson.alchemy.combined(creds, utterance)
}
\arguments{
\item{creds}{json file containing the alchemy api key to use for this call}

\item{utterance}{String to be Analyzed by Alchemy's combined call}
}
\value{
JSON formatted like this http://www.alchemyapi.com/api/combined/textc.html
}
\description{
Alchemy Language Functions -- Receives text and returns MULTPLE Features like keyword, entity, sentiment, tone
}
