$letters = {
  1000 => "M",
  500 => "D",
  100 => "C",
  50 => "L",
  10 => "X",
  5 => "V",
  1 => "I"
}

$modern_letters = {
  "VIIII" => "IX",
  "IIII" => "IV",
  "LXXXX" => "XC",
  "XXXX" => "XL",
  "DCCCC" => "CM",
  "CCCC" => "CD"
}

def convert_to_roman()
options = {}
puts "Enter a number"
num = gets.chomp.to_i
puts "Modern numerals? (Y/N)"
result = gets.chomp
if
  result == "Y"
  options[:modern] = true
elsif
  result == "N"
  options[:modern] = false
else
  puts "sorry, not a valid value"
  exit
end

  numeral = ""
    $letters.each do |key,value|
      numeral += value * (num/key)
      num -= key * (num/key)
    end

  if options.has_key?(:modern) && options[:modern] == true
    $modern_letters.each do |old_nums, new_nums|
      numeral.sub!(old_nums, new_nums)
    end
  end

p numeral
end

convert_to_roman()