#write your code here
def echo(string)
  string
end
def shout(string)
  string.upcase
end
def repeat(string, num=2)
  result = (string + " ") * num
  return result.chop #takes off last character " " in this case
end
def start_of_word(string, num=1)
  string[0..num-1]
end
def first_word(string)
  value = string.split()
  return value[0]
end
def titleize(string)
    word_array = string.split() #splits the string into individual words
    result = []
    nocaps = ['a' , 'an' , 'the' , 'and' , 'in' , 'of' , 'over'] #small words to check for
    word_array.each do |word|
      if nocaps.include?(word)  #if contains a small word it downcases them
        result.push(word.downcase)
      else
        result.push(word.capitalize) #if it contains a big word it upcases them
      end
    end
    result[0].capitalize! #makes sure first word is capitalized even if small word
    newstr = result.join(" ") #combines the results array int a string
    return newstr
end
