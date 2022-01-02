######## Experiment 2 ########

# Description/Goal of experiment: To investigate what the effect would be if L2 regularization is applied.

# 1. Defining Flags we are going to use

FLAGS <- flags(flag_integer('dense_units', 64),
               flag_integer('batch_size', 5),
               flag_integer('epochs', 67),
               flag_numeric("lambda", 0.001)
)

# 2. Defining Model for experiment

model <- keras_model_sequential() %>%
  layer_dense(units = FLAGS$dense_units, 
              activation = 'relu', 
              input_shape = c(21),
              kernel_regularizer = regularizer_l2(l = FLAGS$lambda)) %>%
  layer_dense(units = 2, activation = 'softmax')

# 3. Compile model

model %>% compile(loss = 'categorical_crossentropy',
                  optimizer = 'adam',
                  metrics = list('accuracy',metric_precision(), metric_recall(), metric_auc()))

# 4. Fit model

history <- model %>% 
  fit(train_transactional_features_nn,
      train_target_nn,
      epochs = FLAGS$epochs,
      batch_size = FLAGS$batch_size,
      validation_split = 0.3)
