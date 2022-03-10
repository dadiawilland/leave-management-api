class User < ApplicationRecord

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
end
