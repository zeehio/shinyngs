test_that("htmlwidget_preload_deps returns dependencies without erroring", {
  deps <- htmlwidget_preload_deps()

  expect_true(is.list(deps))
  expect_true(length(deps) > 0)
  expect_true(all(vapply(deps, inherits, logical(1), what = "html_dependency")))
})
