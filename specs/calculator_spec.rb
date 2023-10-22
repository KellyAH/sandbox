require 'rspec'
require_relative '../calculator'

describe Calculator do
  before {@calculator = Calculator.new('Rspec calculator')}

  it "should add 2 numbers correctly" do
    expect(@calculator.add(2, 2)).to eq 4
  end

  it "should subtract 2 numbers correctly" do
    expect(@calculator.subtract(4, 2)).to eq 2
  end

  it "should sum two odd numbers and become even" do
    expect(@calculator.add(3, 5)).to eq 8
  end
end
