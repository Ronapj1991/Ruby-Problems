=begin
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]

-CANNOT USE #SORT METHOD

Bubble Sort methodology (MUST):

compare [0 and 1], sort the 2 values
compare [1 and 2], sort the 2 values
and so on till the end of array...
=end

given_array = [4,3,78,2,0,2]
index_for_A = 0
index_for_B = 1

while (index_for_B < given_array.length)
    a = given_array[index_for_A]
    b = given_array[index_for_B]

    if ((a - b) >= 0)
        given_array[index_for_A] = b;
        given_array[index_for_B] = a;
    end

    index_for_A += 1
    index_for_B += 1
end

p given_array