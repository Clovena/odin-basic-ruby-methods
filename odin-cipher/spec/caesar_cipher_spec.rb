require 'spec_helper'
require_relative '../lib/caesar_cipher'

RSpec.describe "Cipher Validation" do
  describe "Small shift" do
    it "Correct output with a small positive shift" do
      expect(encrypt("the quick brown fox jumps over the lazy dog", 4))
      .to eq("xli uymgo fvsar jsb nyqtw sziv xli pedc hsk")
    end

    it "Correct output with a small negative shift" do
      expect(encrypt("the quick brown fox jumps over the lazy dog", -4))
      .to eq("pda mqeyg xnksj bkt fqilo kran pda hwvu zkc")
    end
  end

  describe "Large shift" do
    it "Correct output with a large positive shift" do
      expect(encrypt("the quick brown fox jumps over the lazy dog", 79))
      .to eq("uif rvjdl cspxo gpy kvnqt pwfs uif mbaz eph")
    end

    it "Correct output with a large negative shift" do
      expect(encrypt("the quick brown fox jumps over the lazy dog", -79))
      .to eq("sgd pthbj aqnvm enw itlor nudq sgd kzyx cnf")
    end
  end

  describe "Preserve case" do
    it "Correct output with uppercase and lowercase characters" do
      expect(encrypt("ThE QuICk BrOWn foX", 4))
      .to eq("XlI UyMGo FvSAr jsB")
    end
  end

  describe "Preserve special characters" do
    it "Correct output with special characters included" do
      expect(encrypt("Fox & Dog @ Lazy-town!", 4))
      .to eq("Jsb & Hsk @ Pedc-xsar!")
    end
  end

  describe "Irregular shift argument" do
    it "Return the original string if split is empty" do
      expect(encrypt("The quick brown fox"))
      .to eq("The quick brown fox")
    end

    it "Return the original string if split is a string" do
      expect(encrypt("The quick brown fox", "split"))
      .to eq("The quick brown fox")
    end

    it "Return the original string if split is a symbol" do
      expect(encrypt("The quick brown fox", :sym))
      .to eq("The quick brown fox")
    end

    it "Return the original string if split is a hash" do
      expect(encrypt("The quick brown fox", { a: "a" }))
      .to eq("The quick brown fox")
    end
  end
end
