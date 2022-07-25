=begin
email:string
password_digest:string

password:string virtual
password_configuration:string virtual
=end

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be valid email address" }
end
