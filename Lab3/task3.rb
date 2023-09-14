def task2
    sum = 0
    (0..9).each {
      |i|
      sum += 1.0 / (3 ** i)
    }
  
    return sum
  end
  
  def task3(x)
    print "Enter n: "
    n = gets.chomp.to_i
    sum = 0
    fact = 1
    (0..n + 1).each {
      |i|
      sum += (x.to_f ** i) / fact
      fact *= (i + 1)
    }
    return sum
  end
print "\nTask2: 1/3 + 1/3^2 + ... + 1/3^8 = #{task2()}" , "\n"
print "Enter x for task3: "
x = gets.chomp.to_f
puts "Task3: x^1/1! + ... + x^n/n! = #{task3(x)}"