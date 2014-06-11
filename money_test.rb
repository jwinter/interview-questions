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
    money1 = Money.new("$0.10")
    money2 = Money.new("$0.20")
    assert_equal 0.30, money1 + money2
  end
end
