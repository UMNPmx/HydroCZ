test_that("percent works!", {
  expect_equal(z_to_percent(0), "50.00%")
  expect_equal(z_to_percent(0.01), "50.40%")
})
