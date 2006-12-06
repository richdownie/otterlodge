require File.dirname(__FILE__) + '/../test_helper'
require 'jobs_controller'

# Re-raise errors caught by the controller.
class JobsController; def rescue_action(e) raise e end; end

class JobsControllerTest < Test::Unit::TestCase
  fixtures :jobs

	NEW_JOB = {}	# e.g. {:name => 'Test Job', :description => 'Dummy'}
	REDIRECT_TO_MAIN = {:action => 'list'} # put hash or string redirection that you normally expect

	def setup
		@controller = JobsController.new
		@request    = ActionController::TestRequest.new
		@response   = ActionController::TestResponse.new
		# Retrieve fixtures via their name
		# @first = jobs(:first)
		@first = Job.find_first
	end

  def test_component
    get :component
    assert_response :success
    assert_template 'jobs/component'
    jobs = check_attrs(%w(jobs))
    assert_equal Job.find(:all).length, jobs.length, "Incorrect number of jobs shown"
  end

  def test_component_update
    get :component_update
    assert_response :redirect
    assert_redirected_to REDIRECT_TO_MAIN
  end

  def test_component_update_xhr
    xhr :get, :component_update
    assert_response :success
    assert_template 'jobs/component'
    jobs = check_attrs(%w(jobs))
    assert_equal Job.find(:all).length, jobs.length, "Incorrect number of jobs shown"
  end

  def test_create
  	job_count = Job.find(:all).length
    post :create, {:job => NEW_JOB}
    job, successful = check_attrs(%w(job successful))
    assert successful, "Should be successful"
    assert_response :redirect
    assert_redirected_to REDIRECT_TO_MAIN
    assert_equal job_count + 1, Job.find(:all).length, "Expected an additional Job"
  end

  def test_create_xhr
  	job_count = Job.find(:all).length
    xhr :post, :create, {:job => NEW_JOB}
    job, successful = check_attrs(%w(job successful))
    assert successful, "Should be successful"
    assert_response :success
    assert_template 'create.rjs'
    assert_equal job_count + 1, Job.find(:all).length, "Expected an additional Job"
  end

  def test_update
  	job_count = Job.find(:all).length
    post :update, {:id => @first.id, :job => @first.attributes.merge(NEW_JOB)}
    job, successful = check_attrs(%w(job successful))
    assert successful, "Should be successful"
    job.reload
   	NEW_JOB.each do |attr_name|
      assert_equal NEW_JOB[attr_name], job.attributes[attr_name], "@job.#{attr_name.to_s} incorrect"
    end
    assert_equal job_count, Job.find(:all).length, "Number of Jobs should be the same"
    assert_response :redirect
    assert_redirected_to REDIRECT_TO_MAIN
  end

  def test_update_xhr
  	job_count = Job.find(:all).length
    xhr :post, :update, {:id => @first.id, :job => @first.attributes.merge(NEW_JOB)}
    job, successful = check_attrs(%w(job successful))
    assert successful, "Should be successful"
    job.reload
   	NEW_JOB.each do |attr_name|
      assert_equal NEW_JOB[attr_name], job.attributes[attr_name], "@job.#{attr_name.to_s} incorrect"
    end
    assert_equal job_count, Job.find(:all).length, "Number of Jobs should be the same"
    assert_response :success
    assert_template 'update.rjs'
  end

  def test_destroy
  	job_count = Job.find(:all).length
    post :destroy, {:id => @first.id}
    assert_response :redirect
    assert_equal job_count - 1, Job.find(:all).length, "Number of Jobs should be one less"
    assert_redirected_to REDIRECT_TO_MAIN
  end

  def test_destroy_xhr
  	job_count = Job.find(:all).length
    xhr :post, :destroy, {:id => @first.id}
    assert_response :success
    assert_equal job_count - 1, Job.find(:all).length, "Number of Jobs should be one less"
    assert_template 'destroy.rjs'
  end

protected
	# Could be put in a Helper library and included at top of test class
  def check_attrs(attr_list)
    attrs = []
    attr_list.each do |attr_sym|
      attr = assigns(attr_sym.to_sym)
      assert_not_nil attr,       "Attribute @#{attr_sym} should not be nil"
      assert !attr.new_record?,  "Should have saved the @#{attr_sym} obj" if attr.class == ActiveRecord
      attrs << attr
    end
    attrs.length > 1 ? attrs : attrs[0]
  end
end
