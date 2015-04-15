class Book
  attr_reader :title

  def title=(title)
    @title = titleize(title)
  end

  private
  def titleize(string)
    string.capitalize.split.map do |word|
      small?(word) ? word : word.capitalize
    end.join(" ")
  end

  def small?(word)
    ["and", "the", "to", "a", "an", "in", "of", "over"].any?{|e| e == word }
  end
end
