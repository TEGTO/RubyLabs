def fact(n)
    (1..n).reduce(1, :*)
end

def term(n)
    (fact(n-1).to_f / fact(n+1))**(n+1)
end
  
def task1(tol=1e-10)
    sum = 0.0
    n = 2
    loop do
      current_term = term(n)
      break if current_term < tol
      sum += current_term
      n += 1
    end
    sum
end
  
def task2()
    res = 0
    (1..10).each{ |i|
      res += 1 / ((2*i-1)*(2*i+1))
    }
    res
end

def term2(n)
    numerator = fact(4*n - 1) * fact(n+1)
    denominator = fact(3*n) * (3**(2*n)) * fact(2*n)
    numerator.to_f / denominator
end
  
def task3(tol=1e-10)
    sum = 0.0
    n = 1
    loop do
      current_term = term2(n)
      break if current_term < tol
      sum += current_term
      n += 1
    end
    sum
end

  print "Task1: #{task1()}\n"
  print "Task2: #{(1/2)==task2()}\n"
  print "Task3: #{task3()}\n"
  

