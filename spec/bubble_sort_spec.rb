# frozen_string_literal: true

require '_spec_helper'
require_relative '../lib/bubble_sort'

RSpec.describe 'Bubble Sorter Validation' do
  describe 'Numeric array' do
    it 'Array of positive Numbers' do
      expect(bubble_sort([4.5, 3, 7, 4, 8.2, 1]))
        .to eq([1, 3, 4, 4.5, 7, 8.2])
    end

    it 'Array of positive and negative Numbers' do
      expect(bubble_sort([4.5, -3, 7, -4, 8, -1.2, 0]))
        .to eq([-4, -3, -1.2, 0, 4.5, 7, 8])
    end
  end

  describe 'String array' do
    it 'Array of Strings' do
      expect(bubble_sort(%w[boy ask yay doe str]))
        .to eq(%w[ask boy doe str yay])
    end

    it 'Array of Strings and Integers' do
      expect(bubble_sort(['boy', 4, 'yay', 23, 'str']))
        .to eq(%w[23 4 boy str yay])
    end
  end

  describe 'Irregular arr argument' do
    it 'If no argument is passed' do
      expect(bubble_sort)
        .to eq([])
    end

    it 'If the argument passed is a single literal' do
      expect(bubble_sort(4))
        .to eq(4)
    end

    it 'If the argument passed is a symbol' do
      expect(bubble_sort(:sym))
        .to eq(:sym)
    end

    it 'If the argument passed is a hash' do
      expect(bubble_sort({ a: 'a' }))
        .to eq({ a: 'a' })
    end
  end
end
