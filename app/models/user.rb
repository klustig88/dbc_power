class User < ActiveRecord::Base
  before_save :default_values
  before_save :stock_votes

  validates :email, uniqueness: true, format: /.+@.+\..+/
  validates :password_digest, length: { minimum: 6 }
  validates :username, uniqueness:true, presence:true

  has_many :comments
  has_secure_password

  def default_values
    self.current_score ||= 0
  end

  def stock_votes
    self.votes_left ||= 3
  end  

 def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
