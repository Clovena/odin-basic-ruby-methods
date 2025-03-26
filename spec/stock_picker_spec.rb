# frozen_string_literal: true

require '_spec_helper'
require_relative '../lib/stock_picker'

RSpec.describe 'Stock Picker Validation' do
  describe 'Standard Numeric array' do
    it 'Array of positive Integers' do
      expect(stock_picker([4, 3, 1, 7, 4, 8]))
        .to eq([2, 5])
    end

    it 'Array of positive and negative Integers' do
      expect(stock_picker([4, -3, 7, -4, 8, -1, 0]))
        .to eq([3, 4])
    end

    it 'Array containing Floats' do
      expect(stock_picker([4.3, 1.7, 4.8]))
        .to eq([1, 2])
    end
  end

  describe 'Edge cases' do
    it 'Highest price on first day' do
      expect(stock_picker([5, 4, 3, 2, 3]))
        .to eq([3, 4])
    end

    it 'Lowest price on last day' do
      expect(stock_picker([2, 3, 4, 5, 1]))
        .to eq([0, 3])
    end

    it 'Highest price on first day AND lowest price on last day' do
      expect(stock_picker([5, 4, 3, 2, 1]))
        .to eq([0, 0])
    end
  end

  describe 'String array' do
    it 'Array of Strings' do
      expect(stock_picker(%w[boy ask yay doe str]))
        .to eq([0, 0])
    end

    it 'Array of Strings and Numerics' do
      expect(stock_picker(['boy', 4.5, 'yay', 23, 'str']))
        .to eq([0, 0])
    end
  end

  describe 'Irregular arr argument' do
    it 'If no argument is passed' do
      expect(stock_picker)
        .to eq([0, 0])
    end

    it 'If the argument passed is a single literal' do
      expect(stock_picker(4))
        .to eq([0, 0])
    end

    it 'If the argument passed is a symbol' do
      expect(stock_picker(:sym))
        .to eq([0, 0])
    end

    it 'If the argument passed is a hash' do
      expect(stock_picker({ a: 'a' }))
        .to eq([0, 0])
    end
  end
end
