def prm(a, b, func, accuracy = 0.001)
    n = ((b - a) / accuracy).to_i
    dx = (b - a) / n
    sum = 0
    x = a + dx / 2
  
    n.times do
      sum += func.call(x) * dx
      x += dx
    end
    sum
  end
  
  def trp(a, b, func, accuracy = 0.001)
    n = ((b - a) / accuracy).to_i
    dx = (b - a) / n
    sum = 0
  
    n.times do |i|
      x1 = a + i * dx
      x2 = a + (i + 1) * dx
      sum += (func.call(x1) + func.call(x2)) * dx / 2.0
    end
    sum
  end
  
  f1 = ->(x) { x*((1+x)**1/3) }
  f2 = ->(x) { 1 / (3 + Math.cos(x))}
  x = prm(1.0, 8.0,  f1);
  puts x, "\n"
  x = trp(1.0, 8.0,  f1);
  puts x, "\n"
  
  x = prm(2.0, 2.7,  f2)
  puts x, "\n"
  x = trp(2.0, 2.7,  f2)
  puts x, "\n"