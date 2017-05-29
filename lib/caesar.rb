$alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

def caesar_encode(string, offset)
  array = string.split('')
  offset_array = array.map do |l|
    if $alphabet.include?(l.downcase)
      index = $alphabet.index(l.downcase)
      if l == l.downcase
        $alphabet[(index + offset) % 26]
      else
        $alphabet[(index + offset) % 26].upcase
      end
    else
      l
    end
  end
  offset_array.join
end

def caesar_decode(string, offset)
  array = string.split('')
  offset_array = array.map do |l|
    if $alphabet.include?(l.downcase)
      index = $alphabet.index(l.downcase)
      if l == l.downcase
        $alphabet[(index - (offset % 26)) % 26]
      else
        $alphabet[(index - (offset % 26)) % 26].upcase
      end
    else
      l
    end
  end
  offset_array.join
end
