require 'minitest/unit'
require './lib/string/conversions'
MiniTest::Unit.autorun

class TestMetaopiaString < MiniTest::Unit::TestCase

  # def setup
    # $stdout, @orig_stdout = open("/dev/null", "w"), $stdout
  # end

  # def teardown
  #   @stdout = @orig_stdout
  # end

  def test_not_interger
    assert_equal "aaa".is_i?, false
  end

  def test_interger
    assert_equal "1234".is_i?, true
  end

  def test_minus_interger
    assert_equal "-1000".is_i?, true
  end

  def test_0
    assert_equal "0".is_i?, true
  end

end