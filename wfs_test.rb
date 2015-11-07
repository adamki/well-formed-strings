require "minitest/autorun"
require "minitest/pride"
require "./well-formed-strings"

class WfsTest < Minitest::Test
  def test_it_puts_a_string
    string = Wfs.new("String")
    result = "String"
    assert_equal result, string.output
  end

  def test_it_can_validate_simple_string
    string = Wfs.new("()")
    assert_equal "()", string.output
  end

  def test_it_can_validate_parenthesis
    string = Wfs.new("()")
    assert string.paranthesis
  end

  def test_it_knows_diff_between_twosie_and_onesie
    string = Wfs.new("(")
    refute string.paranthesis
  end

  def test_it_can_hanlde_mulitple_pairs
    string = Wfs.new("(example(jibberish))")
    assert string.paranthesis
  end

  def test_it_can_recognize_when_parens_are_in_pairs
    string = Wfs.new("(example)jibberish))")
    assert string.paranthesis
  end
  
end
