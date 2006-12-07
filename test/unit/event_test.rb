require File.dirname(__FILE__) + '/../test_helper'

class EventTest < Test::Unit::TestCase
  fixtures :events

  # Replace this with your real tests.
  def test_invalid_with_empty_attributes
    event = Event.new
    assert !event.valid?
    assert event.errors.invalid?(:name)
    assert event.errors.invalid?(:date)
  end
  
end
