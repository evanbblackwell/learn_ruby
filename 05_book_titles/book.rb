class Book
# write your code here
  attr_accessor :title
  def title=(book_name)
    words = book_name.split
    little_words = ['the', 'a', 'an', 'and', 'in', 'of']
    words.each do |word|
      if little_words.include?(word) != true
        word.capitalize!
      end
      words[0].capitalize!
    end
    @title = words.join(" ")
  end
end
