#### Remarks on Network Data hyper-parameter tuning results ####

### Experiment 1 ###

exp_1_box_neurons_batch_size.png
# Finding: i) Overall the val accuracy seems to stay stable for most unit sizes. 
ii) Generally, for all units the validation accuracy slightly increases with higher batch sizes (especially seen with units = 32).
# Conclusion: Consider using range for batch sizes 80-100.

exp_1_box_neurons_epochs_size.png
# Finding: i) Overall the val accuracy seems to decrease as the number of epochs increase 
(especially for units 32,64,128). ii) Generally, there  is a slight peak at 16 and 26 epochs (see 8,16,32).
# Conclusion: Consider using a range of between 16-26 for epochs

exp_1_no_conclusion_batch_size & exp_1_no_conclusion_epochs
# NB! Include these plots in Appendix and mention that with the first set of hyper-parameters that were 
tuned plots such as these were also made, but no real deduction could be made from them (deductions could 
be made in how the model genaralises based on the tuned hyper-parameters). 
The dashed lines were arbitrarily chosen to show that good performance would be in the upper-right quadrant 
(high-training accuracy and high validation accuracy) 

exp_1_bars_90th_perc
Hidden layer units: Use either 8,32 or 64
Batch sizes: Use 80-100
Epochs: Use anything from +/-16- +/-26

### Experiment 2 ###

exp_2_box_lambda_batch_size.png
# Finding: i) Lambda values of 0.01 and 0.1 yield very good results for all batch sizes considered (small std and high medians). 
Specifically a batch size of 100 and lambda value of 0.01.
# Conclusion: Consider using lambda value of 0.01 and batch size of 100.

exp_2_box_lambda_epochs.png

# Finding: i) Again, Lambda values of 0.01 and 0.1 yield very good results for all epoch sizes considered. 
Specifically a lambda value at 0.01 or 0.1 and 30 epochs.
# Conclusion: Consider using lambda value range between 0.01 or 0.1 at 30 epochs.

exp_2_box_lambda_neurons.png

# Finding: i) Again, Lambda values of 0.01 and 0.1 yield very good results for all hidden layer units.
Specifically, 32 hidden layer units seem to perform very well at lamda 0.01 and 64 hidden layer units seem to perform very well with lambda value of 0.1.
# Conclusion: Consider using lambda value range between 0.1 with 64 hidden layer units or lambda value of 0.01 with 32 hidden units.

exp_2_bars_90th_perc.png
lambda: 0.01 (all models had this parameter)
Hidden layer units: 16 or 64
Bach sizes: 90 or 100
epochs: 30 

### Experiment 3 ###

exp_3_comp.jpg

# Conclusion: Overall L2 regulararization produces better validation accuracy results.

  
### Experiment 4 ###

# Finding: Adam, adamax, nadam. rmsprop, and sgd dilivered good results. Specifically Adam and rmsprop performed very well.
# Conclusion: Use either adam or rmsprop

### Experiment 5 ###

# Finding: Learning rates of 0.001 and 0.01 diliver good performance. Learning rate of 0.01 has a much smaller variance than that of 0.001, however 0.001 achieves lower a lower validation acc.
# Conclusion: Use 0.001 as learning rate












