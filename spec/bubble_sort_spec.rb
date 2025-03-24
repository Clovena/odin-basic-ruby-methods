require '_spec_helper'
require_relative '../lib/bubble_sort'

RSpec.describe "Bubble Sorter Validation" do
  describe "Numeric array" do
    it "Array of positive Integers" do
      expect(bubble_sort([4, 3, 7, 4, 8, 1]))
      .to eq([1, 3, 4, 4, 7, 8])
    end

    it "Array of positive and negative Integers" do
      expect(bubble_sort([4, -3, 7, -4, 8, -1, 0]))
      .to eq([-4, -3, -1, 0, 4, 7, 8])
    end
  end

  describe "String array" do
    it "Array of Strings" do
      expect(bubble_sort(["boy", "ask", "yay", "doe", "str"]))
      .to eq(["ask", "boy", "doe", "str", "yay"])
    end

    it "Array of Strings and Integers" do
      expect(bubble_sort(["boy", 4, "yay", 23, "str"]))
      .to eq(["23", "4", "boy", "str", "yay"])
    end
  end

  describe "Irregular arr argument" do
    it "If no argument is passed" do
      expect(bubble_sort())
      .to eq([])
    end

    it "If the argument passed is a single literal" do
      expect(bubble_sort(4))
      .to eq(4)
    end

    it "If the argument passed is a symbol" do
      expect(bubble_sort(:sym))
      .to eq(:sym)
    end

    it "If the argument passed is a hash" do
      expect(bubble_sort({ a: "a" }))
      .to eq({ a: "a" })
    end
  end
end
