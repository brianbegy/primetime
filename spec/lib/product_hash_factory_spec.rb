# frozen_string_literal: true

require 'spec_helper'
require 'prime'
require_relative '../../lib/product_hash_factory'

context 'happy path tests' do
  it 'builds the data correctly for small arrays' do
    result = PrimeTime::ProductHashFactory.create([1, 2, 3, 4])
    expect(result[1].to_set).to eq([1, 2, 3, 4].to_set)
    expect(result[2].to_set).to eq([2, 4, 6, 8].to_set)
  end

  it 'builds the data correctly for large arrays' do
    result = PrimeTime::ProductHashFactory.create((1...1001).to_a)
    expect(result[1].last).to eq(1000)
    expect(result[1000].first).to eq(1000)
    expect(result[1000].last).to eq(1_000_000)
  end
end
