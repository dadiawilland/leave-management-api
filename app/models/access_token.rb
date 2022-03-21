class AccessToken < ApplicationRecord
  belongs_to :bearer, polymorphic: true
end
