require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fib'

class FibTest < Minitest::Test
  def test_it_works
    fib = Fib.new
    input = fib.generate_up_to(4_000_000)
   assert_equal 4613732, fib.sum(input)
  end

  def test_it_returns_the_correct_values
    fib = Fib.new
    input = fib.generate_up_to(100)
    assert_equal [1,2,3,5,8,13,21,34,55,89], input
  end

  def test_it_generates_the_first_ten_values_of_the_fibonacci_sequence
    fib = Fib.new
    input = fib.generate_up_to(90)
   assert_equal [1,2,3,5,8,13,21,34,55,89], input
  end


  def test_it_generates_the_first_nine_values_of_the_fibonacci_sequence
    fib = Fib.new
    input = fib.generate_up_to(88)
    assert_equal [1,2,3,5,8,13,21,34,55], input
  end

  def test_it_sums_the_even_values_of_the_first_ten
    fib = Fib.new
   input = [1,2,3,5,8,13,21,34,55,89]
   output = fib.sum(input)
   assert_equal 44, output
  end
end
