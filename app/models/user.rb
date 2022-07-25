class User < ApplicationRecord
    has_secure_password

    REGEX_PATTERN = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/

    validates :email, presence: true, format: { with: REGEX_PATTERN, multiline:true,  message: "Invalid Email" }
end
