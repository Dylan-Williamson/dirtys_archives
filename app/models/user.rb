class User < ActiveRecord::Base

    has_secure_password
    validates :username, uniqueness: true, presence: true
    validates :password, length: {in: 8..20}, unless: ->(u){ u.password.blank? }

    has_many :beats
    
end