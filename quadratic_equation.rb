STDOUT.flush
abc = gets.chomp
splitted_abc = abc.split
int_abc = splitted_abc.map { |n| n.to_i }

d = int_abc[1] ** 2 - 4*int_abc[0]*int_abc[2]

if d > 0
  fst_x = (-int_abc[1]+Math.sqrt(d))/(2*int_abc[0])
  scnd_x = (-int_abc[1]-Math.sqrt(d))/(2*int_abc[0])

  puts "D = #{d} + first root is #{fst_x}, second root is #{scnd_x}"
elsif d == 0
  x = -int_abc[1]/(2*int_abc[0])
  puts "D = #{d}, root is #{x}"
else
  puts "D = #{d} - Корней нет"
end