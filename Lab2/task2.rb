$P = 2
$t = 32
$r = 8

$result = $P**$r*(1 - $P**(-1*$t))

print "Result = " + $result.to_f.to_s, "\n"