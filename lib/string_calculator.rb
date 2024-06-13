require_relative './exceptions/negative_number_error'
class StringCalculator  
  def calculate(numbers, operation='')
    return 0 if numbers.empty?
    delimiter, numbers = parse_input(numbers)
    validate_negatives!(numbers)
    numbers = prepare_numbers(numbers, delimiter)
    if operation == "*"
      calculate_product(numbers)
    else
      calculate_sum(numbers)
    end
  end

  private

  def parse_input(numbers)
    return [",", numbers] unless numbers.start_with?("//")
    delimiter, numbers = numbers.gsub("\\n", "\n").split("\n")
    has_custom_delimiter = delimiter.match?(/\[.*\]/)
    parsed_delimiter = has_custom_delimiter ? delimiter[3..-2] : delimiter[2..-1]
    [parsed_delimiter, numbers]
  end

  def validate_negatives!(numbers)
    negative_numbers = numbers.scan(/-\d+/)
    raise NegativeNumberError, negative_numbers if negative_numbers.any?
  end

  def calculate_sum(numbers)
    numbers.sum
  end

  def reject_large_numbers(numbers)
    numbers.reject { |num| num > 1000 }
  end

  def calculate_product(numbers)
    numbers.inject(:*)
  end

  def prepare_numbers(numbers, delimiter)
    regex = /#{Regexp.escape(delimiter)}|\n/
    parsed_numbers = numbers.split(regex).map(&:to_i)
    reject_large_numbers(parsed_numbers)
  end
     
end
