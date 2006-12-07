require File.dirname(__FILE__) + '/../test_helper'

class SpecialTest < Test::Unit::TestCase
  fixtures :specials

  # Replace this with your real tests.
  def test_invalid_with_empty_attributes
    special = Special.new
    assert !special.valid?
    assert special.errors.invalid?(:day)
    assert special.errors.invalid?(:lunch)
    assert special.errors.invalid?(:dinner)
  end
  
end
