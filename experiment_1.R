# 1. Defining Flags we are going to use

FLAGS <- flags(flag_integer('dense_units', 8),
               flag_integer('batch_size', 10),
               flag_integer('epochs', 5)
               )

# 2. Defining Model for experiment

model <- keras_model_sequential() %>%
  layer_dense(units = FLAGS$dense_units, activation = 'relu', input_shape = c(27)) %>%
  layer_dense(units = 2, activation = 'softmax')

# 3. Compile model

model %>% compile(loss = 'categorical_crossentropy',
                  optimizer = 'adam',
                  metrics = list('accuracy',metric_precision(), metric_recall(), metric_auc()))

# 4. Fit model

history <- model %>% 
  fit(train_network_features_nn,
      train_target_nn,
      epochs = FLAGS$epochs,
      batch_size = FLAGS$batch_size,
      validation_split = 0.3)
