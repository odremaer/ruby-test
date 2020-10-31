require 'mathn'

def det(matrix)
  matrix = Matrix[*matrix]
  det = matrix.det

end
STDOUT.flush
matrix = []
while true do
  k = 0
  cur_input = gets.chomp
  if cur_input == ''
    if matrix.length == 0
      puts "Не было введено ни одной строки"
      break
    elsif matrix.length == matrix[0].length
      puts "Матрица квадратная, определитель - #{det(matrix) }"  #  функция по вычислению определител
      break
    else
      puts "Матрица не является квадратной"
      break
    end
  else
    matrix << cur_input.split(',').map { |n| n.to_i }

    puts
  end
end
