#!/usr/bin/env ruby

require 'rubygems'
require 'minitest/autorun'
require './money'

class MoneyTest < Minitest::Test
  def setup
  end

  def test_should_parse_input
    money = Money.new("$1.05")
    assert_equal 1.05, money.amount
  end

  def test_should_add_money
    money1 = Money.new("$1.00")
    money2 = Money.new("$2.00")
    assert_equal 2.00, money1 + money2
  end
end
