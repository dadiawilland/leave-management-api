class User < ApplicationRecord
  has_many :access_tokens, as: :bearer

  has_secure_password
  validates_presence_of :first_name, :last_name, :email, :contact
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP

  ROLES = {
		regular: 'regular',
		admin: 'admin',
		manager: 'manager'
	}.freeze

  def role
		return ROLES[:manager] if role_id == 2
		return ROLES[:admin] if role_id == 1
		ROLES[:regular]
  end

  def generate_token!
	access_token.create(token: SecureRandom.urlsafe_base64) 
  end
end
