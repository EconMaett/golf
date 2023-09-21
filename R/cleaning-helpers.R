# cleaning-helpers.R
english <- temp <- lookup_table <-  NULL

#' @export
localize_beach <- function(dat) {
  dplyr::left_join(x = dat, y = lookup_table, copy = TRUE)
}

f_to_c <- function(x) (x - 32) * 5/9

#' @export
celsify_temp <- function(dat) {
  dplyr::mutate(dat, temp = dplyr::if_else(english == "US", f_to_c(temp), temp))
}

timestamp <- function(time = Sys.time()) {
  withr::with_locale(
    new = c("LC_TIME" = "C"),
    code = format(time, "%Y-%B-%d_%H-%M-%S", tz = "UTC")
  )
}

#' @export
outfile_path <- function(infile, time = Sys.time()) {
  ts <- timestamp(time)
  paste0(ts, "_", sub("(.*)([.]csv$)", "\\1_clean\\2", infile))
}

# END
