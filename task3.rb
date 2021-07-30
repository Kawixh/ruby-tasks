# frozen_string_literal: true

def isValid(string)
  hash_table = Hash.new(0)
  string.gsub(' ', '').chars.each { |char| hash_table[char] += 1 }
  #  p hash_table.reject { |_, v| v == hash_table.values }
  # p hash_table.values.max - hash_table.values.min

  return 'YES' unless
    (hash_table.values.max - hash_table.values.min > 1) ||
    (hash_table.reject { |_, v| v == hash_table.values }.count > 1)

  'NO'
end

p isValid('aabbccc')
