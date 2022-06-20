### Simple Neural Network in Python

Neural networks (NN), also called artificial neural networks (ANN) are a subset of learning algorithms within the machine learning field that are loosely based on the concept of biological neural networks.

Basically, an ANN comprises of the following components:

An input layer that receives data and pass it on
A hidden layer
An output layer
Weights between the layers
A deliberate activation function for every hidden layer. In this simple neural network Python tutorial, we’ll employ the Sigmoid activation function.

There are several types of neural networks. In this project, we are going to create the feed-forward or perception neural networks. This type of ANN relays data directly from the front to the back.

Training the feed-forward neurons often need back-propagation, which provides the network with corresponding set of inputs and outputs. When the input data is transmitted into the neuron, it is processed, and an output is generated.

And, the best way to understand how neural networks work is to learn how to build one from scratch (without using any library).

I will demonstrate how to use the Python programming language to create a simple neural network.


We are going to train the neural network such that it can predict the correct output value when provided with a new set of data.

As you can see on the table, the value of the output is always equal to the first value in the input section. Therefore, we expect the value of the output (?) to be 1.

Let’s see if we can use some Python code to give the same result (You can peruse the code for this project at the end of this article before continuing with the reading).
Creating a NeuralNetwork Class

We’ll create a NeuralNetwork class in Python to train the neuron to give an accurate prediction. The class will also have other helper functions.

Even though we’ll not use a neural network library for this simple neural network example, we’ll import the numpy library to assist with the calculations.

The library comes with the following four important methods:

exp—for generating the natural exponential
array—for generating a matrix
dot—for multiplying matrices
random—for generating random numbers. Note that we’ll seed the random numbers to ensure their efficient distribution.


We managed to create a simple neural network.

The neuron began by allocating itself some random weights. Thereafter, it trained itself using the training examples.

Consequently, if it was presented with a new situation [1,0,0], it gave the value of 0.9999584.

You remember that the correct answer we wanted was 1?

Then, that’s very close—considering that the Sigmoid function outputs values between 0 and 1.

Of course, we only used one neuron network to carry out the simple task. What if we connected several thousands of these artificial neural networks together? Could we possibly mimic how the human mind works 100%?
