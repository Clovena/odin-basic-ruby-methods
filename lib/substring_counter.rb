def substrings(str, dict = [])
  return {} unless dict.class == Array
  str_clean = str.to_s.downcase
  dict.reduce(Hash.new(0)) do |accumulator, substr|
    substr_clean = substr.to_s.downcase
    accumulator[substr_clean] = str_clean.scan(/#{substr_clean}/).length
    accumulator.select { |k, v| v > 0 }
  end
end
