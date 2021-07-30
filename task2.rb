# frozen_string_literal: true

def is_domino(string)
  domino_array = string.split(',')
  domino_array.map! { |element| element[2] == domino_array[domino_array.index(element) + 1].to_s[0] }
  domino_array = domino_array.chunk_while { |a, b| a == b }.to_a
  max = 0
  domino_array.count.times do |index|
    max = domino_array[index].count unless domino_array[index][0] == false
  end
  p max + 1
end

p 'Test Cases: '
p is_domino('1-1,3-5,5-2,2-3,2-4')
p is_domino('3-2,2-1,1-4,4-4,5-4,4-2,2-1')
p is_domino('5-5,5-5,4-4,5-5,5-5,5-5,5-5,5-5,5-5,5-5')
p is_domino('1-1,3-5,5-5,5-4,4-2,1-3')
p is_domino('1-2,2-2,3-3,3-4,4-5,1-1,1-2')
