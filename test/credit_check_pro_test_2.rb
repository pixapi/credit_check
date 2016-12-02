require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check_pro_2'

class CreditCheckTest < Minitest::Test
  def test_it_exists
    assert CreditCheck.new
  end

  def test_it_has_a_class
    cc = CreditCheck.new
    assert_instance_of CreditCheck, cc
  end

  def test_it_checks_validity_when_provided_credit_card_number
    cc = CreditCheck.new
    expected = [4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6]
    assert_equal "This number is invalid", cc.double_num("4929735477250543")
  end

  def test_it_checks_card_validity_from_odd_positions_doubled
    cc = CreditCheck.new
    assert_equal "This number is invalid", cc.sum_two_digits([4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6])
  end

  def test_it_checks_card_validity_from_two_digits_summed
    cc = CreditCheck.new
    assert_equal "This number is invalid", cc.sum_all_digits([4, 9, 2, 9, 7, 6, 5, 8, 7, 5, 2, 1, 0, 1, 4, 6])
  end

  def test_it_checks_card_validity_from_all_numbers_summed
    cc = CreditCheck.new
    assert_equal "This number is invalid", cc.check_validity(76)
  end
end
