context("example")

test_that("example of a test runs as expected", {
  expect_silent(my_plot(5))
  unlink("Rplots.pdf")
})