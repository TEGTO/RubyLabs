require 'bigdecimal'

def Y(x, n, c)
  return ((((x**(1/n))+(c**(1/n)))**2)/((x-c)+(Math.sqrt(1/x) + n*(Math.sqrt(1/c)))))
end

def Z(x)
    term1 = Math.sin(2*x) ** 2
    term2 = Math.cos(Math::PI/3 - 2*x) * Math.sin(2*x - Math::PI/6)
    # Calculate cotangent: cot(a) = 1 / tan(a)
    cot_value = 1.0 / Math.tan((Math::PI + x) / (x + 1))
    term3 = cot_value ** (2.0/x)
    term1 - term2 - term3
end

def F(x, n, c)
  case x
  when 2...n
    return Y(x, n, c)
  when n...2*n
    return Z(x)
  else
    return Y(x, n, c) + Z(x)
  end
end

def subtask1(c, n)
  x = 1.0
  step = (n - 1)/(n + c)
  puts "step is #{step}\n\n"
  while x <= n
    puts "#{x} | #{Y(x, n, c).round(10)}"
    x += step
  end
end

def subtask2(c, n)
  x = Math::PI / n
  step = (Math::PI - x)/((3/2)*n + c)
  puts "step is #{step}\n\n"
  while x <= Math::PI
    puts "#{x} | #{Z(x)}"
    x += step
  end
end

def subtask3(c, n)
  x = 2.0
  step = (c - 2)/(2 * n)
  puts "step is #{step}\n\n"
  while x <= c
    puts "#{x} | #{F(x, n, c)}"
    x += step
    return if x == c && step == 0
  end
end

puts "\nTask 5\n"
print "Enter N: "
n = gets.chomp.to_f

print "Enter c: "
c = gets.chomp.to_f

puts "\nSubtask 1:"
puts "x  |  Y"
subtask1(c, n)


puts "\nSubtask 2:"
puts "x  |  Z"
subtask2(c, n)

puts "\nSubtask 3:"
puts "x  |  F"
subtask3(c, n)
puts "\n"