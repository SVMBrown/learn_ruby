def translate(string)
  string.split.map do |word|
    arr = word.split('')
    until arr[0] =~ /[aeiouy]/ do
      arr.push(arr.shift)
    end
    if arr[0] == "u" && arr[-1] == "q"
      arr.push(arr.shift)
    end
    arr.join('') + "ay"
  end.join(' ')
end
