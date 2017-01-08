require_relative 'lib/prime.rb'
require_relative 'lib/multiplication_table'
require 'terminal-table'

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
      table = Terminal::Table.new rows: MultiplicationTable.new(primes, primes).table
      puts table
    else
      puts ARGV[1] + ' is not a number'
      puts 'Please enter a valid number'
    end
  end
else
  table = Terminal::Table.new rows: MultiplicationTable.new(Prime.first, Prime.first).table
  puts table
end
