def substrings(str, dict = [])
  str_clean = str.to_s.downcase
  dict.reduce(Hash.new(0)) do |acc, substr|
    substr_clean = substr.to_s.downcase
    acc[substr_clean] += 1 if str_clean.include?(substr_clean)
    acc.compact
  end
end
