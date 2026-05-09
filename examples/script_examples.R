# Setup -------------------------------------------------------------------

#install.packages(c("tidyverse", "ds4psy"))

# Dataset for today's workshop --------------------------------------------

?ds4psy::posPsy_AHI_CESD

pospsy <- ds4psy::posPsy_AHI_CESD


# Repeated application of the same function -------------------------------

range(pospsy$cesd01)

pospsy$cesd01r <- pospsy$cesd01 - 1
pospsy$cesd02r <- pospsy$cesd02 - 1
pospsy$cesd03r <- pospsy$cesd03 - 1
pospsy$cesd04r <- pospsy$cesd04 - 1


# Styling code with `lintr` -----------------------------------------------

# lintr::lint()

# Example for badly formatted code
pospsy$cesd01r <- pospsy$cesd01 - 1


names(lintr::linters_with_defaults())
