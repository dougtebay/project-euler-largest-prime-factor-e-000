# Enter your procedural solution here!
def largest_prime_factor(num)
  counter = 1
  while num > counter
    counter += 1
    num = num / counter if num % counter == 0 && is_prime?(counter)
  end
  counter
end

def is_prime?(num)
  (Math.sqrt(num).to_i).downto(2) { |i| return false if num % i == 0 }
  return true
end

largest_prime_factor(600851475143)