require 'spec_helper'
require_relative '../lib/substring_counter'

RSpec.describe "Substring Counter Validation" do
  describe "Correct arguments" do
    it "Strings in str parameter and in dict parameter" do
      expect(substrings("the quick brown fox jumps over the lazy dog", ["the", "row", "ox", "jump", "test"]))
      .to eq({ "the"=>2, "row"=>1, "ox"=>1, "jump"=>1 })
    end
  end

  describe "Improper arguments" do
    it "Numeric in str parameter" do
      expect(substrings(12345, ['1', '3', '6']))
      .to eq({ "1"=>1, "3"=>1 })
    end

    it "Numeric in dict parameter" do
      expect(substrings("12345", [1, 3, 6]))
      .to eq({ "1"=>1, "3"=>1 })
    end

    it "Symbol in str parameter" do
      expect(substrings(:sym, ['s', 't', 'u']))
      .to eq({ "s"=>1 })
    end

    it "Symbol in dict parameter" do
      expect(substrings("The quick brown fox", ["the", :row]))
      .to eq({ "the"=>1, "row"=>1 })
    end

    it "Hash in str parameter" do
      expect(substrings({ fox: "fox" }, ["ox", "row"]))
      .to eq({ "ox"=>2 })
    end

    it "Hash in dict parameter" do
      expect(substrings("The quick brown fox", {ox: "ox"}))
      .to eq({})
    end
  end
end
