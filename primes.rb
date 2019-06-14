# frozen_string_literal: true

require_relative 'lib/primes_helper'
require_relative 'lib/io_helper'
require_relative 'lib/report_factory'
require_relative 'lib/product_hash_factory'

# application for proving some level of competence in writing ruby
module PrimeTime
  max_value = PrimeTime::IOHelper.prompt_for_max(10)
  primes = PrimeTime::PrimesHelper.generate_primes(max_value)
  data = PrimeTime::ProductHashFactory.create(primes)
  report = PrimeTime::ReportFactory.create(data)
  PrimeTime::IOHelper.print_text(report)
end
