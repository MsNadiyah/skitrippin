class User < ActiveRecord::Base

  # Facilitates the Active Record "has_secure_password" functionality
  include ActiveModel::SecurePassword
  has_secure_password

  ### VALIDATIONS ###

  validates :name, presence: true 
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :zip, presence: true, format: { with: /^\d{5}(?:[-\s]\d{4})?$/i, multiline: true }, length: { is: 5 }
  validates :travel, presence: true
  validates :decision_driver, presence: true
  


end
