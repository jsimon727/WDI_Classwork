require 'spec_helper'
require_relative '../letter_count1'

describe "#letter_count" do
  it "turns word into hash" do
    word = "cow"
    expect(letter_count(word)).to eq({"c"=> 1, "o"=> 1, "w"=> 1})
  end
end