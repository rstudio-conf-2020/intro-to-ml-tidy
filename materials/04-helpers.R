library(tidyverse)
library(workflows)
library(tidymodels)

# make the fake data
unicorns <- tibble(
  unicorn = as.factor(sample(0:1, 500, replace = TRUE)), 
  n_butterflies = sample(1:50, 500, replace = TRUE),
  n_kittens = sample(1:50, 500, replace = TRUE)
)

# simple split
uni_split <- initial_split(unicorns)

# good ones- 12, 15, 17, 19
predict_with_tree <- function(seed = 1, test_row = 1, split = uni_split) {
  boot_test <- testing(uni_split)
  
  # Make learner
  tmp_tree_lnr <-
    decision_tree() %>%         
    set_engine("rpart", model = TRUE) %>%      
    set_mode("classification") %>% 
    set_args(min_n = 3,
             cost_complexity = 0,
             tree_depth = 10) 
  
  # Make workflow
  temp_flow <- 
    workflow() %>% 
    add_model(tmp_tree_lnr) %>% 
    add_formula(unicorn ~ .) 
  
  # Begin resampling
  set.seed(seed)
  boot_train <- training(uni_split) %>% 
    bootstraps(times = 1) %>% 
    pluck("splits", 1) %>% 
    training()
  
  set.seed(seed)
  boot_fit <- fit(temp_flow, data = boot_train)
  
  boot_preds <- predict(boot_fit, new_data = boot_test) %>% 
    bind_cols(predict(boot_fit, new_data = boot_test, type = "prob")) %>% 
    bind_cols(boot_test %>% select(unicorn)) %>% 
    mutate(test_row = dplyr::row_number(),
           seed = {{ seed }})
  
  boot_preds %>% 
    filter(test_row == {{ test_row }}) %>% 
    select(seed, test_row, starts_with(".pred"), unicorn)
}

get_boot_fit <- function(seed = 1, split = uni_split) {
  get_boot_tree(seed, split) %>% 
    pluck("fit") 
}

get_boot_pred <- function(seed = 1, row = 1, split = uni_split) {
  boot_fit <- get_boot_tree(seed, split) 
  predict(boot_fit, 
          new_data = testing(uni_split) %>% 
            slice({{ row }}))
}

get_boot_votes <- function(seed = 1, team = 1) {
  tree <- bootstrap_tree(seed)
  mini_test <- so_test %>% 
    mutate(obs = row_number()) %>% 
    group_by(remote) %>% 
    slice(team)
  preds <- 
    tree %>% 
    predict(mini_test, type = "class") %>% 
    enframe(name = "row_num", value = "guess") %>% 
    bind_cols(select(mini_test, remote, obs))
  preds
}