# Enter your object-oriented solution here!
class LargestPrimeFactor
  def initialize(num)
    @counter = 1
    while num > @counter
      @counter += 1
      num = num / @counter if num % @counter == 0 && is_prime?(@counter)
    end
    @counter
  end

  def is_prime?(num)
    (Math.sqrt(num).to_i).downto(2) { |i| return false if num % i == 0 }
    return true
  end

  def number
    @counter
  end
end