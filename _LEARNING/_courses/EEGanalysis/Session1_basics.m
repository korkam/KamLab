% Session1_basics+simplestats
% by Korey Kam 9/28/16
%
% purpose of this section is to expose you to the basics of matlab and
% numeric handling. At the end of this tutorial is a homework assignment.

%% matlab as a calculator
%what do you get when you enter this into the command window?
2000/74+31*329-10380

%% matlab has useful built in functions.
%A function is a program that operates on arguments.  Consider the following function

sin(2*pi)

%Above, 'sin' is a function.  It operates on the argument '2*pi'.
%more
cos(2*pi + 1/10)

exp(-2)

atan(2*pi)

%% learn to use matlab Help
%click on 'Help' at the top of your editor and select 'Product
%Help'.  This should open a new window.  In the Help Navigator type 'atan'
%and see what you find.

%half the battle is knowing how to search. Sources like matlab
%documentation, matlab forums or stackoverflow are gotos

%% make a vector
%a vector is a list of numbers. 

[1 2 3 4]

%what happens when you type this in matlab?

%% manipulate vectors by scalars
%A scalar is a single number.

[1 2 3 4] * 3

%what does this yield?

%% vectors with vectors
[1 2 3 4] .* [1 2 3 4]

%what does this return?

%alternatively, what about this?
[1 2 3 4] .* [1 2 3 4 5]

%% define variables
% In the previous examples, we typed [1 2 3 4] over and over again.  It's
% easier to assign a variable to this vector, and then simply reference
% this variable to access the vector.

a = 2
b = [1 2 3 4]

% Here we have defined two variables.  The variable 'a' is a scalar and
% assigned the number '2'.  The variable 'b' is a vector and assigned the
% vector [1 2 3 4].  To work with these scalars and vectors, we can now
% refer to the variables.  

c = a*b
d = b.*b

%what are the new variables 'c' and 'd'?

%% ask questions about variables
% to see a list of the variables you've defined, try:
who

what
which('c')

%to determine the size of a variable, try:
size(c)
length(c)

%% clear workspace
clear

%are the variables gone?  How can you check?

%% matrices in matlab
%A matrix is a group of vectors.  Consider the following:
p = [1 2 3; 4 5 6]

%what is the size of p?
p + 2

%what happens after this operation?

%% indexing matrices and vectors.
% Matrices and vectors are lists of numbers, and sometimes we want to
% access individual elements or small subsets of these lists.
a = [1 2 3 4 5]
b = [6 7 8 9 10]

%to access the 2nd element of 'a' or 'b', type >>
a(2)
b(2)

%how would you access the 4th element of each vector?

%   We can combine 'a' and 'b' to form a matrix.
c = [a; b]

% To access the individual element in the 1st row and 4th column of 'c', type >>
c(1,4)

%NOTE:  We access matrices using 'row,column' notation.  So c(1,4) means
%print the element in row 1, column 4 of c.
%To access all columns in the entire first row of 'c', type >>
c(1,:)
%   The notation ':' means 'all indices'.


%   To access the 2nd thru 4th columns of row 1 of 'c', type >>
c(1,2:4)
%   The notation '2:4' means 'all intergers from 2 to 4' which in this case
%   is 2,3,4.

%how do you access all rows in the 2nd column of 'c'?

%% HOMEWORK
% load the matlab data file 'testSignal1.mat' into the workspace
% fill in your code to address each question below:

%% 1. load and plot it
%% 2. what is the max value of testSignal1?
%% 3. what is the min value of elements 502 - 1450 in testSignal1? 
%% 4. what is the mean value of the first 1e3 elements in testSignal1?
%% 5. what is the variance of all elements in testSignal1 except the last 100?
%% 6. what is the median of testSignal1(2,400:5683)?


%% the end...
