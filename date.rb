input = IO.readlines('Ruby/PESH_qualifier/input/date.dat')
cases = input[0].to_i

(1..cases).each do |i|
  cond = true
  line = input[i].split(' ', 3)
  month = line[0]
  day = line[1]
  year = line[2]
  day = day[0...-1]
  if month == 'January'
    month = '01'
  elsif month == 'February'
    month = '02'
  elsif month == 'March'
    month = '03'
  elsif month == 'April'
    month = '04'
  elsif month == 'May'
    month = '05'
  elsif month == 'June'
    month = '06'
  elsif month == 'July'
    month = '07'
  elsif month == 'August'
    month = '08'
  elsif month == 'September'
    month = '09'
  elsif month == 'October'
    month = '10'
  elsif month == 'November'
    month = '11'
  elsif month == 'December'
    month = '12'
  else
    cond = false
  end
  if day.to_i > 31
    cond = false
  elsif day.to_i < 1
    cond = false
  end

  if cond == false
    puts 'Invalid'
    next
  end

  if year.to_i > 99
    year = year[-3..-1]
  elsif year.to_i < 10
    year = '0' + year
  end

  day = '0' + day if day.length < 2

  puts month + '/' + day + '/' + year
end
