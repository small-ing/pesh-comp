line = IO.readlines("Ruby/PESH_qualifier/input/pups.dat")
cases = line[0].to_i

for i in 1..cases do
  data_set = line[i].split(' ', 3)
  dogs = data_set[0].to_i
  amt = data_set[1].to_f
  price = data_set[2].to_f
  str = "$%.2f" % (dogs*amt*price)
  puts str
end
