# frozen_string_literal: true

def bubble_sort(arr = [])
  return arr unless arr.instance_of?(Array)

  arr.map!(&:to_s) if arr.any? String
  iterations = arr.length - 1
  iterations.times do |iteration|
    arr.each_index do |index|
      next if index >= (iterations - iteration)
      next if arr[index] < arr[index + 1]

      arr[index], arr[index + 1] = arr[index + 1], arr[index]
    end
  end
  arr
end
