# frozen_string_literal: true

module PrimeTime
  # it generates and validates primes
  class PrimesHelper
    def self.prime?(value)
      return false if value < 2

      return true if value < 4

      max_divisor = Integer.sqrt(value).floor

      (2...(max_divisor + 1)).each do |divisor|
        return false if (value % divisor).zero?
      end
      true
    end

    def self.generate_primes(max_value)
      primes = []
      (2...(max_value + 1)).each do |candidate|
        primes << candidate if prime?(candidate)
      end
      primes
    end
  end
end
