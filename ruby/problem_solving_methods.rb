numbers = [123, 47, 901, 26, 53]

def search_array(arr, num)
    #take into consideration the array, numbers
    #take the integer we want to find
    #scan array to see if integer is in the array
    index = nil
    arr.length.times do |number|
        if arr[number] == num
            index = number
        end
    end
    #if integer is in array, print what index integer is at
    #if integer is not in array, print nil
    return index
end

p search_array(numbers, 26)



# def fib(n)
# 	if n == 1
# 		1
# 	elsif n == 2
# 		1
# 	else
# 	 	fib(n-1) + fib(n-2)
# 	end
# end

# p fib(50)


#release 2: sort an array
#bubble sort

#so the bubble sort method takes an array
#takes the first number in the array at index[0] and finds n-1 (?) which finds the smallest number
#compares the first number and the smallest number and pushes the smallest number to the first, front position
#continues with that first number we were using and compares it to all the other numbers along the string.
#if it's larger than a number its comparing itself to, it will switch positions.
#if not it will just observe the next number along the array

#actually, looking back at the first code i found is that it takes the first integer in the array and compares it with the next one, 
#swapping if needed. does not find the smallest number - some of the visualizations i was looking at were doing that, but the way of 
#finding the smallest number was confusing to me. it is much easier to compare two numbers when you can just iterate through the array by
#adding one to the iterating i 

#i think looking at visualizations of the sorting method help me to understand how the numbers are moving along, and then
#also looking at the code tells me how things are getting compared, so and so - i think working with it more and seeing what each part
#does will be the most helpful

#i think my emotional state is more curiosity than anything. this is something i don't know how to do and i might get frustrated as i am 
#working on it but i think that is definitely a process of learning, at the same time i have to let it not stop me working. 


#array of integers = [2, 10, 8, 7, 3, 21, 1]
#take into consideration of integers
#start with the first integer, 2 and have it compare to the next integer, 10
#because 2 is smaller than 10, they will not swap
#next 10 and 8,
#10 is bigger than 8 so they swap
#10 and 7, swap. 10 and 3, swap. 10 and 21, do not swap. 10 and 1, swap. 
#[2, 8, 7, 3, 10, 1, 21]
#go back and check again
#2, good. 8 and 7, swap. 8 and 3, swap. 8 and 10, good. 10 and 1, swap. 10 and 21, good.
#[2, 7, 3, 8, 1, 10, 21]
#check again
#2, good. 7 and 3, swap. 7 and 8, good. 8 and 1, swap. 8 and 10, good. 10 and 21, good.
#[2, 3, 7, 1, 8, 10, 21]
#check again
#2, good, 3, good. 7 and 1, swap. 7, 8, 10, 21 good.
#[2, 3, 1, 7, 8, 10, 21]
#2, good. 3 and 1, swap. 3, 7, 8, 10, 21, good. 
#[2, 1, 3, 7, 8, 10, 21]
#2 and 1 swap. 3, 7, 8, 10, 21, good.
#[1, 2, 3, 7, 8, 10, 21]

# ints = [2, 10, 8, 7, 3, 21, 1]


def bubble_sort(array)
	#defining n as array length so you can easily pull it
  n = array.length
  #looping through the array
  loop do
  	#nothing has been swapped yet, so the variable is false
    swapped = false

    #n-1 times is array.length-1 because the length counts how many things while arrays start at 0
    #doing things with i to iterate through each integer in the array
    (n-1).times do |i|
    	#if a number in array is bigger than the number next to it, swap those two numbers
    	#and tell your method that these numbers have been swapped
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    #if nothing has been swapped or no more has been swapped, then the loop ends because everything 
    #is sorted

    break if not swapped
  end

  array
end

p bubble_sort(ints)	


