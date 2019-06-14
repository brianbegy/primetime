module PrimeTime
  class Helper
    def self.prime?(value)
      if value == 1
        return false # I am not going to fight this one:  https://en.wikipedia.org/wiki/Prime_number
      end

      if value < 4
        return true;
      end 

      max_divisor = (Integer.sqrt(value).floor)
    
      (2...(max_divisor+1)).each do |divisor|
        return false if value % divisor == 0
      end
      return true
    end
  end
end
