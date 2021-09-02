context("Installed")

test_that("bdutilities.app", {
  expect_equal(length(mod_citation_ui("temp", "bdutilities.app")), 1)
})
