require_relative 'lib/interface.rb'

if ARGV.any?
  if ARGV[0] == 'size' || ARGV[0] == '-s'
    Interface.size(ARGV[1])
  else
    Interface.help
  end
else
  Interface.table
end
