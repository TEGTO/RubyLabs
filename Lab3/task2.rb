def Foo(x)
    case x
    when -4..0
      return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
    when 0..12
      return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0/4.5)
    else
      return 1 / ( 1 + x / (1 + x / (1 + x)))
    end
  end
  
puts "Foo(-4) = #{Foo(-4)}"
puts "Foo(0) = #{Foo(0)}"
puts "Foo(1) = #{Foo(1)}"
puts "Foo(11.3) = #{Foo(11.3)}"
puts "Foo(-5) = #{Foo(-5)}"
puts "Foo(13) = #{Foo(13)}"