require 'rspec'
require_relative '../lib/makechange'

describe "#make_change" do

  it "will make change of one type of coin" do
    expect(make_change(25)).to eq("1 quarters")
    expect(make_change(100)).to eq("4 quarters")
  end

  it "will make change using multiple types of coins" do
    expect(make_change(7)).to eq("1 nickels 2 pennies")
  end
end