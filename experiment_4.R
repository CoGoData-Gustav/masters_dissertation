######## Experiment 4 ########

# Description/Goal of experiment: To investigate what the effect would be if L2 regularization is applied.

# 1. Defining Flags we are going to use

FLAGS <- flags(flag_integer('dense_units', 32),
               flag_integer('batch_size', 100),
               flag_integer('epochs', 23),
               flag_numeric("lambda", 0.01),
               flag_string("optimizer", "adam")
)

# 2. Defining Model for experiment

model <- keras_model_sequential() %>%
  layer_dense(units = FLAGS$dense_units, 
              activation = 'relu', 
              input_shape = c(27),
              kernel_regularizer = regularizer_l2(l = FLAGS$lambda)) %>%
  layer_dense(units = 2, activation = 'softmax')

# 3. Compile model

model %>% compile(loss = 'categorical_crossentropy',
                  optimizer = FLAGS$optimizer,
                  metrics = list('accuracy',metric_precision(), metric_recall(), metric_auc()))

# 4. Fit model

history <- model %>% 
  fit(train_network_features_nn,
      train_target_nn,
      epochs = FLAGS$epochs,
      batch_size = FLAGS$batch_size,
      validation_split = 0.3)
