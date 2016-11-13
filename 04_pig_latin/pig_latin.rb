#write your code here
def translate string
  words = string.split()
  array = []
  vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  words.each do |word|
    if vowels.include?(word[0]) #starts with vowels
       array.push "#{word}ay"
    else  #Starts with consonant
      length = word.length
      i = 0
      while i < length
        if 'q'.include?word[i]
          toBack = word[0..(i+1)]
          word[0..(i+1)]=''
          array.push "#{word}#{toBack}ay"
          break
        elsif vowels.include?word[i]
          toBack = word[0..(i-1)]
          word[0..(i-1)] = ''
          array.push "#{word}#{toBack}ay"
          break
        else
          i+=1
        end #if
      end #while
    end #if
  end #each
  return array.join(' ')
end #def
