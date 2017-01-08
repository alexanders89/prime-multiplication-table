require_relative 'lib/interface.rb'

if ARGV.any?
  if ARGV[0] == 'help' || ARGV[0] == '-h'
    Interface.help
  elsif ARGV[0] == 'size' || ARGV[0] == '-s'
    Interface.size(ARGV[1])
  end
else
  Interface.table
end
