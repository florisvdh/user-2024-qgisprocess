Sys.setenv(PAGEDOWN_CHROME = "/usr/bin/chromium")
Sys.setenv(CHROMOTE_CHROME = "/usr/bin/chromium")

library(rprojroot)
gitroot <- find_root(is_git_root)
setwd(file.path(gitroot, "docs"))
renderthis::to_pdf(from = "index.html", to = "qgisprocess_foss4g.pdf")
