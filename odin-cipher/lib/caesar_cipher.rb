def encrypt(str, shift = 0)
  unless shift.class == Integer
    return str
  end
  out = ''
  str.split('').each do |char|
    num = char.ord
    base = num >= 97 ? 97 : 65
    if (num.between?(65, 90)) || (num.between?(97, 122))
      out += ((((num - base) + shift.to_i) % 26) + base).chr
    else
      out += char
    end
  end
  out
end
