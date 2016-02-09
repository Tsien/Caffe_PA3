# Caffe_PA3 TroubleShooting

#### Log file
Problem solved by add "2>&1 | tee your_name.log" at the end of command, i.e. "

    ./build/tools/caffe train --solver=/path/to/my_solver.prototxt 2>&1 | tee your_name.log"

####ImportError: No module named sklearn

    sudo apt-get install python-sklearn

####HDF5: the order of dimensions
Number * Channel * Width * Height

[discussion](https://groups.google.com/forum/#!topic/caffe-users/gvxKfjyVzsI)

####libdc1394 error: Failed to initialize libdc1394

libdc1394 is just a webcam driver error. To remove this warning:

    sudo ln /dev/null /dev/raw1394
    
#### Secure Copy (scp)

Copy the file "foobar.txt" from a remote host to the local host

    $ scp your_username@remotehost.edu:foobar.txt /some/local/directory
    
Copy the file "foobar.txt" from the local host to a remote host

    $ scp foobar.txt your_username@remotehost.edu:/some/remote/directory
    
#### ImportError: IPython.html requires pyzmq >= 13

    $ sudo pip uninstall ipython
    $ sudo pip install "ipython[all]"
    
