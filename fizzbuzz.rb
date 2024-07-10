#Part 1
def fizzbuzz
  for i in 1..100
    if i % 3 == 0 && i % 5 == 0
      puts 'FizzBuzz'
    elsif i % 3 == 0
      puts 'Fizz'
    elsif i % 5 == 0
      puts 'Buzz'
    else
      puts i
    end
  end
end

#Part2
def fizzbuzz2
  for i in 1..100
    output = ''

    if i % 3 == 0
      output += 'Fizz'
    end

    if i % 5 == 0
      output += 'Buzz'
    end

    if i % 7 == 0 && output != ''
      output += 'Bang'
    end

    if output == ''
      output = i
    end

    puts output

  end
end


def fizzbuzz3
  for i in 1..100
    output = ''
    if i % 3 == 0
      output += 'Fizz'
    end

    if i % 5 == 0
      output += 'Buzz'
    end

    if i % 7 == 0 && output != ''
      output += 'Bang'
    end

    if i % 11 == 0
      output = 'Bong'
    end

    if output == ''
      output = i
    end

    puts output

  end

end


def fizzbuzz4(n)

  dict = {3 => 'Fizz', 5 => 'Buzz', 7 => 'Bang', 11 => 'Bong', 13 => 'Fezz'}

  for i in 1..n
    output = []

    if i % 3 == 0
      output << dict[3]
    end

    if i % 5 == 0
      output << dict[5]
    end

    if i % 7 == 0 && output == []
      output << dict[7]
    end

    if i % 11 == 0
      output = [dict[11]]
    end

    if i % 13 == 0
      index = 0
      for substring in output
        puts substring
        if substring[0] == 'B'
          output.insert(index,dict[13])
          break
        end
        index += 1
      end
      if index == output.length
        output << dict[13]
      end
    end

    if output == []
      output = [i]
    end

    puts output.join('')
  end

end


def fizzbuzz5(n)
  dict = {3 => 'Fizz', 5 => 'Buzz', 7 => 'Bang', 11 => 'Bong', 13 => 'Fezz'}

  for i in 1..n
    output = []

    if i % 3 == 0
      output << dict[3]
    end

    if i % 5 == 0
      output << dict[5]
    end

    if i % 7 == 0
      output << dict[7]
    end

    if i % 11 == 0
      output = [dict[11]]
    end

    if i % 13 == 0
      index = output.index {|element| element[0] == 'B'}
      if index.nil?
        output << dict[13]
      else
        output.insert(index,dict[13])
      end
    end

    if i % 17 == 0
      output.reverse!
    end

    if output == []
      output = [i]
    end

    puts output.join('')
  end

end

n = 300
fizzbuzz5(n)