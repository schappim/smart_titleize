require "test_helper"
require './lib/smart_titleize/version'

class SmartTitleizeTest < Minitest::Test 
  def test_that_it_has_a_version_number
     refute_nil ::SmartTitleize::VERSION
  end

  def test_titleizing_does_not_downcase_acronyms
    str = 'LEDucation 2020 Call for Speakers'
    assert_equal str, str.smart_titleize
  end

  def test_titleizing_will_still_capitalize_exclusions_if_they_are_the_first_word
    str = 'for you, some candy'
    assert_equal 'For You, Some Candy', str.smart_titleize
  end

  def test_multiple_acronyms_will_be_preserved_in_a_word
    str = "hello, LED's and NASA'"
    assert_equal "Hello, LED's and NASA'", str.smart_titleize
  end

  def test_exclusion_will_be_caplitalized_if_last_word_of_title
    str = "what did you do it for?"
    assert_equal "What Did You Do It For?", str.smart_titleize
  end



end
