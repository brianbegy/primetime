# frozen_string_literal: true

require 'spec_helper'
require 'prime'
require_relative '../../lib/io_helper'

context 'happy path tests' do
  it 'uses new value for good input' do
    allow(PrimeTime::IOHelper).to receive(:print_text)
    allow(PrimeTime::IOHelper).to receive(:receive_text_input) { 87 }
    expect(PrimeTime::IOHelper.prompt_for_max(10)).to eq(87)
  end
  it 'uses default value for garbage input' do
    allow(PrimeTime::IOHelper).to receive(:receive_text_input) { 'cheeseburger' }
    allow(PrimeTime::IOHelper).to receive(:print_text)
    expect(PrimeTime::IOHelper.prompt_for_max(10)).to eq(10)
  end
end
