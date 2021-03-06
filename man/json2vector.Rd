% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/other_functions.R
\name{json2vector}
\alias{json2vector}
\title{Convert JSON string to vector (data.frame with 1 row)}
\usage{
json2vector(json)
}
\arguments{
\item{json}{Character. JSON string. Example of a string: '{"feat1": 
null, "feat2": "M"}'}
}
\description{
This function lets the user transform a JSON string into vector 
(data.frame with 1 row). You can also pass a Python's dictionary.
}
\seealso{
Other Tools: 
\code{\link{autoline}()},
\code{\link{bindfiles}()},
\code{\link{bring_api}()},
\code{\link{db_download}()},
\code{\link{db_upload}()},
\code{\link{export_plot}()},
\code{\link{export_results}()},
\code{\link{get_credentials}()},
\code{\link{get_currency}()},
\code{\link{h2o_predict_API}()},
\code{\link{h2o_predict_MOJO}()},
\code{\link{h2o_predict_binary}()},
\code{\link{h2o_predict_model}()},
\code{\link{h2o_selectmodel}()},
\code{\link{h2o_update}()},
\code{\link{haveInternet}()},
\code{\link{image_metadata}()},
\code{\link{importxlsx}()},
\code{\link{ip_country}()},
\code{\link{iter_seeds}()},
\code{\link{listfiles}()},
\code{\link{mailSend}()},
\code{\link{msplit}()},
\code{\link{myip}()},
\code{\link{pass}()},
\code{\link{quiet}()},
\code{\link{read.file}()},
\code{\link{slackSend}()},
\code{\link{statusbar}()},
\code{\link{try_require}()},
\code{\link{updateLares}()},
\code{\link{zerovar}()}
}
\concept{Tools}
