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
p exp_2(1,256)
p $count