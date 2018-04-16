context("storage functions not completed")

test_that("error messages returned", {
  expect_error(load_NoSQL())
  expect_error(load_Excel())
  expect_error(load_Json())
  expect_error(load_MySQL())
  expect_error(load_SPSS())
  expect_error(load_XML())
})
