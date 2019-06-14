# frozen_string_literal: true

require 'spec_helper'
require 'faker'
require 'prime'
require_relative '../../lib/primes_helper'

context 'Compare to built in ruby primes class' do
  it 'identifies primes correctly' do
    max = Faker::Number.number(3).to_i
    Prime.each(max) do |prime|
      expect(PrimeTime::PrimesHelper.prime?(prime)).to be(true)
    end
  end

  it 'identifies not-prime correctly' do
    max = Faker::Number.number(3).to_i
    (1...max).each do |candidate|
      expect(PrimeTime::PrimesHelper.prime?(candidate)).to be(Prime.prime?(candidate))
    end
  end

  it 'gets an array of primes' do
    max = Faker::Number.number(3).to_i
    expect(Prime.each(max).to_set).to eq(PrimeTime::PrimesHelper.generate_primes(max).to_set)
  end
end
