# frozen_string_literal: true

module PrimeTime
  # Factory class for creating hashes of products
  class ProductHashFactory
    # Accepts an array of integers and calculates a multiplication table as a hash
    #
    # The ON^2 aspect is not good.
    # We could do some kind of "did we already calculate this product?"
    # logic, but I'm not convinced that would be cheaper than
    # just recaculating any duplicates
    def self.create(input)
      data = {}
      input.each do |i1|
        products = []
        input.each do |i2|
          products << i1 * i2
        end
        data[i1] = products
      end
      data
    end
  end
end
