require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  has_many :subscriptions
  has_many :boards, through: :subscriptions
  has_many :jobpostings, class_name: 'Job',  foreign_key: "jobposting_id"
  has_many :hostings, class_name: 'Board', foreign_key: "hosting_id"
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
  def self.authenticate(password_hash, password)
    password_hash == password
  end

end
#  subscription
