


def two_sum(arr, target_sum)
  
end

def bad_two_sum(arr, target_sum)
  arr.each_with_index do |el, idx|
    arr.each_with_index do |el2, idx2|
      next if idx2 <= idx
      return true if el + el2 == target_sum
    end 
  end 
  
  false
end
# time complexity n ** 2

def okay_two_sum?(arr, target_sum)
  return nil if arr.length < 2
  
  arr = arr.sort 
  
  middle = arr.length / 2 
  return true if arr[middle] + arr[middle+1] == target_sum 
  
  left = arr.take(middle)
  right = arr.drop(middle+2)
  
  case (arr[middle] + arr[middle+1]) <=> target_sum
  when -1 
    okay_two_sum?(right, target_sum)
  when 1 
    okay_two_sum?(left, target_sum)
  end 
end 