class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  def slug
    User.find(id).username.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
    User.find_by(slug)
    binding.pry
  end
end
