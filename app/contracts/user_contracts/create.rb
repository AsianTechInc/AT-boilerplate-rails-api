class UserContracts::Create < ApplicationContract
  attribute :email, String
  attribute :password, String

  validates :email, presence: true
  validates :password, presence: true
end
