# The Odin Project Basic Ruby Methods

Basic Ruby methods, as assigned from The Odin Project's full stack curriculum. 

## Directory Structure

```
.  
├─ lib/  
│ ├─ bubble_sort.rb  
│ ├─ caesar_cipher.rb  
│ ├─ stock_picker.rb  
│ └─ substring_counter.rb  
├─ spec/  
│ ├─ _spec_helper.rb  
│ ├─ bubble_sort_spec.rb  
│ ├─ caesar_cipher_spec.rb  
│ ├─ stock_picker_spec.rb  
│ └─ substring_counter_spec.rb  
├─ .rspec  
└─ README.md
```

## 1. Ceasar Cipher

A simple Caesar cipher in Ruby, as contained within The Odin Project's full stack curriculum.

### Program

`caesar_cipher.rb` is the main file. It contains one method, `#encrypt`, which performs the following computations: 
1. Intakes two parameters, `str` and `shift`, the latter of which defaults to `0`.
1. Checks the class of `shift`; if it is not `Integer`, return the original, unaffected `str`.
1. Initialize the variable `out`, which records the encrypted string. 
1. Split `str` into an array of single characters, and for each character: 
  1. Set the `base` value depending on case of character.
  1. Convert to an ordinal number `num` with `#ord`
  1. If `num` is between one of two ranges known to be letters, shift by the inputted factor. 
    1. Use `base` to set `'A|a'` to 0.
    1. Use mod operator `% 26` to loop from `'Z|z'` back to `'A|a'`.
    1. Once shift is complete, append character to `out`. 
  1. If `num` is not a letter, append the unaffected character to `out`.
1. Once all characters have been iterated through, return the encrypted string `out`. 

### Tests

`caesar_cipher_spec.rb` runs ten rspec tests on the `caesar_cipher` program.
- Small shifts in the positive and negative directions are validated. 
- Large shifts in the positive and negative directions are validated. 
- Case preservation and special character retention are validated.
- Multiple instances of missing or irregular `shift` arguments are tested.

## 2. Substring Counter

A substring counter method in Ruby, as contained within The Odin Project's full stack curriculum.  

### Program

`substring_counter.rb` is the main file. It contains one method, `#substrings`, which performs the following computations: 
1. Intakes two parameters, `str` and `dict`, the latter of which defaults to an empty array.
1. Checks the class of `dict`; if it is not `Array`, return an empty hash.
1. Clean `str` by explicitly converting to a string and applying the method `#downcase`. Save to `str_clean`.
1. Reduce the `dict` array with the following block:
  1. Initialize the accumulator as a new hash which defaults all values to 0.
  1. Clean each `dict` element `substr` by explicitly converting to a string and applying the method `#downcase`. Save to `substr_clean`.
  1. Scan the original `str_clean` for any instances of `substr_clean`, and gather the length of the resulting array.
    1. Save this length into the accumulator has as a value corresponding with a key identified by "`substr_clean`".
1. Select all pairs in the accumulator hash with values greater than 0, and return the hash.

### Tests

`substring_counter_spec.rb` runs eight rspec tests on the `substring_counter` program.
- Correct results are validated when all parameters are given String arguments.
- Improper arguments, including Numerics, Symbols, and Hashes, are tested in both `str` and `dict`.

## 3. Stock Picker

A rudimentary stock picker in Ruby, as contained within The Odin Project's full stack curriculum.  

### Program

`stock_picker.rb` is the main file. It contains one method, `#stock_picker`, which performs the following computations: 
1. Intakes one parameter, `arr`, which defaults to an empty array.
1. Return `[0, 0]` if the `arr` argument does not meet all of the following criteria:
  1. The class of `arr` is `Array`; 
  1. The length of `arr` is greater than 1; and
  1. All elements in `arr` are of `Numeric` class.
1. Initialize an empty array `gains`. This will become a nested array as the original `arr` is iterated through.
1. Iterate through `arr` with indices. This is considered the "Buy" price and day. For each "Buy" iteration: 
  1. Initialize an empty array `day_gains`. These are stored inside `gains`. 
  1. Iterate again through `arr` with indices, considering this the "Sell" price and day. For each "Sell" iteration: 
    1. If the "Sell" day is greater than the "Buy" day, append the "Gain" `sell - buy` to `day_gains`.
    1. If the "Sell" day is not greater than the "Buy" day, append `0` to `day_gains`. *A "Sell" may not occur before a "Buy."*
  1. Once all "Sell" days are iterated through, append the array `day_gains` to `gains` for the given "Buy" day. 
1. The resultant `gains` array is structured like a quasi-matrix, where the quasi-row index is the "Buy" day and the quasi-column index is the "Sell" day. 
1. From here, initialize an empty array `maxes`, and for each row in `gains`: 
  1. Take the maximum value in the row (representing the best "Sell" day for the given "Buy" day) and append it to `maxes`.
1. Take the maximum value of `maxes` to obtain the absolute maximum gain across all "Buy" and "Sell" days. 
1. Obtain the "Buy" day by finding the quasi-row index of `max_gain`, and obtain the "Sell" day by finding the quasi-column index of `max_gain`. 
1. Save these two values to an array `buy_sell` and return the array.

### Tests

`stock_picker_spec.rb` runs twelve rspec tests on the `stock_picker` program.
- Validate results for arrays with positive and negative Integers and Floats.
- Validate results on edge cases, like the first day holding the highest price or the last day holding the lowest price.
- Return [0, 0], indicating no "Buy" and "Sell," for arrays with irregular elements and for irregular arguments.

## 4. Bubble Sorter

A method to bubble-sort in Ruby, as contained within The Odin Project's full stack curriculum.  

### Program

`bubble_sort.rb` is the main file. It contains one method, `#bubble_sort`, which performs the following computations: 
1. Intakes one parameter, `arr`, which defaults to an empty array.
1. Return the original argument if its class is not `Array`.
1. If *any* element in `arr` is a string, convert *all* elements to strings. This ensures proper sorting between a singular class.
1. Iterate through `arr` based on the length of `arr` itself; *bubble-sorting necessarily does not require more iterations than there are elements in the array.*
1. For each element in `arr`:
  1. Compare its value to the following element using indices. 
  1. If the current element is greater than the following element, swap the two values.
1. Return the sorted array after the necessary number of iterations.

### Tests

`bubble_sort_spec.rb` runs eight rspec tests on the `bubble_sort` program.
- Validate results of sorting positive and negative Numerics.
- Validate results of sorting entirely Strings.
- Test that an array of both Strings and Integers can be converted to Strings and sorted.
- Test instances of irregular arguments.
