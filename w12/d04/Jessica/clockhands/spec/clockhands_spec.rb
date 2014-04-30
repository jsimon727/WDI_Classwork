require 'spec_helper'
require_relative '../clockhands'

describe "clockhands" do
  it "calculates angle between hands" do
    expect(clockhands("6:00")).to eq(180)
    expect(clockhands("4:15")).to eq(30)
    expect(clockhands("8:35")).to eq(30)
    expect(clockhands("12:00")).to eq(0)
  end
end