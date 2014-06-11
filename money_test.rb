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

end
