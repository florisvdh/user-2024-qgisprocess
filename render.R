library(rprojroot)
gitroot <- find_root(is_git_root)
setwd(gitroot)
dir.create("docs", showWarnings = FALSE)
xfun::Rscript_call(
    rmarkdown::render,
    list(input = "qgisprocess_foss4g.Rmd",
         output_file= file.path(gitroot,
                                "docs/index"))
)
