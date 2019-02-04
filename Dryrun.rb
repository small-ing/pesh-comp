line = IO.readlines("Ruby/PESH_qualifier/input/dryrun.dat")
cases = line[0].to_i
# comment syntax
for i in 1..cases do
  li = line[i].split(' ', 2)
  puts "#{li[1].chomp} #{li[0]}"
end
