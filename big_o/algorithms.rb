# [ -5, 0, 3, 5, 4, 10, 1, 90 ]
require "byebug"

def my_min(list)
    list.each do |el1|
        next if list.any? {|el| el < el1}
        return el1
    end
end

#n^2

def my_min(list)
    smallest = Float::INFINITY
    list.each do |el|
        smallest = el if el < smallest
    end
    smallest
end

#n

def largest_sum(arr)
    sums = []

    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            sums << arr[i..j] if i <= j
        end
    end

    sums.inject(-100000) do |accumulator, el| 
        if el.sum > accumulator 
            el.sum
        else
            accumulator
        end
    end
end

def cool_solution(arr)
    largest_sum = -Float::INFINITY
    running_sum = 0

    arr.each do |el|
        running_sum += el
        largest_sum = running_sum if running_sum > largest_sum
        running_sum = 0 if running_sum < 0
    end
    largest_sum
end



