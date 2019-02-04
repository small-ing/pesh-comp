line = IO.readlines("Ruby/PESH_qualifier/input/treasure.dat")
cases = line[0].to_i

for i in 1..cases do
  my_values = line[1].split(' ', 2)
  items = my_values[0].to_i
  carry_weight = my_values[1].to_i
  inventory = []
  w = 0
  total_value = 0
  for j in 1..items do
    item = line[1+j].split(' ', 2)
    value = item[0].to_i
    weight = item[1].to_i
    inventory << [ value, weight, value/weight.to_f ]
    puts "Item value is #{value} and weighs #{weight} oz."
  end
  inventory.sort! { |a, b| a[2] <=> b[2] }
#  puts inventory
  while w < carry_weight do
    a = inventory.pop()
    break if a.nil?
    next if w + a[1] > carry_weight
    total_value += a[0]
    w += a[1]
  end
  puts total_value, w
  total_value = 0
  w = 0
  #puts items
  #puts carry_weight

end
