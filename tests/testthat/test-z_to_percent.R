test_that("percent works!", {
  expect_equal(z_to_percent(0),    cat("Percentage:", "50.00%"))
  expect_equal(z_to_percent(0.01), cat("Percentage:", "50.40%"))
  expect_equal(z_to_percent(-0.1), cat("Percentage:","46.02%"))
  expect_equal(z_to_percent(0.1),  cat("Percentage:", "53.98%"))
})
