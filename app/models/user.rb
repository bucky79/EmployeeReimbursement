class User < ApplicationRecord
    belongs_to :employee
    has_many :bills, dependent: :destroy
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true
    
    validates :name, length: { minimum: 2, maximum: 50 }
    validates :password, presence: true
    
    validates :email, uniqueness: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    
    validates :role_type, inclusion: { in: %w[admin employee] }
end
