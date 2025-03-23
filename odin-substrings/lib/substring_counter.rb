def substrings(str, dict = [])
  str_clean = str.downcase.to_s
  dict.reduce(Hash.new(0)) do |acc, substr|
    substr_clean = substr.downcase.to_s
    acc[substr_clean] += 1 if str_clean.include?(substr_clean)
    acc.compact
  end
end
