def convert(word)
  word_arr = word.split('')
  vowels = ['a','e', 'i', 'o', 'u']
    if vowels.include?(word_arr[0])
      return word
    else
     v_index = word_arr.index(word_arr.find{|letter| vowels.include?(letter)})
    end
word_arr.push(word_arr[0...v_index])
word_arr.push("ay")
new_arr = word_arr.drop(v_index).join('')

return new_arr
end

p convert('pig')
p convert('bread')

def convert_sentence(sentence)
  sentence_arr = sentence.downcase.split(' ').map{|word| convert(word)}
  converted_sentence = sentence_arr.join(" ").capitalize
end
p convert_sentence("I can code")

