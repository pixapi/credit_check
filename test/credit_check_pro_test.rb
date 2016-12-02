require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check_pro'

class CreditCheckTest < Minitest::Test
  def test_it_exists
    assert CreditCheck.new
  end

  def test_it_has_a_class
    cc = CreditCheck.new
    assert_instance_of CreditCheck, cc
  end

  def test_it_can_double_odd_position_numbers
    cc = CreditCheck.new
    expected = [4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6]
    assert_equal expected, cc.double_num("4929735477250543")
  end

  def test_it_can_sum_two_digits
    cc = CreditCheck.new
    expected = [4, 9, 2, 9, 7, 6, 5, 8, 7, 5, 2, 1, 0, 1, 4, 6]
    assert_equal expected, cc.sum_two_digits([4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6])
  end

  def test_it_can_sum_all_digits
    cc = CreditCheck.new
    assert_equal 76, cc.sum_all_digits([4, 9, 2, 9, 7, 6, 5, 8, 7, 5, 2, 1, 0, 1, 4, 6])
  end

  def test_it_can_evaluate_card
    cc = CreditCheck.new
    assert_equal "This number is invalid", cc.check_validity(76)
  end
end
