class Job < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :board
  belongs_to :jobposting, class_name: 'User'
end
