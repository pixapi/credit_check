require 'minitest/autorun'
require 'minitest/pride'
require './credit_check_pro'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    assert CreditCheck.new
  end

  def test_it_has_a_class
    card = CreditCheck.new
    assert_instance_of CreditCheck, card
  end

  # def test_it_can_double_odd_position_numbers
  #   card = CreditCheck.new
  #   expected = [4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6]
  #   assert_equal "This number is invalid", card.sum_two_digits([4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6])
  # end

  def test_it_can_double_odd_position_numbers
    card = CreditCheck.new
    expected = [4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6]
    assert_equal expected, card.double_num("4929735477250543")
  end

  def test_it_can_sum_two_digits
    card = CreditCheck.new
    expected = [4, 9, 2, 9, 7, 6, 5, 8, 7, 5, 2, 1, 0, 1, 4, 6]
    assert_equal expected, card.sum_two_digits([4, 18, 2, 18, 7, 6, 5, 8, 7, 14, 2, 10, 0, 10, 4, 6])

  end

  def test_it_can_sum_all_digits
    card = CreditCheck.new
    assert_equal 76, card.sum_all_digits([4, 9, 2, 9, 7, 6, 5, 8, 7, 5, 2, 1, 0, 1, 4, 6])
  end

  def test_it_can_evaluate_card
    card = CreditCheck.new
    assert_equal "This number is invalid", card.check_validity(76)
  end
end
