def echo(string)
  string.to_s
end

def shout(string)
  string.upcase
end

def repeat(string, num=2)
  Array.new(num, string).join(" ")
end

def start_of_word(string, num=1)
  string.slice(0, num)
end

def first_word(string)
  string.split.first
end

def titleize(string)
  string.capitalize.split.map do |word|
    small?(word) ? word : word.capitalize
  end.join(" ")
end

def small?(word)
  ["and", "the", "to", "a", "of", "over"].any?{|e| e == word }
end
