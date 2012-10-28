class User < ActiveRecord::Base
  attr_accessible :email, :name, :mobile

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@stanford\.edu+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
 
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
   
end
