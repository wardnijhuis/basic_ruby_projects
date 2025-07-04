def substrings(text, dictionary)
  text.downcase!
  result = {}
  dictionary.each do |string|
    len = text.scan(string).size
    if (len != 0) then result[string] = len end
  end
  return result
end
