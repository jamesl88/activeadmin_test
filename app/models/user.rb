class User < ActiveRecord::Base

has_many :logs

  def self.authenticate(password)
    User.find_by_password(password)#match_password(password)
  end

  # def logged_in?
  #   !!session[:user_id]
  # end
end


