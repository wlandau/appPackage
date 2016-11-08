Do you like the interactivity of [Shiny apps](http://shiny.rstudio.com/)? Do you also like the modularity and [unit testing](http://r-pkgs.had.co.nz/tests.html) of [R packages](http://r-pkgs.had.co.nz/)? Check out this small example to get the best of both worlds.

# It's a Shiny app!

The customary [`app.R`](http://shiny.rstudio.com/articles/single-file.html) is in the root directory, so you can launch the project as a Shiny app on a server as is. No package installation is required. Instead, `devtools::load_all()` in `app.R` automatically loads all the required R scripts and data files.

# It's a package!

Since `app.R` is listed in [`.Rbuildignore`](http://r-pkgs.had.co.nz/package.html), you can install the package as is.

```r
install_github("wlandau/appPackage")
```

Then, you can run the Shiny app locally.

```r
library(appPackage)
my_app()
```

# But what if my app uses compiled code?

Follow the [CRAN directions](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#System-and-foreign-language-interfaces) to build your package on top of C, Fortran, or whatever compiled language you're using. Then, all you need is an `app.R` that installs the package on the server and then launches your app with a function call. For this example, the server-side `app.R` would look like this.

```r
install_github("wlandau/appPackage")
library(appPackage)
my_app()
```

Here, feel free to discard the `app.R` inside the package and remove the `app.R` listing from `.Rbuildignore`.
