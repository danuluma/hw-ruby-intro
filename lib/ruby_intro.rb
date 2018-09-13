# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = arr.inject(0) { |sum, item| sum + item }
  return result
  # YOUR CODE HERE
end

def max_2_sum arr
  newarr = arr.sort_by(&:to_i).reverse
  return newarr[0] + newarr[1] unless newarr.size < 2
  return newarr[0] if newarr.size == 1
  return 0 if newarr.size ==0
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, #{name}"
  # YOUR CODE HERE
end

def starts_with_consonant? s
  str = s.downcase.split("").to_a
  if str.length > 0
    return false unless str[0] =~ /[A-Za-z]/
    return true unless ["a", "e", "i", "o", "u"].include?(str[0])
    return false if ["a", "e", "i", "o", "u"].include?(str[0])
  end
  return false
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  bin = s.split(" ").to_a
  puts(bin)
  puts(s)
  # return (s.length % 4) == 0
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError
    end
    @isbn = isbn
    if price <= 0
      raise ArgumentError
    end
    @price = price
  end



  def price_as_string
    return "$#{sprintf('%.2f', @price)}"
  end


# YOUR CODE HERE
end
