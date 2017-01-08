require_relative 'lib/prime.rb'
require_relative 'lib/multiplication_table'
# require 'optparse'
#
# options = { size: 10 }
#
# OptionParser.new do |options|
#   options.banner = 'Usage: runner.rb [-s]'
# end
def int_check(string)
  /\A[-+]?\d+\z/ === string
end

if ARGV.any?
  if ARGV[0] == 'help' || ARGV[0] == '-h'
    puts 'Welcome to the Primes Multiplication Table Help Menu!'
    puts "Use '-s' to set the amount of primes"
    puts 'Example: ruby runner.rb -s 15'
  elsif ARGV[0] == 'size' || ARGV[0] == '-s'
    if int_check(ARGV[1])
      primes = Prime.first(ARGV[1].to_i)
      puts MultiplicationTable.new(primes, primes).to_s
    else
      puts ARGV[1] + ' is not a number'
      puts 'Please enter a valid number'
    end
  end
else
  puts MultiplicationTable.new(Prime.first, Prime.first).to_s
end
