require "spec_helper"
require_relative "../lib/play"

describe "#add" do
  it "adds two numbers together" do 
    expect( add(2,3) ).to eq(5)
  end

  it "adds two negative numbers together" do
    expect( add(-2, -4) ).to eq(-6) 
  end
end

  describe "#odds" do
    it ("selects odd numbers") do
    expect( odds([1,2,3]) ).to eq( [1,3] ) 
  end

   it "goes through an array of even numbers and prints an empty array" do
    expect( odds([2,4,6]) ).to eq( [] ) 
  end

  it "goes through an array and prints an empty array" do
    expect( odds( [] ) ).to eq( [] ) 
  end
end

describe "#palindrome?" do
  it ("word is palindrome") do
    expect( palindrome?("abba") ).to eq(true)
  end

  it ("word with some upcase is a palindrome") do
    expect( palindrome?("ABbA") ).to eq(true)
  end

  #to_be true can also be used 

    it ("word is a palindrome if there are spaces at the end") do
    expect( palindrome?("abba   ") ).to eq(true)
  end

  it ("word is not a palindrome") do
    expect( palindrome?("abda") ).to eq(false)
  end

  it ("isn't a palindrome if it is only one character") do
    expect( palindrome?("a") ).to eq(false)
  end
end


describe "#rps" do
  let(:player_one) do
    { name: "Jeff", play: "scissors" }
  end
  let(:player_two) do
    {name:"Peter", play: "paper"}
 end 

 context "player one has the winning hand" do
  it "wins the game!" do
    expect( rps(player_one, player_two) ).to eq("Jeff wins!")
    end
  end


   context "player two has the winning hand" do
    before do
      player_two[:play] = "rock"
    end 


  it "wins the game!" do

    expect( rps(player_one, player_two) ).to eq("Peter wins!")
    end
  end
end 