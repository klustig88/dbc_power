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


end
