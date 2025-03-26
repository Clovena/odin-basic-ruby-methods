# frozen_string_literal: true

def stock_picker(arr = [])
  return [0, 0] unless arr.instance_of?(Array) && (arr.length > 1) && (arr.all? Numeric)

  gains = []
  arr.each_with_index do |buy, buy_index|
    day_gains = []
    arr.each_with_index do |sell, sell_index|
      day_gains << (sell_index > buy_index ? sell - buy : 0)
    end
    gains << day_gains
  end

  maxes = []
  gains.each { |row| maxes << row.max }
  max_gain = maxes.max
  buy = maxes.index(max_gain)
  [buy, gains[buy].index(max_gain)]
end
