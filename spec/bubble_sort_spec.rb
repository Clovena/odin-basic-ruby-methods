require 'spec_helper'
require_relative '../lib/bubble_sort'

RSpec.describe "Bubble Sorter Validation" do
  describe "Numeric array" do
    it "Correct output with an array of positive Integers" do
      expect(bubble_sort([4, 3, 7, 4, 8, 1]))
      .to eq([1, 3, 4, 4, 7, 8])
    end

    it "Correct output with an array of positive and negative Integers" do
      expect(bubble_sort([4, -3, 7, -4, 8, -1, 0]))
      .to eq([-4, -3, -1, 0, 4, 7, 8])
    end
  end

  describe "String array" do
    it "Correct output with an array of Strings" do
      expect(bubble_sort(["boy", "ask", "yay", "doe", "str"]))
      .to eq(["ask", "boy", "doe", "str", "yay"])
    end

    it "Correct output with an array of Strings and Integers" do
      expect(bubble_sort(["boy", 4, "yay", 23, "str"]))
      .to eq(["23", "4", "boy", "str", "yay"])
    end
  end

  describe "Irregular arr argument" do
    it "Return an empty array if no argument is passed" do
      expect(bubble_sort())
      .to eq([])
    end

    it "Return the original object if the argument passed is a single literal" do
      expect(bubble_sort(4))
      .to eq(4)
    end

    it "Return the original object if the argument passed is a symbol" do
      expect(bubble_sort(:sym))
      .to eq(:sym)
    end

    it "Return the original object if the argument passed is a hash" do
      expect(bubble_sort({ a: "a" }))
      .to eq({ a: "a" })
    end
  end
end
