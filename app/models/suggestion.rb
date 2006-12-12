class Suggestion < ActiveRecord::Base
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :on => :create
  validates_presence_of :name
  validates_presence_of :name
end
