class User < ApplicationRecord

  ROLES = {
		regular: 'regular',
		admin: 'admin',
		manager: 'manager'
	}.freeze

  def status
		return STATUS[:manager] if role_id == 2
		return STATUS[:admin] if role_id == 1
		STATUS[:regular]
	end
end
