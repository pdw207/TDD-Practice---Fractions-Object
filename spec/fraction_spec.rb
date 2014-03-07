# guard init rspec
# bundle exec guard
require 'pry'
require 'rspec'

require_relative '../lib/fraction'


describe Fraction do
	let(:test_one) {Fraction.new(3,4)}
	let(:test_two) {Fraction.new(1,4)}

  it 'produces a stirng fraction (i.e. 1/3)' do
 	  expect(test_two.inspect).to eq("1/4")
  end

  it 'Be able to add fractions together' do
  	expect((test_one+test_two).numerator).to eq(1)
 	  expect((test_one+test_two).denominator).to eq(1)
  end

	it 'Be able to subtract fractions' do
   	expect((test_one-test_two).numerator).to eq(1)
 	  expect((test_one-test_two).denominator).to eq(2)

	end

	it 'Be able to multiply fractions' do
		expect((test_one*test_two).inspect).to eq("3/16")
	end

	it 'Be able to divide fractions' do
		expect((test_one/test_two).inspect).to eq("3/1")
	end

	it 'Be able to check if 2 fractions have the same value' do
		expect(test_one==test_one).to eq (true)
	end

	it 'Be able to check if a fraction is larger than another fraction' do
		expect(test_one>test_two).to eq (true)
	end

	it 'Be able to check if a fraction is smaller than another fraction' do
		expect(test_one<test_two).to eq (false)
	end

end















