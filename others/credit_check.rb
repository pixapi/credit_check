card = "4929735477250543"
puts card.inspect

digits = card.chars
puts digits.inspect

doubled = digits.each_with_index.map do |digit, index|
  if index % 2 == 0
    digit.to_i
  else
    digit.to_i * 2
  end
end
puts doubled.inspect

summed = doubled.map do |digit|
  if digit > 9
    digit.to_s(10).split(//).inject(0) {|z, x| z + x.to_i(10)}
  else
    digit
  end
end
puts summed.inspect

sum_all = summed.inject(:+)
puts sum_all.inspect

if sum_all % 10 == 0
  puts "This number is valid"
else
  puts "This number is invalid"
end
