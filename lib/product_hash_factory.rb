# frozen_string_literal: true

module PrimeTime
  # Factory class for creating hashes of products
  class ProductHashFactory
    # Accepts an array of integers and calculates a multiplication table as a hash
    #
    # The ON^2 aspect smells off.
    #
    # We could avoid double calculating the product by
    # keeping a hash where the key is the two primes
    # and the value the product,
    # but I'm not convinced maintaining that is any faster than
    # just doing the multiplication 2x
    # building a times table *is* an On^2 problem.
    def self.create(input)
      data = {}
      input.each do |i|
        products = []
        input.each do |j|
          products << i * j
        end
        data[i] = products
      end
      data
    end
  end
end
