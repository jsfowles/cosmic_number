require 'humanize'

def get_number
  message = "Input any positive number or type quit:"
  puts message
  input = gets.strip
  exit 0 if input.downcase == 'quit'
  input.to_i
end

def magic_number(number)
  if number.humanize.length == 4
    puts "#{number} is #{number.humanize.length} and #{number.humanize.length} is the magic number"
  else
    puts "#{number} is #{number.humanize.length}"
    magic_number(number.humanize.length)
  end
end

while true
  magic_number(get_number)
end
