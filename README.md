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
│ ├─ caesar_cipher_spec.rb  
│ └─ spec_helper.rb  
├─ .rspec  
└─ README.md
```

## 1. Ceasar Cipher

A simple Caesar cipher in Ruby, as contained within The Odin Project's full stack curriculum.

### Program

`caesar_cipher.rb` is the main file. It contains one method, `encrypt`, which performs the following computations: 
1. Intakes two parameters, `str` and `split`, the latter of which has a default of `0`.
1. Checks the `class` of `split`; if it is not an `Integer`, return the original, unaffected `str`.
1. Initialize the variable `out`, which records the encrypted string. 
1. Split `str` into an array of single characters, and for each character: 
  1. Set the `base` depending on case of character.
  1. Convert to an ordinal number `num` with `#ord`
  1. If `num` is between one of two ranges known to be letters, shift by the inputted factor. 
    1. Use `base` to set `'A|a'` to 0.
    1. Use mod operator `% 26` to loop from `'Z\z'` back to `'A|a'`.
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

### Tests

## 3. Stock Picker

A rudimentary stock picker in Ruby, as contained within The Odin Project's full stack curriculum.  

### Program

### Tests

## 4. Bubble Sorter

Description 

### Program

### Tests
