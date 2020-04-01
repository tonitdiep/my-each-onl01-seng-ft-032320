require_relative 'spec_helper'
require 'pry'
describe "my_each" do
  file = File.read('./my_each.rb')
  it "does not call on .each" do
    expect(file).to_not include(".each")
  end
  it "does not call on puts" do
    expect(file).to_not include("puts")
  end
  it "calls on while" do
    expect(file).to include("while")
  end
  it "iterates over each element" do
    words = ['hi', 'hello', 'bye', 'goodbye']
    # This line tests that each word gets printed out by the loop!
    expect($stdout).to receive(:puts).exactly(words.length).times
    my_each(words) do |word|
      puts word
    end
  end
