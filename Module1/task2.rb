def Foo(a, b, c, x)
    if(c < 0 and b != 0)
        return a*(x**2)+(b**2)*x
    elsif  (c > 0 and b == 0)
        return (x+a)/(x/c)
    else
        return x/c
    end
  end
  
puts "Foo(2, 5, -1, 4) = #{Foo(2, 5, -1, 4)}"
puts "Foo(2,0,1,4) = #{Foo(2,0,1,4)}"
puts "Foo(2,1,1,4) = #{Foo(2,1,1,4)}"