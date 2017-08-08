class User < ApplicationRecord
    has_secure_password validation: false
end

    # validates :email, presence: true
    # validates :name, length: {minimum:2}
    # validates :name, length: {maximum:5}
    # validates :email, uniqueness: true
    # has_many :orders

