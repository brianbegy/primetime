require 'spec_helper'
require 'prime'
require_relative '../../lib/helper'

context 'happy path tests' do
  it 'identifies primes correctly' do
    Prime.each(100) do |prime|
      expect(PrimeTime::Helper.prime?(prime)).to be(true)
    end
  end
  it 'identifies not-prime correctly' do
    (1...100).each do |candidate|
      expect(PrimeTime::Helper.prime?(candidate)).to be(Prime.prime?(candidate))
    end
  end
end
