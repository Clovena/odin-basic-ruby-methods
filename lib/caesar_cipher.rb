def encrypt(str, shift = 0)
  return str unless shift.class == Integer
  out = ''
  str.split('').each do |char|
    base = char == char.upcase ? 65 : 97
    num = char.ord
    if (num.between?(65, 90)) || (num.between?(97, 122))
      out += ((((num - base) + shift.to_i) % 26) + base).chr
    else
      out += char
    end
  end
  out
end
