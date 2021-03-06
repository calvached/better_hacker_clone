require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_many :upvote_comments
  has_many :upvote_posts
  has_many :comments
  has_many :posts

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
