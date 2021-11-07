# frozen_string_literal: true

# Employee Model
class Employee < ApplicationRecord
  # Callbacks
  before_save { email.downcase! }

  # Constants
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # Validations
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }
  validates :name, presence: true,  uniqueness: true

  # Associations
  has_many :assignments
  has_many :roles, through: :assignments

  # Public Instance Methods
  def role?(role)
    roles.any? { |r| r.name.underscore.to_sym == role }
  end
end
