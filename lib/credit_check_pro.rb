require 'pry'

class CreditCheck

  def double_num(card)
    digits = card.chars
    doubled = digits.each_with_index.map do |digit, index|
      if index % 2 == 0
        digit.to_i
      else
        digit.to_i * 2
      end
    end
    # sum_two_digits(doubled)
  end

  def sum_two_digits(doubled)
    summed = doubled.map do |digit|
      if digit > 9
        digit.to_s(10).split(//).inject(0) {|z, x| z + x.to_i(10)}
      else
        digit
      end
    end
    # sum_all_digits(summed)
  end

  def sum_all_digits(summed)
    sum_all = summed.inject(:+)
    # check_validity(sum_all)
  end

  def check_validity(sum_all)
    if sum_all % 10 == 0
      p "This number is valid"
    else
      p "This number is invalid"
    end
  end
end

cc = CreditCheck.new
cc.double_num("4929735477250543")
cc.sum_two_digits([4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6])
cc.sum_all_digits([4, 9, 2, 9, 7, 6, 5, 8, 7, 5, 2, 1, 0, 1, 4, 6])
cc.check_validity(76)
