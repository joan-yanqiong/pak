% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package.R
\name{pkg_download}
\alias{pkg_download}
\title{Download a package and its dependencies}
\usage{
pkg_download(
  pkg,
  dest_dir = ".",
  dependencies = FALSE,
  platforms = NULL,
  r_versions = NULL
)
}
\arguments{
\item{pkg}{Package names or package references. E.g.
  - `ggplot2`: package from CRAN, Bioconductor or a CRAN-like repository
    in general,
  - `tidyverse/ggplot2`: package from GitHub,
  - `tidyverse/ggplot2@v3.4.0`: package from GitHub tag or branch,
  - `https://examples.com/.../ggplot2_3.3.6.tar.gz`: package from URL,
  - `.`: package in the current working directory.

  See "[Package sources]" for more details.}

\item{dest_dir}{Destination directory for the packages. If it does not
exist, then it will be created.}

\item{dependencies}{What kinds of dependencies to install. Most commonly
one of the following values:
- `NA`: only required (hard) dependencies,
- `TRUE`: required dependencies plus optional and development
  dependencies,
- `FALSE`: do not install any dependencies. (You might end up with a
  non-working package, and/or the installation might fail.)
See [Package dependency types] for other possible values and more
information about package dependencies.}

\item{platforms}{Types of binary or source packages to download. The
default is the value of [pkgdepends::default_platforms()].}

\item{r_versions}{R version(s) to download packages for. (This does not
matter for source packages, but it does for binaries.) It defaults to
the current R version.}
}
\value{
Data frame with information about the downloaded
  packages, invisibly. Columns:
  \eval{include_docs("pkgdepends", "docs/download-result.rds")}
}
\description{
TODO: explain result
}
\section{Examples}{


```{asciicast pkg-download}
dl <- pkg_download("forcats")
```

```{asciicast pkg-download-2}
dl
```

```{asciicast pkg-download-3}
dl$fulltarget
```

```{asciicast pkg-download-4}
pkg_download("r-lib/pak", platforms = "source")
```
}

\seealso{
Other package functions: 
\code{\link{lib_status}()},
\code{\link{pak}()},
\code{\link{pkg_deps_tree}()},
\code{\link{pkg_deps}()},
\code{\link{pkg_install}()},
\code{\link{pkg_load}()},
\code{\link{pkg_remove}()},
\code{\link{pkg_status}()},
\code{\link{pkg_sysreqs}()}
}
\concept{package functions}
