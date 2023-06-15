library(rprojroot)
gitroot <- find_root(is_git_root)
setwd(gitroot)
dir.create("docs", showWarnings = FALSE)
xfun::Rscript_call(
    rmarkdown::render,
    list(input = "qgisprocess_foss4g.Rmd",
         output_file= "index")
)
unlink("docs/index_files", recursive = TRUE)
unlink("docs/libs/header-attrs", recursive = TRUE)
unlink("docs/libs/remark-css", recursive = TRUE)
file.rename("index.html", "docs/index.html")
file.rename("index_files", "docs/index_files")
file.rename("libs/header-attrs", "docs/libs/header-attrs")
file.rename("libs/remark-css", "docs/libs/remark-css")
unlink("libs", recursive = TRUE)
