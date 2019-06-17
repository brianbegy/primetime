# frozen_string_literal: true

module PrimeTime
  # Factory class for creating hashes of products
  class ProductHashFactory
    # Accepts an array of integers and calculates a multiplication table as a hash
    #
    # The ON^2 aspect smells off.
    #
    # We could avoid double calculating the product by
    # keeping a hash where the key is the first of the two primes,
    # the value a hash with the key of the second and a value of the product.
    # However, when I tested this,
    # I found it to be about 2x slower that just multiplying
    # for samples up to 100 x 100 integers.
    #
    # Building a times table *is* an On^2 problem.
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
