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

is_domino("5-5,5-5,4-4,5-5,5-5,5-5,5-5,5-5,5-5,5-5")
