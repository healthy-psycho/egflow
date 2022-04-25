## Targets & related
library(targets)
library(tarchetypes)

## Language utilities
library(assertthat)
library(assertr)
library(conflicted)
library(dplyr)
library(dotenv)
library(emmeans)
library(forcats)
library(glue)
library(kableExtra)
library(logger)
library(magrittr)
library(purrr)
library(rmarkdown)
library(sjlabelled)
library(tidyverse)
library(validate)

## File I/O
library(rio)

## Ggplot & other graphics
library(chroma)
library(cowplot)
library(ggplot2)
library(ggpubr)
library(interactions)

## Model explorers
library(broom)
library(broom.mixed)
library(ggeffects)
library(modelsummary)
library(skimr)
library(sjPlot)

## Models & descriptives
library(corx)
library(lme4)
library(lmerTest)

## Service(s) & APIs
library(airtabler)
library(DBI)
library(RPostgres)

conflicted::conflict_prefer("filter", "dplyr")
conflicted::conflict_prefer("lag", "dplyr")
conflicted::conflict_prefer("data_frame", "tibble")
conflicted::conflict_prefer("lmer", "lme4")