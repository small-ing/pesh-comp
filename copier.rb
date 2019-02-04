line = IO.readlines('Ruby/PESH_qualifier/input/copier.dat')
cases = line[0].to_i

(1..cases).each do |i|
  puts line[i].chomp + ' ' + line[i]
end
