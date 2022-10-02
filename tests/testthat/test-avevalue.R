test_that("ave_value() works", {
  expect_equal(nrow(ave_value(input_state = "AL")), 1)
})
