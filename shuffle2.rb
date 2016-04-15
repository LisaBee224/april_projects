def shuffle(array)
num_rotation = -rand(array.length)
new_num_rotation = -rand(array.length)
shuffle_once = array.rotate(num_rotation)
shuffle_twice = array.rotate(new_num_rotation)
p shuffle_twice
end
nums = [1,2,3,4,5,6]
shuffle(nums)