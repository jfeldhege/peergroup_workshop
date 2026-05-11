# Packages ----------------------------------------------------------------

# install.packages(c("devtools", "usethis"))

# Create package ----------------------------------------------------------

usethis::create_package(path = "peergroup")

# Declare Dependencies ----------------------------------------------------

# Declare package dependency
usethis::use_package("ds4psy")

# R dependency
usethis::use_package("R", type = "Depends", min_version = "4.1")

# Description -------------------------------------------------------------

usethis::use_description(
  fields = list(
    Language = "en",
    Title = "A package for the Peergroup workshop",
    Description = "Functions created during the Peergroup workshop on 13.05.2026"
  )
)


usethis::use_author(
  given = "Last_name",
  family = "First_name",
  role = c("aut", "cre", "cph"),
  email = "name@email.com",
  comment = c(ORCID = "1234")
)
