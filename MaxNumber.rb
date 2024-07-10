
def up_to_max(n)
  for i in 1..n
    puts i
  end
end

puts 'Enter Maximum Number:'
n = gets.chomp.to_i
up_to_max(n)
