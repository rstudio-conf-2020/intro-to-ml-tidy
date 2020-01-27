library(workflows)

get_boot_trees <- function(seed = 1, tree_depth = 4) {
  # Make recipe
  so_rec <- 
    recipe(remote ~ ., 
           data = stackoverflow) 
  
  # Make learner
  tmp_tree_lnr <-
    decision_tree(tree_depth = tree_depth) %>%         
    set_engine("rpart", model = TRUE) %>%      
    set_mode("classification")
  
  # Make workflow
  temp_flow <- 
    workflow() %>% 
    add_model(tmp_tree_lnr) %>% 
    add_recipe(so_rec) 
  
  # Begin resampling
  set.seed(seed)
  so_boots <- so_train %>% 
    bootstraps(times = 1) %>% 
    pluck("splits", 1)
  
  boot_fit <- temp_flow %>% 
    fit(data = analysis(so_boots)) %>% 
    pull_workflow_fit() %>% 
    pluck("fit")
  
  boot_fit
}

get_boot_votes <- function(seed = 1, team = 1) {
  tree <- get_boot_trees(seed)
  set.seed(seed * team)
  start <- sample((nrow(so_test)/2 - 4), 1)
  mini_test <- so_test %>% 
    mutate(obs = row_number()) %>%  
    group_by(remote) %>% 
    slice(start:(start + 4))
  preds <- 
    tree %>% 
    predict(mini_test, type = "class") %>% 
    enframe(name = "row_num", value = "estimate") %>% 
    bind_cols(select(mini_test, truth = remote, obs)) %>% 
    select(obs, truth, estimate)
  preds
}