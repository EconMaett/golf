#' Report my favorite letters
#' @export
mfl2 <- function() {
  return(the$favorite_letters)
}


#' Change my favorite letters
#' @export
set_mfl2 <- function(l = letters[24:26]) {
  old <- the$favorite_letters
  the$favorite_letters <- l
  invisible(old)
}
# END
