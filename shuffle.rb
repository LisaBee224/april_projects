def shuffle(array)
comp_array = array.dup
random_nums = []
until random_nums.length == array.length
  j = rand(array.length)
  if random_nums.include?(j)
    j = rand(array.length)
  else
    random_nums << j
   end
end
# p "RANDOM:" + " " + "#{random_nums}"
# p array

count = 0
array.each do |elm, index|
   # orig_index = array.each_index.select {|i| elm[i] }
   new_index = random_nums[count]
   array[count] = array[new_index]
    count +=1

  end
  comp_array.each do |elm|
    if array.include?(elm) == false
      array << elm
      p "element replaced"
    end
  end
  clean_arr = array.uniq!
    p clean_arr

end

nums = [1,7,3,4,5,6]

shuffle(nums)