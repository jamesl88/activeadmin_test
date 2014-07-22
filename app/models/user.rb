class User < ActiveRecord::Base

has_many :logs

  def self.authenticate(password)
    User.find_by_password(password)
  end
end