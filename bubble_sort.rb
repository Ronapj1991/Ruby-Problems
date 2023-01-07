=begin
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]

-CANNOT USE #SORT METHOD

Bubble Sort methodology (MUST):

compare [0 and 1], sort the 2 values
compare [1 and 2], sort the 2 values
and so on till the end of array...

Logic to use

initialize index for A (A is the first value)
initialize index for B (B is the second value)
initialize a new empty array

compare A and B
    if A minus B is returns a number greater than or equal 0
        push the given array's[index of B] to the new Array
    if A minus B returns a negative number
        push the given array's[index of A] to the new Array

CODE:
###########################################################
given_array = [4,3,78,2,0,2]
new_array = []

if (given_array[0] - given_array[1] >= 0)
    new_array << given_array[1];
elsif (given_array[0] - given_array[1] < 0)
    new_array << given_array0
end

p new_array # returns [3]
###########################################################

increment initialized indexes by one
=end

