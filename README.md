Do you like the interactivity of [Shiny apps](http://shiny.rstudio.com/)? Do you also like the modularity and [unit testing](http://r-pkgs.had.co.nz/tests.html) of [R packages](http://r-pkgs.had.co.nz/)? If you follow this example, your next project can be both!

# It's a Shiny app!

The customary [`app.R`](http://shiny.rstudio.com/articles/single-file.html) in the root directory, so you can launch the project as a Shiny app on a server as is. No package installation is required. Instead, `devtools::load_all()` in `app.R` automatically loads all the supplementary R scripts and data files required.

# It's a package!

Since `app.R` is listed in `.Rbuildignore`, you can install the package as is.

```r
install_github("wlandau/appPackage")
```

Then, you can run the Shiny app locally.

```r
library(appPackage)
my_app()
```
