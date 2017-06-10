class Board < ActiveRecord::Base
  # Remember to create a migration!
  has_many :jobs
  has_many :users
  belongs_to :category
  # belongs to group
end
