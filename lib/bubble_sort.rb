def bubble_sort(arr = [])
  return arr unless arr.class == Array

  arr.map! { |elem| elem.to_s } if arr.any? String
  iterations = arr.length - 1
  iterations.times do |iteration|
    arr.each_index do |index|
      unless index >= (iterations - iteration)
        if arr[index] > arr[index + 1]
          arr[index], arr[index + 1] = arr[index + 1], arr[index]
        end
      end
    end
  end
  arr
end
