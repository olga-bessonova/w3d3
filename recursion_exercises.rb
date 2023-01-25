# Warmup
# Write a recursive method, range, that takes a start and an end and returns an array of all numbers in that range, exclusive. For example, range(1, 5) should return [1, 2, 3, 4]. If end < start, you can return an empty array.
# Write both a recursive and iterative version of sum of an array.

def range(min,max)
  return [] if min > max
  return [min] if min == max
  [min] + range(min+1,max)
end

# p range(1,1)
# p range(1,10)
# p range(1,-10)
$count = 0
def exp_1(b,n)
  return 1 if n==0
  b * exp_1(b,n-1)
  
  

end
# p exp_1(0,0)
# p exp_1(1,0)
# p exp_1(1,2)
#p exp_1(2,256)
#p $count


$count = 0
def exp_2(b,n)
  $count+=1
  return 1 if n==0
  if n.even?
    exp_2(b,n/2)**2
  else
    b * exp_2(b,(n-1)/2)**2
  end
  
end


#p exp_2(0,0)
#p exp_2(1,0)
#p exp_2(1,2)
#p exp_2(1,256)
#p $count

def deep_dup(arr)

  new_arr = Array.new
  arr.each do |ele|
    if !ele.is_a? Array
      new_arr << ele
    else
      deep_dup(ele)
    end
    new_arr
  end
end

# a = [1,2,[3]]
# b = deep_dup([1,2,[3]])
# b[0]=9999999999
# p a
# p b

def fibonacci(n)
  return [0,1].take(n) if n <= 2
  prev_fib = fibonacci(n-1)
  prev_fib << prev_fib[-2] + prev_fib[-1]
end

# p fibonacci(1)
# p fibonacci(2)
# p fibonacci(5)

def bsearch(arr, target)
  #if
  return nil if arr.length == 0
  mid_idx = arr.length / 2
  pos =  arr[mid_idx] <=> target

  #return mid_idx if arr.first == tar
  if pos == 0
    return mid_idx
  elsif pos == 1
    bsearch(arr[0...mid_idx],target)
  else pos == -1
    #r_i
    res = bsearch(arr[mid_idx+1..-1],target) 
    if res == nil
      return nil
    else
      return res + 1 + mid_idx
    end
  end
end


# p bsearch([1,2,3],1) #0
# p bsearch([2,3,4,5],3) #1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
def my_merge(arr1,arr2)
  return arr2 if arr1.length == 0
  return arr1 if arr2.length == 0
  
  if (arr1.first <=> arr2.first) <= -1
    [arr1.first] + my_merge(arr1[1..-1], arr2)
  else
    [arr2.first] + my_merge(arr1, arr2[1..-1])
  end

end
#arr1 = [3,27,38,43]
#arr2 = [9,10,82]
#p my_merge(arr1,arr2)


arr = [38,27,43,3,9,82,10]
def merge_sort(arr)
  return [] if arr.length == 0
  return arr if arr.length == 1

  mid = arr.length / 2
  #p arr[0..mid]
  my_merge(merge_sort(arr[0..mid-1]), merge_sort(arr[mid..-1]))
end
#p merge_sort(arr)




def subsets(arr)
  return [[]] if arr.empty?
  #return []
  #subsets = subsets + subsets.each << element
  last_subsets = subsets(arr[0...-1])

  (0...last_subsets.length).each do |i|
    last_subsets << last_subsets[i] + [arr[-1]]
  end
  last_subsets
end

#p subsets([1,2,3])
#p subsets([])




