class Board < ActiveRecord::Base
  # Remember to create a migration!
  has_many :jobs
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, source: :user
  belongs_to :category
  belongs_to :hosting, class_name: 'User'

  def subscribed?(user_id)
    user = User.find(user_id)
    self.subscribers.include?(user)
  end
  def add_subscriber(user_id)
    self.subscribers << User.find(user_id)
  end
  def remove_subscriber(user_id)
    self.subscribers.delete(User.find(user_id))
  end
end
