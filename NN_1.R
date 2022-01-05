######## Neural network 1 (NN_1) ########

# Description/Goal of experiment: Finding the right regularisation  

# 1. Defining Flags we are going to use

FLAGS <- flags(flag_numeric("lambda", exp(-7))
)

# 2. Defining Model for experiment

model <- keras_model_sequential() %>%
  layer_dense(units = 8, 
              activation = 'relu', 
              input_shape = c(48),
              kernel_regularizer = regularizer_l2(l = FLAGS$lambda)) %>%
  layer_dense(units = 2, activation = 'softmax')

# 3. Compile model

model %>% compile(loss = 'categorical_crossentropy',
                  optimizer = 'adam',
                  metrics = list('accuracy',metric_precision(), metric_recall(), metric_auc()))

# 4. Fit model

history <- model %>% 
  fit(train_all_features_nn,
      train_target_nn,
      epochs = 20,
      batch_size = 100,
      validation_split = 0.3)
