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

def convert_to_roman(arabic_number, options={})
  number = arabic_number
  numeral = ""

  numeral += 'M' * (number / 1000)
  number -= 1000 * (number / 1000)

  numeral += 'D' * (number / 500)
  number -= 500 * (number / 500)

  numeral += 'C' * (number / 100)
  number -= 100 * (number / 100)

  numeral += 'L' * (number / 50)
  number -= 50 * (number / 50)

  numeral += 'X' * (number / 10)
  number -= 10 * (number / 10)

  numeral += 'V' * (number / 5)
  number -= 5 * (number / 5)

  numeral += 'I' * number
  number -= 1 * number

    if options.has_key?(:modern)
      if options[:modern] == true
        numeral.sub!('VIIII', 'IX')
        numeral.sub!('IIII', 'IV')
        numeral.sub!('LXXXX', 'XC')
        numeral.sub!('XXXX', 'XL')
        numeral.sub!('DCCCC', 'CM')
         numeral.sub!('CCCC', 'CD')

      end
  end




  p numeral


end

convert_to_roman(14, {:modern => true})