## code to prepare `DATASET` dataset goes here

lookup_table <- dplyr::tribble(
  ~where, ~english,
  "beach",     "US",
  "coast",     "US",
  "seashore",     "UK",
  "seaside",     "UK"
)

usethis::use_data(lookup_table, overwrite = TRUE, internal = TRUE)
# END
