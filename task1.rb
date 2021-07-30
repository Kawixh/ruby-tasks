# frozen_string_literal: true

def safe_position(_total_persons, kill_position)
  return kill_position.next if _total_persons > kill_position

  'Incorrect Input'
end

p safe_position(3, 4)
p safe_position(5, 2)
p safe_position(6, 10)
