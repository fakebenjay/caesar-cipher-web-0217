$alphabet_by_letter = {
  'a'=>0,
  'b'=>1,
  'c'=>2,
  'd'=>3,
  'e'=>4,
  'f'=>5,
  'g'=>6,
  'h'=>7,
  'i'=>8,
  'j'=>9,
  'k'=>10,
  'l'=>11,
  'm'=>12,
  'n'=>13,
  'o'=>14,
  'p'=>15,
  'q'=>16,
  'r'=>17,
  's'=>18,
  't'=>19,
  'u'=>20,
  'v'=>21,
  'w'=>22,
  'x'=>23,
  'y'=>24,
  'z'=>25,
}

$alphabet_by_index = {
  0=>'a',
  1=>'b',
  2=>'c',
  3=>'d',
  4=>'e',
  5=>'f',
  6=>'g',
  7=>'h',
  8=>'i',
  9=>'j',
  10=>'k',
  11=>'l',
  12=>'m',
  13=>'n',
  14=>'o',
  15=>'p',
  16=>'q',
  17=>'r',
  18=>'s',
  19=>'t',
  20=>'u',
  21=>'v',
  22=>'w',
  23=>'x',
  24=>'y',
  25=>'z',
}

def caesar_encode(string, offset)
  array = string.split('')
  offset_array = array.map do |l|
    if $alphabet_by_letter[l.downcase]
      index = $alphabet_by_letter[l.downcase]
      if l == l.downcase
        $alphabet_by_index[(index + offset) % 26]
      else
        $alphabet_by_index[(index + offset) % 26].upcase
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
    if $alphabet_by_letter[l.downcase]
      index = $alphabet_by_letter[l.downcase]
      if l == l.downcase
        $alphabet_by_index[(index - (offset % 26)) % 26]
      else
        $alphabet_by_index[(index - (offset % 26)) % 26].upcase
      end
    else
      l
    end
  end
  offset_array.join
end

# 'A'=>27,
# 'B'=>28,
# 'C'=>29,
# 'D'=>30,
# 'E'=>31,
# 'F'=>32,
# 'G'=>33,
# 'H'=>34,
# 'I'=>35,
# 'J'=>36,
# 'K'=>37,
# 'L'=>38,
# 'M'=>39,
# 'N'=>40,
# 'O'=>41,
# 'P'=>42,
# 'Q'=>43,
# 'R'=>44,
# 'S'=>45,
# 'T'=>46,
# 'U'=>47,
# 'V'=>48,
# 'W'=>49,
# 'X'=>50,
# 'Y'=>51,
# 'Z'=>52

# 27=>'A',
# 28=>'B',
# 29=>'C',
# 30=>'D',
# 31=>'E',
# 32=>'F',
# 33=>'G',
# 34=>'H',
# 35=>'I',
# 36=>'J',
# 37=>'K',
# 38=>'L',
# 39=>'M',
# 40=>'N',
# 41=>'O',
# 42=>'P',
# 43=>'Q',
# 44=>'R',
# 45=>'S',
# 46=>'T',
# 47=>'U',
# 48=>'V',
# 49=>'W',
# 50=>'X',
# 51=>'Y',
# 52=>'Z'
