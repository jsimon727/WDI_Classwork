require 'spec_helper'
require_relative '../lib/cipher'

describe "#ip_Address" do
  it "should be a valid ip_address" do
    expect("10.10.10.10").to eq(true)
    expect("678.678.678.678").to eq(false)
  end
  
end