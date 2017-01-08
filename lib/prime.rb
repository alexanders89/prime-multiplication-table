# Class to determine prime numbers and output the first 'n' primes
class Prime
  # Checks if the number provided is actually a prime
  def self.valid?(n)
    impossible_endings = [0, 2, 4, 5, 6, 8]

    return false if n <= 1
    return false if impossible_endings.include?(n % 10) && n != 2 && n != 5

    root = Math.sqrt(n).to_i
    root.downto(2) { |num| return false if (n % num).zero? }

    true
  end
end
