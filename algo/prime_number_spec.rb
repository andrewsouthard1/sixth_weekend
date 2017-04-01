require_relative 'prime_number'

describe PrimeNumber do
  it "should return false" do
    test = PrimeNumber.new
    expect(test.is_prime?(9)).to eq false
  end

  it "should return true" do
    test = PrimeNumber.new
    expect(test.is_prime?(17)).to eq true
  end
end