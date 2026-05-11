# Create file for function ------------------------------------------------

usethis::use_r("calc_cesd")

calc_cesd <- function(x) {
  x - 1
}


# Document functions -----------------------------------------------------

devtools::document()


# Load and test functions -------------------------------------------------

devtools::load_all()

popsy <- ds4psy::posPsy_long

calc_cesd(popsy$cesd01)

# Check -------------------------------------------------------------------

#needed on some computers to prevent error message
Sys.setenv('_R_CHECK_SYSTEM_CLOCK_' = 0)

devtools::check()


# Build -------------------------------------------------------------------

devtools::build()


# Install -----------------------------------------------------------------

install.packages("path_to_file", repos = NULL, type = "source")


# Optional ----------------------------------------------------------------

# Add data to package -----------------------------------------------------

popsy <- ds4psy::posPsy_long

usethis::use_data(popsy)

usethis::use_r("data")
