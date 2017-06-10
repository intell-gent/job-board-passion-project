class Board < ActiveRecord::Base
  # Remember to create a migration!
  has_many :jobs
  has_many :subscriptions
  has_many :users, through: :subscriptions
  belongs_to :category
  # belongs to group
end
