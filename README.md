# String Calculator

The String Calculator is a simple Ruby application that provides a method to add numbers provided as strings.

## Features

- **Add Method**: The `add` method accepts a string of numbers and returns their sum.
- **Multiple Delimiters**: The numbers in the string can be separated by commas or newline characters.
- **Custom Delimiters**: The `add` method also supports custom delimiters. The delimiter is specified at the beginning of the string, in the format `//[delimiter]\n`. For example, the string `//;\n1;2` will return 3.
- **Ignore Large Numbers**: The `add` method ignores numbers greater than 1000.
- **Negative Number Handling**: If the string contains negative numbers, the `add` method raises an exception with a message indicating which numbers were negative.
- **Any Length Delimiters**: The `add` method supports delimiters of any length.

## Usage

1. **Create an Instance**: First, create a new instance of the `StringCalculator` class:

```ruby
calculator = StringCalculator.new
```
2. **Call the Add Method**: Then, call the add method with a string of numbers:

```
result = calculator.add('1,2,3')

```
The add method will return the sum of the numbers in the string.

Running Tests
This application includes a suite of tests written with RSpec. To run the tests, navigate to the application directory in your terminal and run the following command:

```
rspec
```

Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change. Please make sure to update tests as appropriate.

License
This project is licensed under the MIT License.


This version of the README uses more formatting to make the text easier to read and understand. It also breaks down the usage instructions into steps, making them easier to follow.