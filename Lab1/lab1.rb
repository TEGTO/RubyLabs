# frozen_string_literal: true
def radius(a,fi,x,gama)
  w=Math.log(1+Math.cos(a)**2)+Math.tan(Math.sin(x))+4.8*10**1.3
  f=5*Math.sqrt(fi+gama)
  r=(Math::E**(Math.sin(Math::PI**2).abs))*(w/f)
  return r
end

print "Введіть значення a: "
a = gets.chomp.to_f

print "Введіть значення fi: "
fi = gets.chomp.to_f

print "Введіть значення x: "
x = gets.chomp.to_f

print "Введіть значення gama: "
gama = gets.chomp.to_f

result = radius(a,fi,x,gama)
puts "Результат обчислення: #{result}"
