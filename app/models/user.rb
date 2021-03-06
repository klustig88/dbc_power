class User < ActiveRecord::Base
  # before_save :default_values
  before_save :stock_votes
  has_many :comments


  def stock_votes
    self.votes_left ||= 3
  end  

  def remove_vote
    self.votes_left -= 1
    self.save
  end  

 def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      # user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
