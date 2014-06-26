require 'minitest/unit'
require './lib/string/conversions'
require './lib/hash/keys'
MiniTest::Unit.autorun

class TestMetaopiaHash < MiniTest::Unit::TestCase

  def setup
    @symbol_key_data = {value1: "111", arr:{value2: "222"}}
    @string_key_data = {"value1" => "111", "arr" => {"value2" => "222"}}

    @array_data = {list: [{arr1: "111", arr2: "222"}, {arr3: "333"}]}
    @array_string_key_data = {"list" => ["arr1" => "111", "arr2" => "222"] }
  end

  def test_symbol_key
    assert_equal @symbol_key_data.syntax_value("value1"), "111"
    assert_equal @symbol_key_data.syntax_value("arr.value2"), "222"
  end

  def test_string_key
    assert_equal @string_key_data.syntax_value("value1"), "111"
    assert_equal @string_key_data.syntax_value("arr.value2"), "222"
  end

  def test_array_key
    assert_equal @array_data.syntax_value("list.0.arr1"), "111"
    assert_equal @array_data.syntax_value("list.0.arr2"), "222"

    assert_equal @array_data.syntax_value("list.1.arr3"), "333"
    assert_equal @array_data.syntax_value("list.0.arr3"), nil
  end

  def test_array_string_key
    assert_equal @array_string_key_data.syntax_value("list.0.arr1"), "111"
    assert_equal @array_string_key_data.syntax_value("list.0.arr2"), "222"
  end

end