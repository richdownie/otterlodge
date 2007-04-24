require File.dirname(__FILE__) + '/../test_helper'
require 'rewards_controller'

# Re-raise errors caught by the controller.
class RewardsController; def rescue_action(e) raise e end; end

class RewardsControllerTest < Test::Unit::TestCase
  def setup
    @controller = RewardsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
