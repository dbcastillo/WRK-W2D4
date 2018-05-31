def my_min(arr)
  
  arr.each do |el1|
    smallest = true
    arr.each do |el2|
      if el2 < el1
        smallest = false
      end
    end
    return el1 if smallest
  end
  
end
# time complexity is quadratic; 0(n ** 2)

def my_min(arr)
  min = arr.first
  arr[1..-1].each do |el|
    min = el if el < min 
  end
  min
end
# time complexity is linear; 0(n)

def sum_sum(arr)
  subs = []
  max = arr.first
  
  arr.each_index do |idx1|
    subs << [ arr[idx1] ]
    arr.each_index do |idx2|
      next if idx2 <= idx1
      subs << arr[idx1..idx2]
    end 
  end 
  subs.each do |el|
    sum = el.reduce(:+)
    max = sum if sum > max 
  end 
  max
end 
#time complexity is O(n ** 3)


def sub_sum(arr)
  largest = arr.first
  current = arr.first
  arr[1..-1].each do |num|
    current = 0 if current < 0
    current += num
    largest = current if current > largest
  end 
  largest
end
#time complexity 0(n), space is 0(1)




 