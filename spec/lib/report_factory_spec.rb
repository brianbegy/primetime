# frozen_string_literal: true

require 'spec_helper'
require 'prime'
require_relative '../../lib/report_factory'

context 'padding tests' do
  it 'calculates padding correctly' do
    expect(PrimeTime::ReportFactory.pad_number(5, 1)).to eq('    1')
    expect(PrimeTime::ReportFactory.pad_number(2, 1)).to eq(' 1')
  end

  it 'blows up on invalid input' do
    expect { PrimeTime::ReportFactory.pad_number(2, 100) }.to raise_error(StandardError)
  end

  it 'gets max width correctly' do
    data = { A: [1, 2, 300], B: [9001, 1, 12] }
    expect(PrimeTime::ReportFactory.calculate_max_column_width(data)).to eq(4)
  end
end

context 'reports' do
  it 'builds the report correctly' do
    data = { 1 => [1, 3], 3 => [3, 9] }
    result = PrimeTime::ReportFactory.create(data)
    expect(result[0]).to eq('  1 3')
    expect(result[1]).to eq('1 1 3')
    expect(result[2]).to eq('3 3 9')
  end
end
