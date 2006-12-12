require File.dirname(__FILE__) + '/../test_helper'

class SuggestionTest < Test::Unit::TestCase
  fixtures :suggestions

  # Replace this with your real tests.
  def test_invalid_with_empty_attributes
    suggestion = Suggestion.new
    assert !suggestion.valid?
    assert suggestion.errors.invalid?(:name)
    assert suggestion.errors.invalid?(:email)
  end
end
