require File.dirname(__FILE__) + '/../test_helper'

class JobTest < Test::Unit::TestCase
  fixtures :jobs

	NEW_JOB = {}	# e.g. {:name => 'Test Job', :description => 'Dummy'}
	REQ_ATTR_NAMES 			 = %w( ) # name of fields that must be present, e.g. %(name description)
	DUPLICATE_ATTR_NAMES = %w( ) # name of fields that cannot be a duplicate, e.g. %(name description)

  def setup
    # Retrieve fixtures via their name
    # @first = jobs(:first)
  end

  def test_raw_validation
    job = Job.new
    if REQ_ATTR_NAMES.blank?
      assert job.valid?, "Job should be valid without initialisation parameters"
    else
      # If Job has validation, then use the following:
      assert !job.valid?, "Job should not be valid without initialisation parameters"
      REQ_ATTR_NAMES.each {|attr_name| assert job.errors.invalid?(attr_name.to_sym), "Should be an error message for :#{attr_name}"}
    end
  end

	def test_new
    job = Job.new(NEW_JOB)
    assert job.valid?, "Job should be valid"
   	NEW_JOB.each do |attr_name|
      assert_equal NEW_JOB[attr_name], job.attributes[attr_name], "Job.@#{attr_name.to_s} incorrect"
    end
 	end

	def test_validates_presence_of
   	REQ_ATTR_NAMES.each do |attr_name|
			tmp_job = NEW_JOB.clone
			tmp_job.delete attr_name.to_sym
			job = Job.new(tmp_job)
			assert !job.valid?, "Job should be invalid, as @#{attr_name} is invalid"
    	assert job.errors.invalid?(attr_name.to_sym), "Should be an error message for :#{attr_name}"
    end
 	end

	def test_duplicate
    current_job = Job.find_first
   	DUPLICATE_ATTR_NAMES.each do |attr_name|
   		job = Job.new(NEW_JOB.merge(attr_name.to_sym => current_job[attr_name]))
			assert !job.valid?, "Job should be invalid, as @#{attr_name} is a duplicate"
    	assert job.errors.invalid?(attr_name.to_sym), "Should be an error message for :#{attr_name}"
		end
	end
	
end

