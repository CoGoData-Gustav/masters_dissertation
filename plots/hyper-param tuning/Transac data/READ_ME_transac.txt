#### Remarks on Transactional Data hyper-parameter tuning results ####

### Experiment 1 ###

exp_1_box_neurons_batch_size.png
# Finding:  i) Validation accuracy seems to decrease with increase of batch sizes for all hidden neurons investigated. 
ii) Generally it seems that batch size of 10 is delivering the best performance. Specifically with hidden neuron sizes of 322,64,128.
# Conclusion: Consider using range for batch sizes 80-100.

exp_1_box_neurons_epochs_size.png
# Finding: i) Overall, the val acc. increases as the number of epochs increase. 
Generally most of the results indicate that at 75 epochs the validation accuracy is plateauing. 
Again, the higher number hidden units 32,64, and 128 seems to perform better at higher epoch values. 
# Conclusion: Consider using a epochs of 67-75 (even higher) with 64 and 128 hidden units

exp_1_generalisation_scat_epoch_neurons
# Findings: i) Points (models) become more clustered at the top right hand side indicating that the higher epochs are porducing more generalised models.
ii) Seem like the purple (128) and blue (64 units) points are prominent in the upper right hand corners of the plots. 
# Conclusion: Use +/- 75 epochs with hidden layer units 64 or 128

exp_1_bars_90th_perc
Hidden layer units:  Use 128 or 64
Batch sizes: 10 or 20
Epochs: 75 or 67

### Experiment 2 ###

exp_2_box_lambda_batch_size.png
# Finding: 
# Conclusion: 

exp_2_box_lambda_epochs.png

# Finding: 
# Conclusion:

exp_2_box_lambda_neurons.png

# Finding: 
# Conclusion: 

exp_2_bars_90th_perc.png
lambda:
Hidden layer units: 
Bach sizes: 
epochs: 

### Experiment 3 ###

exp_3_comp.jpg

# Conclusion:

  
### Experiment 4 ###

# Finding: 
# Conclusion:

### Experiment 5 ###

# Finding: 
# Conclusion:












