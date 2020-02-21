install.packages("AmesHousing")
library(AmesHousing)
install.packages("tidymodels")
library(tidymodels)

ames<- AmesHousing::make_ames()

lm_ames <- lm(Sale_Price ~ Gr_Liv_Area, data= ames)
broom::tidy(lm_ames)

library(parsnip)

lm_spec <- parsnip::linear_reg() %>%
  parsnip::set_engine("lm")

lm_fit <- parsnip::fit(lm_spec,
                       Sale_Price ~ Gr_Liv_Area,
                       data= ames)

broom::tidy(lm_fit)
