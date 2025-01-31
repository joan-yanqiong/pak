% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sysreqsdocs.R
\name{sysreqs_list_system_packages}
\alias{sysreqs_list_system_packages}
\title{List installed system packages}
\usage{
sysreqs_list_system_packages()
}
\value{
Data frame with columns:
  * `status`. two or three characters, the notation of `dpkg` on Debian
    based systems. `"ii"` means the package is correctly installed.
    On `RPM` based systems it is always `"ii"` currently.
  * `package`: name of the system package.
  * `version`: installed version of the system package.
  * `capabilities`: list column of character vectors, the capabilities
    provided by the package.
}
\description{
List installed system packages
}
\details{
This function uses the `sysreqs_platform` configuration option,
see \eval{man_config_link("Configuration")}. Set this if
`r pak_or_pkgdepends()` does not detect your platform correctly.
}
\examples{
\dontshow{if (Sys.getenv("IN_PKGDOWN") == "true" && Sys.info()[["sysname"]] == "Linux") (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
sysreqs_list_system_packages()[1:10,]
\dontshow{\}) # examplesIf}
}
\seealso{
Other system requirements functions: 
\code{\link{pkg_sysreqs}()},
\code{\link{sysreqs_check_installed}()},
\code{\link{sysreqs_db_list}()},
\code{\link{sysreqs_db_match}()},
\code{\link{sysreqs_db_update}()},
\code{\link{sysreqs_is_supported}()},
\code{\link{sysreqs_platforms}()}
}
\concept{system requirements functions}
