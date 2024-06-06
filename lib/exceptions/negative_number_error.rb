class StringCalculator
  class NegativeNumberError < StandardError
    def initialize(numbers)
      super("negative numbers are not allowed #{numbers.join(', ')}")
    end
  end
end
