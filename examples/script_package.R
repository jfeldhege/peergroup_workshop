# Packages ----------------------------------------------------------------

# install.packages(c("devtools", "usethis"))

# Create package ----------------------------------------------------------

usethis::create_package("")

# Declare Dependencies ----------------------------------------------------

# Declare package dependency
usethis::use_package("")

# R dependency
usethis::use_package("R", type = "Depends", min_version = "4.1")

# Description -------------------------------------------------------------

usethis::use_description(
  fields = list(
    Language = "en",
    Title = "",
    Description = ""
  )
)


usethis::use_author(
  given = "",
  family = "",
  role = c("aut", "cre", "cph"),
  email = "",
  comment = c(ORCID = "")
)


# Document functions -----------------------------------------------------

devtools::document()


# Load and test functions -------------------------------------------------

devtools::load_all()


# Check -------------------------------------------------------------------

#needed on some computers to prevent error message
Sys.setenv('_R_CHECK_SYSTEM_CLOCK_' = 0)

devtools::check()


# Build -------------------------------------------------------------------

devtools::build()
