def caesar_cipher(string, shift)
  result = ""

  string.each_char do |char|
    if char >= 'A' && char <= 'Z'
      base = 'A'.ord
      shifted = ((char.ord - base + shift) % 26) + base
      result += shifted.chr
    elsif char >= 'a' && char <= 'z'
      base = 'a'.ord
      shifted = ((char.ord - base + shift) % 26) + base
      result += shifted.chr
    else
      result += char
    end
  end
  return result
end

puts caesar_cipher("What a string!", 5)
