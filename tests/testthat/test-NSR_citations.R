context("nsr citations")


test_that("example works", {
  # skip_if_offline(host = "r-project.org")


  vcr::use_cassette("nsr_citations", {
    citation_info <- NSR_citations(
      url = url,
      skip_internet_check = TRUE
    )
  })


  # test below assume a data.frame and will be skipped if one isn't returned
  skip_if_not(class(citation_info) == "data.frame")
  expect_gt(object = nrow(citation_info), expected = 2)
})
