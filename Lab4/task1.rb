A = [0, -3, 4, 0, -1, 5, -2, 3, 0, 8, -7, 6, 0]

zeros = A.select { |num| num == 0 }
negatives = A.select { |num| num < 0 }
positives = A.select { |num| num > 0 }

B = zeros.concat(negatives).concat(positives)

puts B