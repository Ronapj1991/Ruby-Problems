=begin
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]

-CANNOT USE #SORT METHOD

Bubble Sort methodology (MUST):

compare [0 and 1], sort the 2 values
compare [1 and 2], sort the 2 values
and so on till the end of array...
=end

def bubble_sort(given_array)
    until (array_is_sorted?(given_array))
        given_array = single_pass_sort(given_array)
    end

    given_array
end

def array_is_sorted?(arr)
    is_sorted = []
    index_for_A = 0
    index_for_B = 1

    while(index_for_B < arr.length)
        a = arr[index_for_A]
        b = arr[index_for_B]

        a <= b ? is_sorted.push("sorted") : is_sorted.push("not sorted")

        index_for_A += 1
        index_for_B += 1
    end

    is_sorted.all?("sorted")
end

def single_pass_sort(arr)
    index_for_A = 0
    index_for_B = 1

    while (index_for_B < arr.length)
        a = arr[index_for_A]
        b = arr[index_for_B]
    
        if ((a - b) >= 0)
            arr[index_for_A] = b;
            arr[index_for_B] = a;
        end
    
        index_for_A += 1
        index_for_B += 1
    end

    arr
end

p bubble_sort([4,3,78,2,0,2])