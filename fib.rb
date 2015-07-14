class Fib

  def generate_up_to(number_to_generate)
    numbers = [1,2]
   while numbers[-1] < number_to_generate
    numbers << numbers[-1] + numbers[-2]
   end
   numbers[0..-2]
  end
  def sum(input)
    evens = input.select { |integer| integer.even? }
    evens.reduce(0) { |sum, integer| sum + integer }
  end
end
