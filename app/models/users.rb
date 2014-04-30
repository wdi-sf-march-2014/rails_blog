class Users < ActiveRecord::Base
	has_secure_password

	before_save { |user| user.email = email.downcase }
	before_save :create_remember_token

	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  has_many :posts
	has_many :comments

  private
  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end

end