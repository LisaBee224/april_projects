def shuffle(array)
comp_array = array.dup
random_nums = []
until random_nums.length == array.length
  j = rand(array.length)
  if !random_nums.include?(j)
    random_nums << j
   end
end
p "RANDOM:" + " " + "#{random_nums}"
p array

count = 0
array.each do |elm, index|
   new_index = random_nums[count]
   array[count] = comp_array[new_index]
    count +=1

  end
 p array


end

nums = [1,7,7,4,5,6]

shuffle(nums)