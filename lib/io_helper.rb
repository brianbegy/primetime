# frozen_string_literal: true

module PrimeTime
  # contains functions for prompting for the max prime to calculate
  class IOHelper
    # prompts for a max value, including snappy diologue
    def self.prompt_for_max(default_value)
      print_text "Calculate prime products up to what value? default = #{default_value}"
      value = receive_text_input
      if value.nil? || value.empty?
        return default_value
      end 
      return Integer(value)
    rescue ArgumentError
      print_text "Hmmm... I couldn't parse '#{value}'.  I'll just use #{default_value} instead."
      default_value
    end

    # these functions mainly exist so we can mock io
    # :nocov:
    def self.receive_text_input
      gets.chomp
    end

    def self.print_text(text)
      puts text
    end
    # :nocov:
  end
end
