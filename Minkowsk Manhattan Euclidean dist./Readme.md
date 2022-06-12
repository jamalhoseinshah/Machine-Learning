# Minkowski distance in N-D space

In a N dimensional space, a point is represented as (x1, x2, ..., xN).

Consider two points P1 and P2:

Example:
Consider two points in a 7 dimensional space:
P1: (10, 2, 4, -1, 0, 9, 1)
P2: (14, 7, 11, 5, 2, 2, 18)


For a data point of view, 7 dimensions mean 7 attributes of the data in consideration which are important for the problem at hand.

The computation of Minkowski distance between P1 and P2 are as follows:

distance_pow2 = (10-14)^p + (2-7)^p + (4-11)^p + (-1-5)^p + 
                (0-2)^p + (9-2)^p + (1-18)^p

distance_pow2 = (-4)^p + (-5)^p + (-7)^p + (-6)^p + 
                (-2)^p + (7)^p + (-17)^p

minkowski_distance = distance_pow2^(1/p)


If we set p = 4 for this sample calculation, we find the following:

distance_pow2 = (-4)^4 + (-5)^4 + (-7)^4 + (-6)^4 + 
                (-2)^4 + (7)^4 + (-17)^4

distance_pow2 = 4^4 + 5^4 + 7^4 + 6^4 + 2^4 + 7^4 + 17^4

distance_pow2 = 256 + 625 + 2401 + 1296 + 16 + 2401 + 83521

distance_pow2 = 90516

minkowski_distance = distance_pow2 ^ 0.25
minkowski_distance = 90516 ^ 0.25
minkowski_distance = 17.3452




# Euclidean distance from Minkowski distance

Note: The only difference is that p = 2. Hence, Minkowski distance is a generalization of Euclidean distance. In other words, Euclidean distance is a special case of Minkowski distance.

Let us consider the same example for Euclidean distance:
Two points in a 7 dimensional space:
P1: (10, 2, 4, -1, 0, 9, 1)
P2: (14, 7, 11, 5, 2, 2, 18)


distance_pow2 = (-4)^2 + (-5)^2 + (-7)^2 + (-6)^2 + 
                (-2)^2 + (7)^2 + (-17)^2

distance_pow2 = 16 + 25 + 49 + 36 + 4 + 49 + 289

distance_pow2 = 468

euclidean_distance = 468 ^ 0.5
euclidean_distance = 21.6333


Hence, for our example with the same points in 7 dimensional space:

    Euclidean distance = 21.6333
    Minkowshi distance = 17.3452 (with p=4)


# Manhattan distance from Minkowski distance

Note: The only difference is that p = 1. Hence, Minkowski distance is a generalization of Manhattan distance. In other words, Manhattan distance is a special case of Minkowski distance.

Let us consider the same example for Manhattan distance:
Two points in a 7 dimensional space:
P1: (10, 2, 4, -1, 0, 9, 1)
P2: (14, 7, 11, 5, 2, 2, 18)



distance_pow2 = (-4)^1 + (-5)^1 + (-7)^1 + (-6)^1 + 
                (-2)^1 + (7)^1 + (-17)^1

distance_pow2 = -4 + (-5) + (-7) + (-6) + (-2) + 7 + (-17)

distance_pow2 = -34

manhattan_distance = -34 ^ 1
manhattan_distance = -34

Hence, for our example with the same points in 7 dimensional space:

    Manahattan distance = -34
    Euclidean distance = 21.6333
    Minkowshi distance = 17.3452 (with p=4)

