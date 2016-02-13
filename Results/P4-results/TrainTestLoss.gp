# Please generate the neccessary data files with 
# /path/to/caffe/tools/extra/parse_log.sh before plotting.
# ../../../tools/extra/parse_log.sh ./cifar100.log
# gnuplot ./plot.gp
# Example usage: 
#     ./parse_log.sh cifar100.log
# Now you have cifar100.log.train and cifar100.log.test.
#     gnuplot cifar100.gnuplot

# The fields present in the data files that are usually proper to plot along
# the y axis are test accuracy, test loss, training loss, and learning rate.
# Those should plot along the x axis are training iterations and seconds.
# Possible combinations:
# 1. Test accuracy (test score 0) vs. training iterations / time;
# 2. Test loss (test score 1) time;
# 3. Training loss vs. training iterations / time;
# 4. Learning rate vs. training iterations / time;
# A rarer one: Training time vs. iterations.

#!/usr/bin/gnuplot

reset

set terminal png

# set your chart name here:
set output "TrainTestLoss.png"

set style data lines
set key right

###### Fields in the data file your_log_name.log.train are
###### Iters Seconds TrainingLoss LearningRate

# Training loss vs. training iterations
set title "Training loss vs. training iterations"
set xlabel "Training iterations"
set ylabel "Training loss"

# set input file here:
plot "cifar100.log.train" using 1:3 title 'Training Loss', \
     "cifar100.log.test" using 1:4 title 'Testing Loss'


###### Fields in the data file your_log_name.log.test are
###### Iters Seconds TestAccuracy TestLoss

# Test loss vs. training iterations
# plot "cifar100.log.test" using 1:4 title "cifar100"

