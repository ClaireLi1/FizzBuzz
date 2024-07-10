$dict = {3 => 'Fizz', 5 => 'Buzz', 7 => 'Bang', 11 => 'Bong', 13 => 'Fezz'}
$rules_number = [3,5,7,11,13,17]

def rule_3(number, output)
  if number % 3 == 0
    output << $dict[3]
  end
  output
end

def rule_5(number,output)
  if number % 5 == 0
    output << $dict[5]
  end
  output
end

def rule_7(number,output)
  if number % 7 == 0 && output != []
    output << $dict[7]
  end
  output
end

def rule_11(number,output)
  if number % 11 == 0
    output = $dict[11]
  end
  output
end

def rule_13(number,output)
  if number % 13 == 0
    index = output.index {|element| element[0] == 'B'}
    if index.nil?
      output << $dict[13]
    else
      output.insert(index,$dict[13])
    end
  end
  output
end

def rule_17(number,output)
  if number % 17 == 0
    output.reverse!
  end
  output
end

def custom_rules(rules,n)
  for number in 1..n

    output = []
    for rule_number in rules
      function_name = "rule_#{rule_number}"
      output = send(function_name, number, output)
    end

    if output == []
      output = [number]
    end

    puts output.join('')

  end
end

def validate_input(rules)
  if rules.any? { |rule| !$rules_number.include?(rule) }
    puts 'The rules you have entered are not valid.'
    exit
  end
end

puts 'Enter a combination of rules you want to implement from {3,5,7,11,13,17}, separated by spaces:'
rules = gets.chomp.split(' ').map { |str| str.to_i }.sort
validate_input(rules)
custom_rules(rules,300)

