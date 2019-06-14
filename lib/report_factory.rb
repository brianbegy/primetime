# frozen_string_literal: true

module PrimeTime
  # simple factory for generating nice columular reports of numbers
  class ReportFactory
    # returns a number padded out to the desired_width
    def self.pad_number(desired_width, number)
      pad = desired_width - number.to_s.length
      return "#{' ' * pad}#{number}" if pad >= 0

      raise StandardError, "desired width #{desired_width} is not valid for #{n}"
    end

    def self.calculate_max_column_width(data)
      max_val = 0
      # get padding for array
      data.each do |_k, v|
        this_max = v.max # avoid > 1 iteration of the array
        max_val = this_max unless max_val > this_max
      end
      max_val.to_s.length
    end

    # generates a table where the top row and the columns
    # consist of the keys of the data hash and the
    # cells of the values from the hash
    # All numbers right-justify.
    def self.create(data)
      rows = []
      max_key_width = data.each_key.to_a.max.to_s.length
      max_width = calculate_max_column_width(data)

      # format top row
      top_row = data.each_key.map { |r| pad_number(max_width, r) }
      rows << " #{' ' * max_key_width }#{top_row.join(' ')}"

      # format all rows
      data.each do |k, v|
        padded_nums = v.map { |value| pad_number(max_width, value) }
        rows << "#{pad_number(max_key_width, k)} #{padded_nums.join(' ')}"
      end
      rows
    end
  end
end
