
def createMatrix(n)
    m = []
  
    n.times {
      |i|
      row = []
      n.times {
        |j|
          row.push(rand(10))
      }
      m.push(row)
    }
    return m
  end

  def matrixTrace(matrix)
    trace = 0
  
    for i in 0...matrix.length
      trace += matrix[i][i]
    end
  
    trace
  end
  
def printMatrix(matrix)
  matrix.each do |row|
    puts row.join(" ")
  end
end
  
  
 matrix = createMatrix(8)
  printMatrix(matrix)
  puts "\nMatrix trace = #{matrixTrace(matrix)}"