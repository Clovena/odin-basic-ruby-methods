require 'spec_helper'
require_relative '../lib/caesar_cipher'

RSpec.describe "Cipher Validation" do
  describe "Small shift" do
    it "Small positive shift" do
      expect(encrypt("the quick brown fox jumps over the lazy dog", 4))
      .to eq("xli uymgo fvsar jsb nyqtw sziv xli pedc hsk")
    end

    it "Small negative shift" do
      expect(encrypt("the quick brown fox jumps over the lazy dog", -4))
      .to eq("pda mqeyg xnksj bkt fqilo kran pda hwvu zkc")
    end
  end

  describe "Large shift" do
    it "Large positive shift" do
      expect(encrypt("the quick brown fox jumps over the lazy dog", 79))
      .to eq("uif rvjdl cspxo gpy kvnqt pwfs uif mbaz eph")
    end

    it "Large negative shift" do
      expect(encrypt("the quick brown fox jumps over the lazy dog", -79))
      .to eq("sgd pthbj aqnvm enw itlor nudq sgd kzyx cnf")
    end
  end

  describe "Preserve case" do
    it "Uppercase and lowercase characters" do
      expect(encrypt("ThE QuICk BrOWn foX", 4))
      .to eq("XlI UyMGo FvSAr jsB")
    end
  end

  describe "Preserve special characters" do
    it "Special characters included" do
      expect(encrypt("Fox & Dog @ Lazy-town!", 4))
      .to eq("Jsb & Hsk @ Pedc-xsar!")
    end
  end

  describe "Irregular shift argument" do
    it "If split is empty" do
      expect(encrypt("The quick brown fox"))
      .to eq("The quick brown fox")
    end

    it "If split is a string" do
      expect(encrypt("The quick brown fox", "split"))
      .to eq("The quick brown fox")
    end

    it "If split is a symbol" do
      expect(encrypt("The quick brown fox", :sym))
      .to eq("The quick brown fox")
    end

    it "If split is a hash" do
      expect(encrypt("The quick brown fox", { a: "a" }))
      .to eq("The quick brown fox")
    end
  end
end
